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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_3408767882;
char *WORK_P_1458863412;
char *WORK_P_4247528515;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *WORK_P_1745595347;
char *WORK_P_2432919050;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_1242562249_init();
    work_p_2432919050_init();
    work_p_1745595347_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_4247528515_init();
    work_p_1458863412_init();
    work_a_0163788393_3212880686_init();
    work_a_4085309447_3212880686_init();
    work_a_1208337864_3212880686_init();
    ieee_p_3620187407_init();
    work_p_3408767882_init();
    work_a_3378807622_3212880686_init();
    work_a_4176254232_3212880686_init();
    work_a_2110357975_3212880686_init();
    work_a_1912749698_3212880686_init();
    work_a_2713067650_3212880686_init();
    work_a_1218917173_3212880686_init();
    work_a_0578850709_3212880686_init();
    work_a_0694870863_3212880686_init();
    work_a_2023191012_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2399776393_3212880686_init();
    work_a_1430113433_3212880686_init();
    work_a_1130845995_0831356973_init();
    work_a_3720894149_0831356973_init();
    work_a_2889154880_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_3408767882 = xsi_get_engine_memory("work_p_3408767882");
    WORK_P_1458863412 = xsi_get_engine_memory("work_p_1458863412");
    WORK_P_4247528515 = xsi_get_engine_memory("work_p_4247528515");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_1745595347 = xsi_get_engine_memory("work_p_1745595347");
    WORK_P_2432919050 = xsi_get_engine_memory("work_p_2432919050");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
