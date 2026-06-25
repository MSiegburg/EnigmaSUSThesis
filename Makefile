# You may override U280 to a directory of your liking. For instance for parallel builds, you can `make U280/overlay_hw.xclbin BIN_DIR=U280_test` 

TMPDIR := /tmp/vivado_$(USER)

$(TMPDIR):
	mkdir -p $(TMPDIR)
U280/%: PART := xcu280-fsvh2892-2L-e
U280/%: PLATFORM := xilinx_u280_gen3x16_xdma_1_202211_1

sus_codegen.sv: sus-xrt/axi_memory.sus sus-xrt/xrt.sus EnigmaMachine.sus
	sus_compiler sus-xrt/axi_memory.sus sus-xrt/xrt.sus EnigmaMachine.sus -o sus_codegen.sv --top all_read_benchmarks_axi4

U280/EnigmaMachine.xo: pack_kernel.tcl sus_codegen.sv
	mkdir -p U280
	rm -f U280/burst_reader_$*.xo
	rm -rf U280/pack_prj$*
	mkdir U280/pack_prj$*
	cd U280/pack_prj$*;\
	vivado -mode batch -source ../../pack_kernel.tcl -tclargs $(PART) $* ../burst_reader_$*.xo

U280/overlay_hw_emu.xclbin: u280_connectivity.cfg U280/EnigmaMachine.xo
	rm -f U280/overlay_hw_emu.xclbin
	rm -rf U280/overlay_hw_emu_prj
	mkdir U280/overlay_hw_emu_prj
	cd U280/overlay_hw_emu_prj &&\
	v++ -l --platform $(PLATFORM) -t hw_emu -s -g --config ../../u280_connectivity.cfg -o ../overlay_hw_emu.xclbin ../EnigmaMachine.xo

U280/overlay_hw.xclbin: u280_connectivity.cfg U280/EnigmaMachine.xo
	rm -f U280/overlay_hw.xclbin
	rm -rf U280/overlay_hw_prj
	mkdir U280/overlay_hw_prj
	cd U280/overlay_hw_prj &&\
	v++ -l --platform $(PLATFORM) -t hw -s -g --config ../../u280_connectivity.cfg -o ../overlay_hw.xclbin ../EnigmaMachine.xo
	xclbinutil --info -i U280/overlay_hw.xclbin

main.x: main.cpp
	g++ -g -O3 -std=c++17 -I$(XILINX_XRT)/include -L$(XILINX_XRT)/lib -lxrt_coreutil -pthread main.cpp -o main.x

.PHONY: _emu
_emu: main.x | $(TMPDIR)
# It appears that the emulation creates .runs in the directory that holds main.x, so we copy it over to /tmp such that the .runs can be safely dropped there. 
# While the temporary directory doesn't seem to improve performance, it does appear that it's less "sticky" than the $PC2HOME filesystem. IE, it's less likely to get stuck undeletable due to xsim and xsimk not dieing
	cp main.x $(TMPDIR)
	cp extra_waves.tcl U280/
	cp $(XRT_INI) U280/xrt.ini
	cd U280 &&\
	emconfigutil --platform $(PLATFORM) &&\
	XCL_EMULATION_MODE=hw_emu $(TMPDIR)/main.x u

_run: main.x
	cd U280 && ../main.x $(ARGS)

.PHONY: U280/emulate U280/emulate_batch U280/run
U280/emulate: XRT_INI := xrt_gui.ini
U280/emulate: _emu
U280/emulate_batch: XRT_INI := xrt_batch.ini
U280/emulate_batch: _emu
U280/run: ARGS := a
U280/run: _run

.PHONY: clean cleantmp
clean: cleantmp
	rm -rf U280
	rm -f sus_codegen.sv
	rm -f main.x
	
cleantmp:
	rm -rf $(TMPDIR)

U280/enable_host_mem: 
	sudo /opt/software/FPGA/scripts/u280/host_memory/enable_hostmem_single_fpga.sh 0000\:01\:00.1
	sudo /opt/software/FPGA/scripts/u280/host_memory/enable_hostmem_single_fpga.sh 0000\:81\:00.1
	sudo /opt/software/FPGA/scripts/u280/host_memory/enable_hostmem_single_fpga.sh 0000\:a1\:00.1
	
U280/reset: 
	xbutil reset -d 0000:a1:00.1 --force
