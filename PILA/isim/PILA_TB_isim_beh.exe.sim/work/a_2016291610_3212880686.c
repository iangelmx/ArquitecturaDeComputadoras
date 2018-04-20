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
    char t27[16];
    char t28[16];
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
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned int t29;
    unsigned int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB14;

LAB15:    t3 = (unsigned char)0;

LAB16:    if (t3 != 0)
        goto LAB12;

LAB13:
LAB3:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2608U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t1 = (t0 + 4584);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t15 = *((char **)t9);
    *((int *)t15) = t6;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4408);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 7844);
    *((int *)t1) = 0;
    t2 = (t0 + 7848);
    *((int *)t2) = 7;
    t6 = 0;
    t7 = 7;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 7852);
    t3 = (8U != 8U);
    if (t3 == 1)
        goto LAB9;

LAB10:    t9 = (t0 + 7844);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (8U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 4520);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_delta(t15, t14, 8U, 0LL);

LAB7:    t1 = (t0 + 7844);
    t6 = *((int *)t1);
    t2 = (t0 + 7848);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB11:    t10 = (t6 + 1);
    t6 = t10;
    t5 = (t0 + 7844);
    *((int *)t5) = t6;
    goto LAB5;

LAB9:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB10;

LAB12:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t23 = *((unsigned char *)t8);
    t24 = (t23 == (unsigned char)3);
    if (t24 == 1)
        goto LAB20;

LAB21:    t22 = (unsigned char)0;

LAB22:    if (t22 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t6);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t8 = (t28 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 7);
    t29 = (t10 * -1);
    t29 = (t29 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t29;
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t27, t1, t28, 1);
    t15 = (t27 + 12U);
    t29 = *((unsigned int *)t15);
    t30 = (1U * t29);
    t3 = (8U != t30);
    if (t3 == 1)
        goto LAB23;

LAB24:    t16 = (t0 + 2608U);
    t17 = *((char **)t16);
    t11 = *((int *)t17);
    t31 = (t11 - 0);
    t32 = (t31 * 1);
    t33 = (8U * t32);
    t34 = (0U + t33);
    t16 = (t0 + 4520);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t35 = (t19 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t9, 8U);
    xsi_driver_first_trans_delta(t16, t34, 8U, 0LL);

LAB18:    goto LAB3;

LAB14:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t20 = *((unsigned char *)t5);
    t21 = (t20 == (unsigned char)3);
    t3 = t21;
    goto LAB16;

LAB17:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2608U);
    t15 = *((char **)t2);
    t6 = *((int *)t15);
    t7 = (t6 + 1);
    t2 = (t0 + 2608U);
    t16 = *((char **)t2);
    t2 = (t16 + 0);
    *((int *)t2) = t7;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 - 0);
    t12 = (t7 * 1);
    t13 = (8U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 4520);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 8U);
    xsi_driver_first_trans_delta(t1, t14, 8U, 0LL);
    goto LAB18;

LAB20:    t2 = (t0 + 1992U);
    t9 = *((char **)t2);
    t25 = *((unsigned char *)t9);
    t26 = (t25 == (unsigned char)3);
    t22 = t26;
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t30, 0);
    goto LAB24;

}

static void work_a_2016291610_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 4648);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4424);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2016291610_3212880686_p_2(char *t0)
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

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t4);
    t7 = (8U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 4712);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 4440);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2016291610_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2016291610_3212880686_p_0,(void *)work_a_2016291610_3212880686_p_1,(void *)work_a_2016291610_3212880686_p_2};
	xsi_register_didat("work_a_2016291610_3212880686", "isim/PILA_TB_isim_beh.exe.sim/work/a_2016291610_3212880686.didat");
	xsi_register_executes(pe);
}
