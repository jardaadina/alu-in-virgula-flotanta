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
extern void execute_1811(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_406(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_565(char*, char *);
extern void execute_640(char*, char *);
extern void execute_641(char*, char *);
extern void execute_642(char*, char *);
extern void execute_643(char*, char *);
extern void execute_718(char*, char *);
extern void execute_719(char*, char *);
extern void execute_720(char*, char *);
extern void execute_721(char*, char *);
extern void execute_796(char*, char *);
extern void execute_797(char*, char *);
extern void execute_798(char*, char *);
extern void execute_799(char*, char *);
extern void execute_874(char*, char *);
extern void execute_875(char*, char *);
extern void execute_876(char*, char *);
extern void execute_877(char*, char *);
extern void execute_952(char*, char *);
extern void execute_953(char*, char *);
extern void execute_954(char*, char *);
extern void execute_955(char*, char *);
extern void execute_1030(char*, char *);
extern void execute_1031(char*, char *);
extern void execute_1032(char*, char *);
extern void execute_1033(char*, char *);
extern void execute_1108(char*, char *);
extern void execute_1109(char*, char *);
extern void execute_1110(char*, char *);
extern void execute_1111(char*, char *);
extern void execute_1186(char*, char *);
extern void execute_1187(char*, char *);
extern void execute_1188(char*, char *);
extern void execute_1189(char*, char *);
extern void execute_1264(char*, char *);
extern void execute_1265(char*, char *);
extern void execute_1266(char*, char *);
extern void execute_1267(char*, char *);
extern void execute_1342(char*, char *);
extern void execute_1343(char*, char *);
extern void execute_1344(char*, char *);
extern void execute_1345(char*, char *);
extern void execute_1420(char*, char *);
extern void execute_1421(char*, char *);
extern void execute_1422(char*, char *);
extern void execute_1423(char*, char *);
extern void execute_1498(char*, char *);
extern void execute_1499(char*, char *);
extern void execute_1500(char*, char *);
extern void execute_1501(char*, char *);
extern void execute_1576(char*, char *);
extern void execute_1577(char*, char *);
extern void execute_1578(char*, char *);
extern void execute_1579(char*, char *);
extern void execute_1654(char*, char *);
extern void execute_1655(char*, char *);
extern void execute_1656(char*, char *);
extern void execute_1657(char*, char *);
extern void execute_1732(char*, char *);
extern void execute_1733(char*, char *);
extern void execute_1734(char*, char *);
extern void execute_1735(char*, char *);
extern void execute_1810(char*, char *);
extern void execute_93(char*, char *);
extern void execute_22(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[101] = {(funcp)execute_1811, (funcp)execute_12, (funcp)execute_13, (funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_172, (funcp)execute_173, (funcp)execute_174, (funcp)execute_175, (funcp)execute_250, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_406, (funcp)execute_407, (funcp)execute_408, (funcp)execute_409, (funcp)execute_484, (funcp)execute_485, (funcp)execute_486, (funcp)execute_487, (funcp)execute_562, (funcp)execute_563, (funcp)execute_564, (funcp)execute_565, (funcp)execute_640, (funcp)execute_641, (funcp)execute_642, (funcp)execute_643, (funcp)execute_718, (funcp)execute_719, (funcp)execute_720, (funcp)execute_721, (funcp)execute_796, (funcp)execute_797, (funcp)execute_798, (funcp)execute_799, (funcp)execute_874, (funcp)execute_875, (funcp)execute_876, (funcp)execute_877, (funcp)execute_952, (funcp)execute_953, (funcp)execute_954, (funcp)execute_955, (funcp)execute_1030, (funcp)execute_1031, (funcp)execute_1032, (funcp)execute_1033, (funcp)execute_1108, (funcp)execute_1109, (funcp)execute_1110, (funcp)execute_1111, (funcp)execute_1186, (funcp)execute_1187, (funcp)execute_1188, (funcp)execute_1189, (funcp)execute_1264, (funcp)execute_1265, (funcp)execute_1266, (funcp)execute_1267, (funcp)execute_1342, (funcp)execute_1343, (funcp)execute_1344, (funcp)execute_1345, (funcp)execute_1420, (funcp)execute_1421, (funcp)execute_1422, (funcp)execute_1423, (funcp)execute_1498, (funcp)execute_1499, (funcp)execute_1500, (funcp)execute_1501, (funcp)execute_1576, (funcp)execute_1577, (funcp)execute_1578, (funcp)execute_1579, (funcp)execute_1654, (funcp)execute_1655, (funcp)execute_1656, (funcp)execute_1657, (funcp)execute_1732, (funcp)execute_1733, (funcp)execute_1734, (funcp)execute_1735, (funcp)execute_1810, (funcp)execute_93, (funcp)execute_22, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 101;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/inmultireaMatricelor_tb_behav/xsim.reloc",  (void **)funcTab, 101);
	iki_vhdl_file_variable_register(dp + 86312);
	iki_vhdl_file_variable_register(dp + 86368);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/inmultireaMatricelor_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/inmultireaMatricelor_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/inmultireaMatricelor_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/inmultireaMatricelor_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/inmultireaMatricelor_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
