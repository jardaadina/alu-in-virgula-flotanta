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
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_2095(char*, char *);
extern void execute_2096(char*, char *);
extern void execute_49(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_236(char*, char *);
extern void execute_160(char*, char *);
extern void execute_89(char*, char *);
extern void execute_162(char*, char *);
extern void execute_235(char*, char *);
extern void execute_238(char*, char *);
extern void execute_240(char*, char *);
extern void execute_2093(char*, char *);
extern void execute_2094(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_277(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_2081(char*, char *);
extern void execute_2082(char*, char *);
extern void execute_2083(char*, char *);
extern void execute_2084(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_442(char*, char *);
extern void execute_443(char*, char *);
extern void execute_444(char*, char *);
extern void execute_445(char*, char *);
extern void execute_520(char*, char *);
extern void execute_521(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_598(char*, char *);
extern void execute_599(char*, char *);
extern void execute_600(char*, char *);
extern void execute_601(char*, char *);
extern void execute_676(char*, char *);
extern void execute_677(char*, char *);
extern void execute_678(char*, char *);
extern void execute_679(char*, char *);
extern void execute_754(char*, char *);
extern void execute_755(char*, char *);
extern void execute_756(char*, char *);
extern void execute_757(char*, char *);
extern void execute_832(char*, char *);
extern void execute_833(char*, char *);
extern void execute_834(char*, char *);
extern void execute_835(char*, char *);
extern void execute_910(char*, char *);
extern void execute_911(char*, char *);
extern void execute_912(char*, char *);
extern void execute_913(char*, char *);
extern void execute_988(char*, char *);
extern void execute_989(char*, char *);
extern void execute_990(char*, char *);
extern void execute_991(char*, char *);
extern void execute_1066(char*, char *);
extern void execute_1067(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1069(char*, char *);
extern void execute_1144(char*, char *);
extern void execute_1145(char*, char *);
extern void execute_1146(char*, char *);
extern void execute_1147(char*, char *);
extern void execute_1222(char*, char *);
extern void execute_1223(char*, char *);
extern void execute_1224(char*, char *);
extern void execute_1225(char*, char *);
extern void execute_1300(char*, char *);
extern void execute_1301(char*, char *);
extern void execute_1302(char*, char *);
extern void execute_1303(char*, char *);
extern void execute_1378(char*, char *);
extern void execute_1379(char*, char *);
extern void execute_1380(char*, char *);
extern void execute_1381(char*, char *);
extern void execute_1456(char*, char *);
extern void execute_1457(char*, char *);
extern void execute_1458(char*, char *);
extern void execute_1459(char*, char *);
extern void execute_1534(char*, char *);
extern void execute_1535(char*, char *);
extern void execute_1536(char*, char *);
extern void execute_1537(char*, char *);
extern void execute_1612(char*, char *);
extern void execute_1613(char*, char *);
extern void execute_1614(char*, char *);
extern void execute_1615(char*, char *);
extern void execute_1690(char*, char *);
extern void execute_1691(char*, char *);
extern void execute_1692(char*, char *);
extern void execute_1693(char*, char *);
extern void execute_1768(char*, char *);
extern void execute_1769(char*, char *);
extern void execute_1770(char*, char *);
extern void execute_1771(char*, char *);
extern void execute_1846(char*, char *);
extern void execute_1847(char*, char *);
extern void execute_1848(char*, char *);
extern void execute_1849(char*, char *);
extern void execute_1924(char*, char *);
extern void execute_1925(char*, char *);
extern void execute_1926(char*, char *);
extern void execute_1927(char*, char *);
extern void execute_2002(char*, char *);
extern void execute_2003(char*, char *);
extern void execute_2004(char*, char *);
extern void execute_2005(char*, char *);
extern void execute_2080(char*, char *);
extern void execute_2086(char*, char *);
extern void execute_2088(char*, char *);
extern void execute_2089(char*, char *);
extern void execute_2090(char*, char *);
extern void execute_2092(char*, char *);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[146] = {(funcp)execute_43, (funcp)execute_44, (funcp)execute_46, (funcp)execute_47, (funcp)execute_2095, (funcp)execute_2096, (funcp)execute_49, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_85, (funcp)execute_86, (funcp)execute_236, (funcp)execute_160, (funcp)execute_89, (funcp)execute_162, (funcp)execute_235, (funcp)execute_238, (funcp)execute_240, (funcp)execute_2093, (funcp)execute_2094, (funcp)execute_251, (funcp)execute_252, (funcp)execute_277, (funcp)execute_279, (funcp)execute_280, (funcp)execute_2081, (funcp)execute_2082, (funcp)execute_2083, (funcp)execute_2084, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_367, (funcp)execute_442, (funcp)execute_443, (funcp)execute_444, (funcp)execute_445, (funcp)execute_520, (funcp)execute_521, (funcp)execute_522, (funcp)execute_523, (funcp)execute_598, (funcp)execute_599, (funcp)execute_600, (funcp)execute_601, (funcp)execute_676, (funcp)execute_677, (funcp)execute_678, (funcp)execute_679, (funcp)execute_754, (funcp)execute_755, (funcp)execute_756, (funcp)execute_757, (funcp)execute_832, (funcp)execute_833, (funcp)execute_834, (funcp)execute_835, (funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)execute_913, (funcp)execute_988, (funcp)execute_989, (funcp)execute_990, (funcp)execute_991, (funcp)execute_1066, (funcp)execute_1067, (funcp)execute_1068, (funcp)execute_1069, (funcp)execute_1144, (funcp)execute_1145, (funcp)execute_1146, (funcp)execute_1147, (funcp)execute_1222, (funcp)execute_1223, (funcp)execute_1224, (funcp)execute_1225, (funcp)execute_1300, (funcp)execute_1301, (funcp)execute_1302, (funcp)execute_1303, (funcp)execute_1378, (funcp)execute_1379, (funcp)execute_1380, (funcp)execute_1381, (funcp)execute_1456, (funcp)execute_1457, (funcp)execute_1458, (funcp)execute_1459, (funcp)execute_1534, (funcp)execute_1535, (funcp)execute_1536, (funcp)execute_1537, (funcp)execute_1612, (funcp)execute_1613, (funcp)execute_1614, (funcp)execute_1615, (funcp)execute_1690, (funcp)execute_1691, (funcp)execute_1692, (funcp)execute_1693, (funcp)execute_1768, (funcp)execute_1769, (funcp)execute_1770, (funcp)execute_1771, (funcp)execute_1846, (funcp)execute_1847, (funcp)execute_1848, (funcp)execute_1849, (funcp)execute_1924, (funcp)execute_1925, (funcp)execute_1926, (funcp)execute_1927, (funcp)execute_2002, (funcp)execute_2003, (funcp)execute_2004, (funcp)execute_2005, (funcp)execute_2080, (funcp)execute_2086, (funcp)execute_2088, (funcp)execute_2089, (funcp)execute_2090, (funcp)execute_2092, (funcp)transaction_2, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 146;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/main_tb_behav/xsim.reloc",  (void **)funcTab, 146);
	iki_vhdl_file_variable_register(dp + 116272);
	iki_vhdl_file_variable_register(dp + 116328);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/main_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/main_tb_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/main_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/main_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/main_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
