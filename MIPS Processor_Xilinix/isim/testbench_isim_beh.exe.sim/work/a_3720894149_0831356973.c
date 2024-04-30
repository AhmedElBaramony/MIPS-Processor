/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/Xilinix Projects/Project_Phase_1/dmem.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3720894149_0831356973_p_0(char *t0)
{
    char t19[16];
    char t21[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 7674);
    *((int *)t2) = 1;
    t3 = (t0 + 7678);
    *((int *)t3) = 1000;
    t4 = 1;
    t5 = 1000;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(20, ng0);
    t6 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t6, 0U, 0U);
    if (t7 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t15 = (31 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t2 = (t6 + t17);
    t9 = ((IEEE_P_2592010699) + 4024);
    t12 = (t21 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t24 = (2 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t25;
    t8 = xsi_base_array_concat(t8, t19, t9, (char)99, (unsigned char)2, (char)97, t2, t21, (char)101);
    t26 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t8, t19);
    t27 = (t26 - 63);
    t25 = (t27 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t26);
    t28 = (32U * t25);
    t29 = (0 + t28);
    t13 = (t3 + t29);
    t14 = (t0 + 3352);
    t18 = (t14 + 56U);
    t20 = *((char **)t18);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t13, 32U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(26, ng0);

LAB16:    t2 = (t0 + 3272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;

LAB1:    return;
LAB6:    t2 = (t0 + 7674);
    t4 = *((int *)t2);
    t3 = (t0 + 7678);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB18:    t24 = (t4 + 1);
    t4 = t24;
    t6 = (t0 + 7674);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(21, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(22, ng0);
    t8 = (t0 + 1512U);
    t12 = *((char **)t8);
    t8 = (t0 + 1968U);
    t13 = *((char **)t8);
    t8 = (t0 + 1352U);
    t14 = *((char **)t8);
    t15 = (31 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t14 + t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 7;
    t23 = (t22 + 4U);
    *((int *)t23) = 2;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (2 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t18 = xsi_base_array_concat(t18, t19, t20, (char)99, (unsigned char)2, (char)97, t8, t21, (char)101);
    t26 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t18, t19);
    t27 = (t26 - 63);
    t25 = (t27 * -1);
    xsi_vhdl_check_range_of_index(63, 0, -1, t26);
    t28 = (32U * t25);
    t29 = (0 + t28);
    t23 = (t13 + t29);
    memcpy(t23, t12, 32U);
    goto LAB12;

LAB14:    t3 = (t0 + 3272);
    *((int *)t3) = 0;
    goto LAB6;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

}


extern void work_a_3720894149_0831356973_init()
{
	static char *pe[] = {(void *)work_a_3720894149_0831356973_p_0};
	xsi_register_didat("work_a_3720894149_0831356973", "isim/testbench_isim_beh.exe.sim/work/a_3720894149_0831356973.didat");
	xsi_register_executes(pe);
}
