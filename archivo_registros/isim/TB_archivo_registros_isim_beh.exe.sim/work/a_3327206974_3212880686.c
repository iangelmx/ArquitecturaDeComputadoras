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
static const char *ng0 = "C:/Users/ayhc9/arqCompVHDL/archivo_registros/archivo_registros.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3327206974_3212880686_p_0(char *t0)
{
    char t31[16];
    char t32[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 5208);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9169);
    *((int *)t1) = 0;
    t5 = (t0 + 9173);
    *((int *)t5) = 15;
    t6 = 0;
    t7 = 15;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(62, ng0);
    t8 = xsi_get_transient_memory(16U);
    memset(t8, 0, 16U);
    t9 = t8;
    memset(t9, (unsigned char)2, 16U);
    t10 = (t0 + 9169);
    t11 = *((int *)t10);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (16U * t13);
    t15 = (0U + t14);
    t16 = (t0 + 5320);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 16U);
    xsi_driver_first_trans_delta(t16, t15, 16U, 0LL);

LAB7:    t1 = (t0 + 9169);
    t6 = *((int *)t1);
    t2 = (t0 + 9173);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t11 = (t6 + 1);
    t6 = t11;
    t5 = (t0 + 9169);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t25 = *((unsigned char *)t8);
    t26 = (t25 == (unsigned char)3);
    if (t26 == 1)
        goto LAB21;

LAB22:    t24 = (unsigned char)0;

LAB23:    if (t24 == 1)
        goto LAB18;

LAB19:    t23 = (unsigned char)0;

LAB20:    if (t23 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t21 = *((unsigned char *)t2);
    t22 = (t21 == (unsigned char)3);
    if (t22 == 1)
        goto LAB32;

LAB33:    t4 = (unsigned char)0;

LAB34:    if (t4 == 1)
        goto LAB29;

LAB30:    t3 = (unsigned char)0;

LAB31:    if (t3 != 0)
        goto LAB26;

LAB28:
LAB27:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB37;

LAB39:
LAB38:    goto LAB3;

LAB12:    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t21 = *((unsigned char *)t5);
    t22 = (t21 == (unsigned char)3);
    t3 = t22;
    goto LAB14;

LAB15:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3112U);
    t16 = *((char **)t2);
    t2 = (t0 + 1352U);
    t17 = *((char **)t2);
    t2 = (t0 + 8692U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t17, t2);
    t7 = (t6 - 0);
    t13 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t6);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t18 = (t16 + t15);
    t19 = (t32 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 15;
    t20 = (t19 + 4U);
    *((int *)t20) = 0;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t11 = (0 - 15);
    t33 = (t11 * -1);
    t33 = (t33 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t33;
    t20 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t31, t18, t32, (unsigned char)0);
    t34 = (t31 + 12U);
    t33 = *((unsigned int *)t34);
    t33 = (t33 * 1U);
    t35 = (t0 + 1672U);
    t36 = *((char **)t35);
    t35 = (t0 + 8724U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t36, t35);
    t37 = xsi_vhdl_bitvec_srl(t37, t20, t33, t12);
    t38 = (t0 + 3408U);
    t39 = *((char **)t38);
    t38 = (t39 + 0);
    t40 = (t31 + 12U);
    t41 = *((unsigned int *)t40);
    t41 = (t41 * 1U);
    memcpy(t38, t37, t41);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t1 = (t0 + 8820U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t31, t2, t1);
    t8 = (t31 + 12U);
    t13 = *((unsigned int *)t8);
    t13 = (t13 * 1U);
    t3 = (16U != t13);
    if (t3 == 1)
        goto LAB24;

LAB25:    t9 = (t0 + 5384);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 16U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 8660U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t6 - 0);
    t13 = (t7 * 1);
    t14 = (16U * t13);
    t15 = (0U + t14);
    t8 = (t0 + 5320);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 16U);
    xsi_driver_first_trans_delta(t8, t15, 16U, 0LL);
    goto LAB16;

LAB18:    t2 = (t0 + 2152U);
    t10 = *((char **)t2);
    t29 = *((unsigned char *)t10);
    t30 = (t29 == (unsigned char)2);
    t23 = t30;
    goto LAB20;

LAB21:    t2 = (t0 + 1992U);
    t9 = *((char **)t2);
    t27 = *((unsigned char *)t9);
    t28 = (t27 == (unsigned char)3);
    t24 = t28;
    goto LAB23;

LAB24:    xsi_size_not_matching(16U, t13, 0);
    goto LAB25;

LAB26:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3112U);
    t9 = *((char **)t1);
    t1 = (t0 + 1352U);
    t10 = *((char **)t1);
    t1 = (t0 + 8692U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t1);
    t7 = (t6 - 0);
    t13 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t6);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t16 = (t9 + t15);
    t17 = (t32 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 15;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t11 = (0 - 15);
    t33 = (t11 * -1);
    t33 = (t33 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t33;
    t18 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t31, t16, t32, (unsigned char)0);
    t19 = (t31 + 12U);
    t33 = *((unsigned int *)t19);
    t33 = (t33 * 1U);
    t20 = (t0 + 1672U);
    t34 = *((char **)t20);
    t20 = (t0 + 8724U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t34, t20);
    t35 = xsi_vhdl_bitvec_srl(t35, t18, t33, t12);
    t36 = (t0 + 3408U);
    t37 = *((char **)t36);
    t36 = (t37 + 0);
    t38 = (t31 + 12U);
    t41 = *((unsigned int *)t38);
    t41 = (t41 * 1U);
    memcpy(t36, t35, t41);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3408U);
    t2 = *((char **)t1);
    t1 = (t0 + 8820U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t31, t2, t1);
    t8 = (t31 + 12U);
    t13 = *((unsigned int *)t8);
    t13 = (t13 * 1U);
    t3 = (16U != t13);
    if (t3 == 1)
        goto LAB35;

LAB36:    t9 = (t0 + 5384);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 16U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 8660U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t6 - 0);
    t13 = (t7 * 1);
    t14 = (16U * t13);
    t15 = (0U + t14);
    t8 = (t0 + 5320);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 16U);
    xsi_driver_first_trans_delta(t8, t15, 16U, 0LL);
    goto LAB27;

LAB29:    t1 = (t0 + 2152U);
    t8 = *((char **)t1);
    t25 = *((unsigned char *)t8);
    t26 = (t25 == (unsigned char)3);
    t3 = t26;
    goto LAB31;

LAB32:    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t23 = *((unsigned char *)t5);
    t24 = (t23 == (unsigned char)3);
    t4 = t24;
    goto LAB34;

LAB35:    xsi_size_not_matching(16U, t13, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t1 = (t0 + 8660U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t1);
    t7 = (t6 - 0);
    t13 = (t7 * 1);
    t14 = (16U * t13);
    t15 = (0U + t14);
    t9 = (t0 + 5320);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t5, 16U);
    xsi_driver_first_trans_delta(t9, t15, 16U, 0LL);
    goto LAB38;

}

static void work_a_3327206974_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 8692U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5448);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5224);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3327206974_3212880686_p_2(char *t0)
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

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 8708U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5512);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5240);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3327206974_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3327206974_3212880686_p_0,(void *)work_a_3327206974_3212880686_p_1,(void *)work_a_3327206974_3212880686_p_2};
	xsi_register_didat("work_a_3327206974_3212880686", "isim/TB_archivo_registros_isim_beh.exe.sim/work/a_3327206974_3212880686.didat");
	xsi_register_executes(pe);
}
