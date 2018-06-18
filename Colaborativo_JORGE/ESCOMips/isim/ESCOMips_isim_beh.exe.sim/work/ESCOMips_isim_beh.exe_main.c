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
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *WORK_P_2097869386;
char *WORK_P_0375256618;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2097869386_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_0375256618_init();
    ieee_p_1242562249_init();
    work_a_3204108926_3212880686_init();
    work_a_4200218819_3212880686_init();
    work_a_0864066215_3212880686_init();
    work_a_2253722718_3212880686_init();
    work_a_3008243365_3212880686_init();
    work_a_1452136513_3212880686_init();
    work_a_2425904575_3212880686_init();
    work_a_0308474336_3212880686_init();
    work_a_1055094266_3212880686_init();
    work_a_4088222601_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_2178422333_3212880686_init();
    work_a_3778880527_3212880686_init();
    work_a_0632848221_3212880686_init();
    work_a_3254239639_3212880686_init();
    work_a_1727071177_0701277094_init();
    work_a_3852940291_3212880686_init();
    work_a_1796564149_3212880686_init();


    xsi_register_tops("work_a_1796564149_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_2097869386 = xsi_get_engine_memory("work_p_2097869386");
    WORK_P_0375256618 = xsi_get_engine_memory("work_p_0375256618");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
