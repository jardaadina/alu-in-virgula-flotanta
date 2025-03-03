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
extern void execute_1896(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_1891(char*, char *);
extern void execute_1892(char*, char *);
extern void execute_1893(char*, char *);
extern void execute_1894(char*, char *);
extern void execute_1895(char*, char *);
extern void execute_38(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_68(char*, char *);
extern void execute_45(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_1872(char*, char *);
extern void execute_1873(char*, char *);
extern void execute_1874(char*, char *);
extern void execute_1875(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_314(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_545(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_623(char*, char *);
extern void execute_624(char*, char *);
extern void execute_625(char*, char *);
extern void execute_626(char*, char *);
extern void execute_701(char*, char *);
extern void execute_702(char*, char *);
extern void execute_703(char*, char *);
extern void execute_704(char*, char *);
extern void execute_779(char*, char *);
extern void execute_780(char*, char *);
extern void execute_781(char*, char *);
extern void execute_782(char*, char *);
extern void execute_857(char*, char *);
extern void execute_858(char*, char *);
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_935(char*, char *);
extern void execute_936(char*, char *);
extern void execute_937(char*, char *);
extern void execute_938(char*, char *);
extern void execute_1013(char*, char *);
extern void execute_1014(char*, char *);
extern void execute_1015(char*, char *);
extern void execute_1016(char*, char *);
extern void execute_1091(char*, char *);
extern void execute_1092(char*, char *);
extern void execute_1093(char*, char *);
extern void execute_1094(char*, char *);
extern void execute_1169(char*, char *);
extern void execute_1170(char*, char *);
extern void execute_1171(char*, char *);
extern void execute_1172(char*, char *);
extern void execute_1247(char*, char *);
extern void execute_1248(char*, char *);
extern void execute_1249(char*, char *);
extern void execute_1250(char*, char *);
extern void execute_1325(char*, char *);
extern void execute_1326(char*, char *);
extern void execute_1327(char*, char *);
extern void execute_1328(char*, char *);
extern void execute_1403(char*, char *);
extern void execute_1404(char*, char *);
extern void execute_1405(char*, char *);
extern void execute_1406(char*, char *);
extern void execute_1481(char*, char *);
extern void execute_1482(char*, char *);
extern void execute_1483(char*, char *);
extern void execute_1484(char*, char *);
extern void execute_1559(char*, char *);
extern void execute_1560(char*, char *);
extern void execute_1561(char*, char *);
extern void execute_1562(char*, char *);
extern void execute_1637(char*, char *);
extern void execute_1638(char*, char *);
extern void execute_1639(char*, char *);
extern void execute_1640(char*, char *);
extern void execute_1715(char*, char *);
extern void execute_1716(char*, char *);
extern void execute_1717(char*, char *);
extern void execute_1718(char*, char *);
extern void execute_1793(char*, char *);
extern void execute_1794(char*, char *);
extern void execute_1795(char*, char *);
extern void execute_1796(char*, char *);
extern void execute_1871(char*, char *);
extern void execute_154(char*, char *);
extern void execute_1877(char*, char *);
extern void execute_1886(char*, char *);
extern void execute_1887(char*, char *);
extern void execute_1888(char*, char *);
extern void execute_1890(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[128] = {(funcp)execute_1896, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_1891, (funcp)execute_1892, (funcp)execute_1893, (funcp)execute_1894, (funcp)execute_1895, (funcp)execute_38, (funcp)execute_42, (funcp)execute_43, (funcp)execute_68, (funcp)execute_45, (funcp)execute_70, (funcp)execute_71, (funcp)execute_1872, (funcp)execute_1873, (funcp)execute_1874, (funcp)execute_1875, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_311, (funcp)execute_312, (funcp)execute_313, (funcp)execute_314, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_470, (funcp)execute_545, (funcp)execute_546, (funcp)execute_547, (funcp)execute_548, (funcp)execute_623, (funcp)execute_624, (funcp)execute_625, (funcp)execute_626, (funcp)execute_701, (funcp)execute_702, (funcp)execute_703, (funcp)execute_704, (funcp)execute_779, (funcp)execute_780, (funcp)execute_781, (funcp)execute_782, (funcp)execute_857, (funcp)execute_858, (funcp)execute_859, (funcp)execute_860, (funcp)execute_935, (funcp)execute_936, (funcp)execute_937, (funcp)execute_938, (funcp)execute_1013, (funcp)execute_1014, (funcp)execute_1015, (funcp)execute_1016, (funcp)execute_1091, (funcp)execute_1092, (funcp)execute_1093, (funcp)execute_1094, (funcp)execute_1169, (funcp)execute_1170, (funcp)execute_1171, (funcp)execute_1172, (funcp)execute_1247, (funcp)execute_1248, (funcp)execute_1249, (funcp)execute_1250, (funcp)execute_1325, (funcp)execute_1326, (funcp)execute_1327, (funcp)execute_1328, (funcp)execute_1403, (funcp)execute_1404, (funcp)execute_1405, (funcp)execute_1406, (funcp)execute_1481, (funcp)execute_1482, (funcp)execute_1483, (funcp)execute_1484, (funcp)execute_1559, (funcp)execute_1560, (funcp)execute_1561, (funcp)execute_1562, (funcp)execute_1637, (funcp)execute_1638, (funcp)execute_1639, (funcp)execute_1640, (funcp)execute_1715, (funcp)execute_1716, (funcp)execute_1717, (funcp)execute_1718, (funcp)execute_1793, (funcp)execute_1794, (funcp)execute_1795, (funcp)execute_1796, (funcp)execute_1871, (funcp)execute_154, (funcp)execute_1877, (funcp)execute_1886, (funcp)execute_1887, (funcp)execute_1888, (funcp)execute_1890, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_3};
const int NumRelocateId= 128;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/floatingPointMultiplier_tb_behav/xsim.reloc",  (void **)funcTab, 128);
	iki_vhdl_file_variable_register(dp + 93616);
	iki_vhdl_file_variable_register(dp + 93672);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/floatingPointMultiplier_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/floatingPointMultiplier_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/floatingPointMultiplier_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/floatingPointMultiplier_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/floatingPointMultiplier_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
