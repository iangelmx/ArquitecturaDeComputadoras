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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vboxsrv/Downloads/ESCOMips/registros.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3778880527_3212880686_p_0(char *t0)
{
    char t27[16];
    char t28[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    int t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3044);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t1 = xsi_get_transient_memory(256U);
    memset(t1, 0, 256U);
    t5 = t1;
    t6 = (t0 + 5809);
    t8 = (16U != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3104);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 256U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t9 = (256U / 16U);
    xsi_mem_set_data(t5, t6, 16U, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 868U);
    t5 = *((char **)t2);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)3);
    if (t16 == 1)
        goto LAB15;

LAB16:    t8 = (unsigned char)0;

LAB17:    if (t8 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t15 = (t8 == (unsigned char)3);
    if (t15 == 1)
        goto LAB24;

LAB25:    t4 = (unsigned char)0;

LAB26:    if (t4 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t15 = (t8 == (unsigned char)3);
    if (t15 == 1)
        goto LAB35;

LAB36:    t4 = (unsigned char)0;

LAB37:    if (t4 == 1)
        goto LAB32;

LAB33:    t3 = (unsigned char)0;

LAB34:    if (t3 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB3;

LAB9:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1144U);
    t10 = *((char **)t2);
    t2 = (t0 + 1052U);
    t11 = *((char **)t2);
    t2 = (t0 + 5312U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t2);
    t22 = (t21 - 0);
    t9 = (t22 * 1);
    t23 = (16U * t9);
    t24 = (0U + t23);
    t12 = (t0 + 3104);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t25 = (t14 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t10, 16U);
    xsi_driver_first_trans_delta(t12, t24, 16U, 0LL);
    goto LAB10;

LAB12:    t2 = (t0 + 776U);
    t7 = *((char **)t2);
    t19 = *((unsigned char *)t7);
    t20 = (t19 == (unsigned char)2);
    t4 = t20;
    goto LAB14;

LAB15:    t2 = (t0 + 960U);
    t6 = *((char **)t2);
    t17 = *((unsigned char *)t6);
    t18 = (t17 == (unsigned char)2);
    t8 = t18;
    goto LAB17;

LAB18:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1696U);
    t7 = *((char **)t1);
    t1 = (t0 + 1236U);
    t10 = *((char **)t1);
    t1 = (t0 + 5344U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t1);
    t22 = (t21 - 0);
    t9 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t23 = (16U * t9);
    t24 = (0 + t23);
    t11 = (t7 + t24);
    t12 = (t28 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 15;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t29 = (0 - 15);
    t30 = (t29 * -1);
    t30 = (t30 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t30;
    t13 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t27, t11, t28, (unsigned char)0);
    t14 = (t0 + 1936U);
    t25 = *((char **)t14);
    t14 = (t25 + 0);
    t26 = (t27 + 12U);
    t30 = *((unsigned int *)t26);
    t30 = (t30 * 1U);
    memcpy(t14, t13, t30);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1936U);
    t2 = *((char **)t1);
    t1 = (t0 + 1420U);
    t5 = *((char **)t1);
    t1 = (t0 + 5376U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t6 = xsi_vhdl_bitvec_srl(t6, t2, 16U, t21);
    t7 = (t0 + 2004U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    memcpy(t7, t6, 16U);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2004U);
    t2 = *((char **)t1);
    t1 = (t0 + 5456U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t27, t2, t1);
    t6 = (t27 + 12U);
    t9 = *((unsigned int *)t6);
    t9 = (t9 * 1U);
    t3 = (16U != t9);
    if (t3 == 1)
        goto LAB27;

LAB28:    t7 = (t0 + 1052U);
    t10 = *((char **)t7);
    t7 = (t0 + 5312U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t7);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    t24 = (16U * t23);
    t30 = (0U + t24);
    t11 = (t0 + 3104);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t25 = *((char **)t14);
    memcpy(t25, t5, 16U);
    xsi_driver_first_trans_delta(t11, t30, 16U, 0LL);
    goto LAB19;

LAB21:    t1 = (t0 + 776U);
    t6 = *((char **)t1);
    t18 = *((unsigned char *)t6);
    t19 = (t18 == (unsigned char)2);
    t3 = t19;
    goto LAB23;

LAB24:    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t4 = t17;
    goto LAB26;

LAB27:    xsi_size_not_matching(16U, t9, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1696U);
    t7 = *((char **)t1);
    t1 = (t0 + 1236U);
    t10 = *((char **)t1);
    t1 = (t0 + 5344U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t1);
    t22 = (t21 - 0);
    t9 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t23 = (16U * t9);
    t24 = (0 + t23);
    t11 = (t7 + t24);
    t12 = (t28 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 15;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t29 = (0 - 15);
    t30 = (t29 * -1);
    t30 = (t30 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t30;
    t13 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t27, t11, t28, (unsigned char)0);
    t14 = (t0 + 1936U);
    t25 = *((char **)t14);
    t14 = (t25 + 0);
    t26 = (t27 + 12U);
    t30 = *((unsigned int *)t26);
    t30 = (t30 * 1U);
    memcpy(t14, t13, t30);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1936U);
    t2 = *((char **)t1);
    t1 = (t0 + 1420U);
    t5 = *((char **)t1);
    t1 = (t0 + 5376U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t6 = xsi_vhdl_bitvec_sll(t6, t2, 16U, t21);
    t7 = (t0 + 2004U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    memcpy(t7, t6, 16U);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2004U);
    t2 = *((char **)t1);
    t1 = (t0 + 5456U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t27, t2, t1);
    t6 = (t27 + 12U);
    t9 = *((unsigned int *)t6);
    t9 = (t9 * 1U);
    t3 = (16U != t9);
    if (t3 == 1)
        goto LAB38;

LAB39:    t7 = (t0 + 1052U);
    t10 = *((char **)t7);
    t7 = (t0 + 5312U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t7);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    t24 = (16U * t23);
    t30 = (0U + t24);
    t11 = (t0 + 3104);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t25 = *((char **)t14);
    memcpy(t25, t5, 16U);
    xsi_driver_first_trans_delta(t11, t30, 16U, 0LL);
    goto LAB30;

LAB32:    t1 = (t0 + 776U);
    t6 = *((char **)t1);
    t18 = *((unsigned char *)t6);
    t19 = (t18 == (unsigned char)3);
    t3 = t19;
    goto LAB34;

LAB35:    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t16 = *((unsigned char *)t5);
    t17 = (t16 == (unsigned char)3);
    t4 = t17;
    goto LAB37;

LAB38:    xsi_size_not_matching(16U, t9, 0);
    goto LAB39;

}

static void work_a_3778880527_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 1236U);
    t3 = *((char **)t1);
    t1 = (t0 + 5344U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 3140);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 3052);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3778880527_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t1 = (t0 + 1328U);
    t3 = *((char **)t1);
    t1 = (t0 + 5360U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 3176);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 3060);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3778880527_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3778880527_3212880686_p_0,(void *)work_a_3778880527_3212880686_p_1,(void *)work_a_3778880527_3212880686_p_2};
	xsi_register_didat("work_a_3778880527_3212880686", "isim/ESCOMipsTB_isim_beh.exe.sim/work/a_3778880527_3212880686.didat");
	xsi_register_executes(pe);
}
