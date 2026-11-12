set PART [lindex $argv 0]
set XO_FILE [lindex $argv 1]

# set AXI_WIDTH 32
# set PART xcvc1902-vsvd1760-2MP-e-S


set KERNEL_NAME enimga_machine

create_project ${KERNEL_NAME} ./${KERNEL_NAME} -part $PART

add_files -norecurse \
{
    ../../gencodeMachineRuntime.sv \
}

# ???
set_property top enigma_top [current_fileset]


update_compile_order -fileset sources_1


#                                             ???                ???           ???               ??? 
ipx::package_project -root_dir ./${KERNEL_NAME}_ip -vendor pc2-sus-experiments -library sus-xrt -taxonomy /UserIP -import_files

set_property ipi_drc {ignore_freq_hz false} [ipx::current_core]
set_property sdx_kernel true [ipx::current_core]
set_property sdx_kernel_type rtl [ipx::current_core]
set_property vitis_drc {ctrl_protocol ap_ctrl_hs} [ipx::current_core]
set_property ipi_drc {ignore_freq_hz true} [ipx::current_core]


set CTRL_ADDR_BLOCK [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps s_axi_control -of_objects [ipx::current_core]]]

# Address offset in bytes???
ipx::add_register CTRL $CTRL_ADDR_BLOCK
set_property description    {Control Signals} [ipx::get_registers CTRL -of_objects $CTRL_ADDR_BLOCK]
set_property address_offset {0x00}            [ipx::get_registers CTRL -of_objects $CTRL_ADDR_BLOCK]
set_property size           {32}              [ipx::get_registers CTRL -of_objects $CTRL_ADDR_BLOCK]

proc add_reg {CTRL_ADDR_BLOCK reg_name size offset} {
    ipx::add_register $reg_name $CTRL_ADDR_BLOCK
    puts $size
    puts $offset
    set found_reg [ipx::get_registers $reg_name -of_objects $CTRL_ADDR_BLOCK]
    puts $found_reg
    set_property description    {A data register}   $found_reg
    set_property address_offset $offset             $found_reg
    set_property size           $size               $found_reg
}

add_reg $CTRL_ADDR_BLOCK MESSAGE_ADDR 64 0x010
add_reg $CTRL_ADDR_BLOCK ENCODE_ADDR 64 0x018
add_reg $CTRL_ADDR_BLOCK NUMBER_TO_TRANSFER 32 0x020
add_reg $CTRL_ADDR_BLOCK ROTOR_ONE 32 0x024
add_reg $CTRL_ADDR_BLOCK ROTOR_TWO 32 0x028
add_reg $CTRL_ADDR_BLOCK ROTOR_THREE 32 0x02c
add_reg $CTRL_ADDR_BLOCK ROTOR_POS_ONE 32 0x030
add_reg $CTRL_ADDR_BLOCK ROTOR_POS_TWO 32 0x034
add_reg $CTRL_ADDR_BLOCK ROTOR_POS_THREE 32 0x038
add_reg $CTRL_ADDR_BLOCK RING_POS_ONE 32 0x03c
add_reg $CTRL_ADDR_BLOCK RING_POS_TWO 32 0x040
add_reg $CTRL_ADDR_BLOCK RING_POS_THREE 32 0x044

for {set i 0} {$i < 26} {incr i} {
    add_reg $CTRL_ADDR_BLOCK plug_${i} 32 [format "0x0%x" [expr 0x048 + $i * 4]]
}


ipx::add_register_parameter ASSOCIATED_BUSIF [ipx::get_registers MESSAGE_ADDR -of_objects $CTRL_ADDR_BLOCK]
set_property value          {m_axi}          [ipx::get_register_parameters ASSOCIATED_BUSIF -of_objects [ipx::get_registers MESSAGE_ADDR -of_objects $CTRL_ADDR_BLOCK]]

ipx::add_register_parameter ASSOCIATED_BUSIF [ipx::get_registers ENCODE_ADDR -of_objects $CTRL_ADDR_BLOCK]
set_property value          {m_axi}          [ipx::get_register_parameters ASSOCIATED_BUSIF -of_objects [ipx::get_registers ENCODE_ADDR -of_objects $CTRL_ADDR_BLOCK]]



set M_AXI_BUSIF [ipx::get_bus_interfaces m_axi -of_objects [ipx::current_core]]
ipx::add_bus_parameter DATA_WIDTH $M_AXI_BUSIF
set_property value           32 [ipx::get_bus_parameters DATA_WIDTH -of_objects $M_AXI_BUSIF]

set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::check_integrity -kernel -xrt [ipx::current_core]
ipx::save_core [ipx::current_core]

package_xo -xo_path $XO_FILE -kernel_name ${KERNEL_NAME} -ctrl_protocol ap_ctrl_hs -ip_directory ./${KERNEL_NAME}_ip
 # -output_kernel_xml ../../${KERNEL_NAME}.xml
