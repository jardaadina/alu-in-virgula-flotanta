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
extern void execute_1820(char*, char *);
extern void execute_1821(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_1816(char*, char *);
extern void execute_1817(char*, char *);
extern void execute_1818(char*, char *);
extern void execute_1819(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_102(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_645(char*, char *);
extern void execute_646(char*, char *);
extern void execute_647(char*, char *);
extern void execute_648(char*, char *);
extern void execute_723(char*, char *);
extern void execute_724(char*, char *);
extern void execute_725(char*, char *);
extern void execute_726(char*, char *);
extern void execute_801(char*, char *);
extern void execute_802(char*, char *);
extern void execute_803(char*, char *);
extern void execute_804(char*, char *);
extern void execute_879(char*, char *);
extern void execute_880(char*, char *);
extern void execute_881(char*, char *);
extern void execute_882(char*, char *);
extern void execute_957(char*, char *);
extern void execute_958(char*, char *);
extern void execute_959(char*, char *);
extern void execute_960(char*, char *);
extern void execute_1035(char*, char *);
extern void execute_1036(char*, char *);
extern void execute_1037(char*, char *);
extern void execute_1038(char*, char *);
extern void execute_1113(char*, char *);
extern void execute_1114(char*, char *);
extern void execute_1115(char*, char *);
extern void execute_1116(char*, char *);
extern void execute_1191(char*, char *);
extern void execute_1192(char*, char *);
extern void execute_1193(char*, char *);
extern void execute_1194(char*, char *);
extern void execute_1269(char*, char *);
extern void execute_1270(char*, char *);
extern void execute_1271(char*, char *);
extern void execute_1272(char*, char *);
extern void execute_1347(char*, char *);
extern void execute_1348(char*, char *);
extern void execute_1349(char*, char *);
extern void execute_1350(char*, char *);
extern void execute_1425(char*, char *);
extern void execute_1426(char*, char *);
extern void execute_1427(char*, char *);
extern void execute_1428(char*, char *);
extern void execute_1503(char*, char *);
extern void execute_1504(char*, char *);
extern void execute_1505(char*, char *);
extern void execute_1506(char*, char *);
extern void execute_1581(char*, char *);
extern void execute_1582(char*, char *);
extern void execute_1583(char*, char *);
extern void execute_1584(char*, char *);
extern void execute_1659(char*, char *);
extern void execute_1660(char*, char *);
extern void execute_1661(char*, char *);
extern void execute_1662(char*, char *);
extern void execute_1737(char*, char *);
extern void execute_1738(char*, char *);
extern void execute_1739(char*, char *);
extern void execute_1740(char*, char *);
extern void execute_1815(char*, char *);
extern void execute_98(char*, char *);
extern void execute_27(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[109] = {(funcp)execute_1820, (funcp)execute_1821, (funcp)execute_14, (funcp)execute_15, (funcp)execute_1816, (funcp)execute_1817, (funcp)execute_1818, (funcp)execute_1819, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_258, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_411, (funcp)execute_412, (funcp)execute_413, (funcp)execute_414, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)execute_567, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_645, (funcp)execute_646, (funcp)execute_647, (funcp)execute_648, (funcp)execute_723, (funcp)execute_724, (funcp)execute_725, (funcp)execute_726, (funcp)execute_801, (funcp)execute_802, (funcp)execute_803, (funcp)execute_804, (funcp)execute_879, (funcp)execute_880, (funcp)execute_881, (funcp)execute_882, (funcp)execute_957, (funcp)execute_958, (funcp)execute_959, (funcp)execute_960, (funcp)execute_1035, (funcp)execute_1036, (funcp)execute_1037, (funcp)execute_1038, (funcp)execute_1113, (funcp)execute_1114, (funcp)execute_1115, (funcp)execute_1116, (funcp)execute_1191, (funcp)execute_1192, (funcp)execute_1193, (funcp)execute_1194, (funcp)execute_1269, (funcp)execute_1270, (funcp)execute_1271, (funcp)execute_1272, (funcp)execute_1347, (funcp)execute_1348, (funcp)execute_1349, (funcp)execute_1350, (funcp)execute_1425, (funcp)execute_1426, (funcp)execute_1427, (funcp)execute_1428, (funcp)execute_1503, (funcp)execute_1504, (funcp)execute_1505, (funcp)execute_1506, (funcp)execute_1581, (funcp)execute_1582, (funcp)execute_1583, (funcp)execute_1584, (funcp)execute_1659, (funcp)execute_1660, (funcp)execute_1661, (funcp)execute_1662, (funcp)execute_1737, (funcp)execute_1738, (funcp)execute_1739, (funcp)execute_1740, (funcp)execute_1815, (funcp)execute_98, (funcp)execute_27, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 109;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/inmultireaMantiselor_tb_behav/xsim.reloc",  (void **)funcTab, 109);
	iki_vhdl_file_variable_register(dp + 88144);
	iki_vhdl_file_variable_register(dp + 88200);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/inmultireaMantiselor_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/inmultireaMantiselor_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/inmultireaMantiselor_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/inmultireaMantiselor_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/inmultireaMantiselor_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
