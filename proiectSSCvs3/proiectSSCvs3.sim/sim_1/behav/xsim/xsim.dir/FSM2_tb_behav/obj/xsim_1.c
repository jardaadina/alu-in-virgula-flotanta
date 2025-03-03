/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_1887(char*, char *);
extern void execute_1885(char*, char *);
extern void execute_1886(char*, char *);
extern void execute_32(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_62(char*, char *);
extern void execute_39(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_1866(char*, char *);
extern void execute_1867(char*, char *);
extern void execute_1868(char*, char *);
extern void execute_1869(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_305(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_308(char*, char *);
extern void execute_383(char*, char *);
extern void execute_384(char*, char *);
extern void execute_385(char*, char *);
extern void execute_386(char*, char *);
extern void execute_461(char*, char *);
extern void execute_462(char*, char *);
extern void execute_463(char*, char *);
extern void execute_464(char*, char *);
extern void execute_539(char*, char *);
extern void execute_540(char*, char *);
extern void execute_541(char*, char *);
extern void execute_542(char*, char *);
extern void execute_617(char*, char *);
extern void execute_618(char*, char *);
extern void execute_619(char*, char *);
extern void execute_620(char*, char *);
extern void execute_695(char*, char *);
extern void execute_696(char*, char *);
extern void execute_697(char*, char *);
extern void execute_698(char*, char *);
extern void execute_773(char*, char *);
extern void execute_774(char*, char *);
extern void execute_775(char*, char *);
extern void execute_776(char*, char *);
extern void execute_851(char*, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_854(char*, char *);
extern void execute_929(char*, char *);
extern void execute_930(char*, char *);
extern void execute_931(char*, char *);
extern void execute_932(char*, char *);
extern void execute_1007(char*, char *);
extern void execute_1008(char*, char *);
extern void execute_1009(char*, char *);
extern void execute_1010(char*, char *);
extern void execute_1085(char*, char *);
extern void execute_1086(char*, char *);
extern void execute_1087(char*, char *);
extern void execute_1088(char*, char *);
extern void execute_1163(char*, char *);
extern void execute_1164(char*, char *);
extern void execute_1165(char*, char *);
extern void execute_1166(char*, char *);
extern void execute_1241(char*, char *);
extern void execute_1242(char*, char *);
extern void execute_1243(char*, char *);
extern void execute_1244(char*, char *);
extern void execute_1319(char*, char *);
extern void execute_1320(char*, char *);
extern void execute_1321(char*, char *);
extern void execute_1322(char*, char *);
extern void execute_1397(char*, char *);
extern void execute_1398(char*, char *);
extern void execute_1399(char*, char *);
extern void execute_1400(char*, char *);
extern void execute_1475(char*, char *);
extern void execute_1476(char*, char *);
extern void execute_1477(char*, char *);
extern void execute_1478(char*, char *);
extern void execute_1553(char*, char *);
extern void execute_1554(char*, char *);
extern void execute_1555(char*, char *);
extern void execute_1556(char*, char *);
extern void execute_1631(char*, char *);
extern void execute_1632(char*, char *);
extern void execute_1633(char*, char *);
extern void execute_1634(char*, char *);
extern void execute_1709(char*, char *);
extern void execute_1710(char*, char *);
extern void execute_1711(char*, char *);
extern void execute_1712(char*, char *);
extern void execute_1787(char*, char *);
extern void execute_1788(char*, char *);
extern void execute_1789(char*, char *);
extern void execute_1790(char*, char *);
extern void execute_1865(char*, char *);
extern void execute_148(char*, char *);
extern void execute_1871(char*, char *);
extern void execute_1880(char*, char *);
extern void execute_1881(char*, char *);
extern void execute_1882(char*, char *);
extern void execute_1884(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[119] = {(funcp)execute_1887, (funcp)execute_1885, (funcp)execute_1886, (funcp)execute_32, (funcp)execute_36, (funcp)execute_37, (funcp)execute_62, (funcp)execute_39, (funcp)execute_64, (funcp)execute_65, (funcp)execute_1866, (funcp)execute_1867, (funcp)execute_1868, (funcp)execute_1869, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_227, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_305, (funcp)execute_306, (funcp)execute_307, (funcp)execute_308, (funcp)execute_383, (funcp)execute_384, (funcp)execute_385, (funcp)execute_386, (funcp)execute_461, (funcp)execute_462, (funcp)execute_463, (funcp)execute_464, (funcp)execute_539, (funcp)execute_540, (funcp)execute_541, (funcp)execute_542, (funcp)execute_617, (funcp)execute_618, (funcp)execute_619, (funcp)execute_620, (funcp)execute_695, (funcp)execute_696, (funcp)execute_697, (funcp)execute_698, (funcp)execute_773, (funcp)execute_774, (funcp)execute_775, (funcp)execute_776, (funcp)execute_851, (funcp)execute_852, (funcp)execute_853, (funcp)execute_854, (funcp)execute_929, (funcp)execute_930, (funcp)execute_931, (funcp)execute_932, (funcp)execute_1007, (funcp)execute_1008, (funcp)execute_1009, (funcp)execute_1010, (funcp)execute_1085, (funcp)execute_1086, (funcp)execute_1087, (funcp)execute_1088, (funcp)execute_1163, (funcp)execute_1164, (funcp)execute_1165, (funcp)execute_1166, (funcp)execute_1241, (funcp)execute_1242, (funcp)execute_1243, (funcp)execute_1244, (funcp)execute_1319, (funcp)execute_1320, (funcp)execute_1321, (funcp)execute_1322, (funcp)execute_1397, (funcp)execute_1398, (funcp)execute_1399, (funcp)execute_1400, (funcp)execute_1475, (funcp)execute_1476, (funcp)execute_1477, (funcp)execute_1478, (funcp)execute_1553, (funcp)execute_1554, (funcp)execute_1555, (funcp)execute_1556, (funcp)execute_1631, (funcp)execute_1632, (funcp)execute_1633, (funcp)execute_1634, (funcp)execute_1709, (funcp)execute_1710, (funcp)execute_1711, (funcp)execute_1712, (funcp)execute_1787, (funcp)execute_1788, (funcp)execute_1789, (funcp)execute_1790, (funcp)execute_1865, (funcp)execute_148, (funcp)execute_1871, (funcp)execute_1880, (funcp)execute_1881, (funcp)execute_1882, (funcp)execute_1884, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 119;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/FSM2_tb_behav/xsim.reloc",  (void **)funcTab, 119);
	iki_vhdl_file_variable_register(dp + 95120);
	iki_vhdl_file_variable_register(dp + 95176);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/FSM2_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/FSM2_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/FSM2_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/FSM2_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/FSM2_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
