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
static const char *ng0 = "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PILA/PILA.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2016291610_3212880686_p_0(char *t0)
{
    char t22[16];
    char t23[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    unsigned char t36;
    unsigned char t37;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB12;

LAB13:
LAB3:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 4320);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    *((int *)t15) = t6;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4160);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 7428);
    *((int *)t1) = 0;
    t2 = (t0 + 7432);
    *((int *)t2) = 7;
    t6 = 0;
    t7 = 7;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 7436);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB9;

LAB10:    t9 = (t0 + 7428);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 4256);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 16U);
    xsi_driver_first_trans_delta(t15, t14, 16U, 0LL);

LAB7:    t1 = (t0 + 7428);
    t6 = *((int *)t1);
    t2 = (t0 + 7432);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB11:    t10 = (t6 + 1);
    t6 = t10;
    t5 = (t0 + 7428);
    *((int *)t5) = t6;
    goto LAB5;

LAB9:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB10;

LAB12:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2152U);
    t8 = *((char **)t2);
    t2 = (t0 + 2608U);
    t9 = *((char **)t2);
    t6 = *((int *)t9);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t6);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t2 = (t8 + t14);
    t15 = (t23 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 15;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t10 = (0 - 15);
    t24 = (t10 * -1);
    t24 = (t24 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t24;
    t16 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t22, t2, t23, 1);
    t17 = (t22 + 12U);
    t24 = *((unsigned int *)t17);
    t25 = (1U * t24);
    t26 = (16U != t25);
    if (t26 == 1)
        goto LAB17;

LAB18:    t18 = (t0 + 2608U);
    t19 = *((char **)t18);
    t11 = *((int *)t19);
    t27 = (t11 - 0);
    t28 = (t27 * 1);
    t29 = (16U * t28);
    t30 = (0U + t29);
    t18 = (t0 + 4256);
    t31 = (t18 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t16, 16U);
    xsi_driver_first_trans_delta(t18, t30, 16U, 0LL);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB25;

LAB26:    t4 = (unsigned char)0;

LAB27:    if (t4 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB33;

LAB34:    t4 = (unsigned char)0;

LAB35:    if (t4 == 1)
        goto LAB30;

LAB31:    t3 = (unsigned char)0;

LAB32:    if (t3 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB41;

LAB42:    t4 = (unsigned char)0;

LAB43:    if (t4 == 1)
        goto LAB38;

LAB39:    t3 = (unsigned char)0;

LAB40:    if (t3 != 0)
        goto LAB36;

LAB37:
LAB20:    goto LAB3;

LAB14:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t20 = *((unsigned char *)t5);
    t21 = (t20 == (unsigned char)3);
    t3 = t21;
    goto LAB16;

LAB17:    xsi_size_not_matching(16U, t25, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1032U);
    t9 = *((char **)t1);
    t1 = (t0 + 2608U);
    t15 = *((char **)t1);
    t6 = *((int *)t15);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4256);
    t16 = (t1 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t9, 16U);
    xsi_driver_first_trans_delta(t1, t14, 16U, 0LL);
    goto LAB20;

LAB22:    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t36 = *((unsigned char *)t8);
    t37 = (t36 == (unsigned char)2);
    t3 = t37;
    goto LAB24;

LAB25:    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t26 = *((unsigned char *)t5);
    t35 = (t26 == (unsigned char)2);
    t4 = t35;
    goto LAB27;

LAB28:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2608U);
    t9 = *((char **)t1);
    t6 = *((int *)t9);
    t7 = (t6 + 1);
    t1 = (t0 + 2608U);
    t15 = *((char **)t1);
    t1 = (t15 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4256);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 16U);
    xsi_driver_first_trans_delta(t1, t14, 16U, 0LL);
    goto LAB20;

LAB30:    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t36 = *((unsigned char *)t8);
    t37 = (t36 == (unsigned char)2);
    t3 = t37;
    goto LAB32;

LAB33:    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t26 = *((unsigned char *)t5);
    t35 = (t26 == (unsigned char)3);
    t4 = t35;
    goto LAB35;

LAB36:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2608U);
    t9 = *((char **)t1);
    t6 = *((int *)t9);
    t7 = (t6 - 1);
    t1 = (t0 + 2608U);
    t15 = *((char **)t1);
    t1 = (t15 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t6);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t8 = (t0 + 2608U);
    t9 = *((char **)t8);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t24 = (t11 * 1);
    t25 = (16U * t24);
    t28 = (0U + t25);
    t8 = (t0 + 4256);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_delta(t8, t28, 16U, 0LL);
    goto LAB20;

LAB38:    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t36 = *((unsigned char *)t8);
    t37 = (t36 == (unsigned char)3);
    t3 = t37;
    goto LAB40;

LAB41:    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t26 = *((unsigned char *)t5);
    t35 = (t26 == (unsigned char)2);
    t4 = t35;
    goto LAB43;

}

static void work_a_2016291610_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 4384);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 4176);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2016291610_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2016291610_3212880686_p_0,(void *)work_a_2016291610_3212880686_p_1};
	xsi_register_didat("work_a_2016291610_3212880686", "isim/TB_PROCESADOR_B_isim_beh.exe.sim/work/a_2016291610_3212880686.didat");
	xsi_register_executes(pe);
}
