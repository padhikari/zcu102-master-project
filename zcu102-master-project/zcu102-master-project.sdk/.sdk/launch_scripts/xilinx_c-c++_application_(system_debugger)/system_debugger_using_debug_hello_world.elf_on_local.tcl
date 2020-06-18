connect -url tcp:127.0.0.1:3121
source /tools/Xilinx/SDK/2019.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A47339"} -index 1
loadhw -hw /home/pabitra/workspace/zcu102-project/zcu102-master-project/zcu102-master-project.sdk/Base_Zynq_MPSoC_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A47339"} -index 1
source /home/pabitra/workspace/zcu102-project/zcu102-master-project/zcu102-master-project.sdk/Base_Zynq_MPSoC_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A47339"} -index 1
rst -processor
dow /home/pabitra/workspace/zcu102-project/zcu102-master-project/zcu102-master-project.sdk/hello_world/Debug/hello_world.elf
configparams force-mem-access 0
bpadd -addr &main
