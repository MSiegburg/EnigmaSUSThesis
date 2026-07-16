#include "experimental/xrt_ip.h"
#include "experimental/xrt_uuid.h"
#include "experimental/xrt_kernel.h"
#include "experimental/xrt_xclbin.h"
#include "experimental/xrt_bo.h"
#include "experimental/xrt_error.h"
#include "ert.h"

#include <chrono>
#include <cstdint>
#include <memory>
#include <string>
#include <iomanip>
#include <vector>
#include <iostream>
#include <string>
#include <sstream>
#include <cstdint>
#include <random>
#include <fstream>

#include <unistd.h>

std::string device_name;
xrt::device device;
std::unique_ptr<xrt::uuid>   xclbin_handle_ptr;

double clock_freq_MHz;

int main(int argc, const char** argv) {
    char mode;
    if(argc <= 1) {
        mode = 'a';
    } else {
        mode = *(argv[1]);
    }
    const char* xclbin_file;
    switch(mode){
    case '0':
        device = xrt::device("0000:01:00.1");
        std::cout << "Got Device 0000:01:00.1" << std::endl;
        xclbin_file = "overlay_hw.xclbin";
        break;
    case '8':
        device = xrt::device("0000:81:00.1");
        std::cout << "Got Device 0000:81:00.1" << std::endl;
        xclbin_file = "overlay_hw.xclbin";
        break;
    case 'a':
        device = xrt::device("0000:a1:00.1");
        std::cout << "Got Device 0000:a1:00.1" << std::endl;
        xclbin_file = "overlay_hw.xclbin";
        break;
    case 'e':
        device = xrt::device("0000:e1:00.1");
        std::cout << "Got Device 0000:e1:00.1" << std::endl;
        xclbin_file = "overlay_hw.xclbin";
        break;
    case 'u':
        std::cout << "Getting emulation" << std::endl;
        device = xrt::device(0);
        std::cout << "Got Device in emu" << std::endl;
        xclbin_file = "overlay_hw_emu.xclbin";
        break;
    default:
        std::cout << "UNKNOWN OPTION: " << argv[1] << std::endl;
        return 1;
    }
    if(argc >= 3) {
        xclbin_file = argv[2];
    }
    device_name = device.get_info<xrt::info::device::name>();
    std::cout << "device name:     " << device_name << std::endl;
    std::cout << "device bdf:      " << device.get_info<xrt::info::device::bdf>() << std::endl;

    if(device_name == "xilinx_u280_gen3x16_xdma_base_1") {
        device_name = std::string("U280");
    } else if(device_name == "xilinx_vck5000_gen4x8_qdma_base_2") {
        device_name = std::string("VCK5000");
        //BUFFER_CAPACITY = 1000000000 / sizeof(uint32_t);
    }

    // Workaround for dumb missing default constructor
    xrt::xclbin xclbin = xrt::xclbin(xclbin_file);
    xclbin_handle_ptr = std::make_unique<xrt::uuid>(device.load_xclbin(xclbin));
    //std::cout << "clocks: " << xclbin.get_axlf_section<const char*>(axlf_section_kind::CLOCK_FREQ_TOPOLOGY) << std::endl;

    const clock_freq_topology* clocks = xclbin.get_axlf_section<const clock_freq_topology*>(axlf_section_kind::CLOCK_FREQ_TOPOLOGY);
    for(int i = 0; i < clocks->m_count; i++) {
        auto cf = &clocks->m_clock_freq[i];
        std::cout << cf->m_name << "(" << cf->m_type << "): " << cf->m_freq_Mhz << "MHz" << std::endl;
        if(cf->m_type == CLOCK_TYPE::CT_DATA) {
            clock_freq_MHz = cf->m_freq_Mhz;
        }
    }

    std::cout << "Got XCLBIN" << std::endl;

    size_t BUFFER_CAPACITY = 10000;

    xrt::kernel k = xrt::kernel(device, *xclbin_handle_ptr, "enimga_machine:{enimga_machine_ddr}");
    xrt::bo message_buffer = xrt::bo(device, sizeof(uint32_t) * BUFFER_CAPACITY, k.group_id(0));
    xrt::bo encoded_buffer = xrt::bo(device, sizeof(uint32_t) * BUFFER_CAPACITY, k.group_id(1));

    //std::string message = std::string("HELLOTHISISSUPERSECRET");
    std::string message = std::string("MFNCZXEZHZUHPGCSGSIJQM");

    uint32_t* char_indices = new uint32_t[BUFFER_CAPACITY];
    for(size_t i = 0; i < message.size(); i++) {
        char_indices[i] = message[i] - 'A';
    }

    message_buffer.write(char_indices, sizeof(uint32_t) * BUFFER_CAPACITY, 0);
    message_buffer.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    xrt::run r = k(message_buffer, encoded_buffer, message.size(),
        0, 1, 2,// rotors
        0, 0, 0,// rotor position
        0, 0, 0,// ring setting
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 
        13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 // plugboard
    );

    r.wait();

    uint32_t* output = new uint32_t[BUFFER_CAPACITY];                   // OFFSET 0 in buffer
    encoded_buffer.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    encoded_buffer.read(output, sizeof(uint32_t) * BUFFER_CAPACITY, 0);
    std::string output_message;
        for(size_t i = 0; i < message.size(); i++) {
        output_message.push_back(static_cast<char>(output[i])  + 'A');
    }
    std::cout<<output_message<<std::endl;
}
