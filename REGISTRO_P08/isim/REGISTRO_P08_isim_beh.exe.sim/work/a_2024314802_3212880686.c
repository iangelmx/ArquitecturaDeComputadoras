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
static const char *ng0 = "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/REGISTRO_P08/REGISTRO_P08.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_2024314802_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned int t21;
    unsigned int t22;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t1 = xsi_get_transient_memory(9U);
    memset(t1, 0, 9U);
    t5 = t1;
    memset(t5, (unsigned char)2, 9U);
    t6 = (t0 + 3936);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB13;

LAB14:    t13 = (unsigned char)0;

LAB15:    if (t13 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 1032U);
    t8 = *((char **)t2);
    t2 = (t0 + 3936);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 9U);
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB13:    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)2);
    t13 = t17;
    goto LAB15;

LAB16:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1992U);
    t6 = *((char **)t1);
    t1 = (t0 + 6296U);
    t7 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t20, t6, t1, (unsigned char)0);
    t8 = (t20 + 12U);
    t21 = *((unsigned int *)t8);
    t21 = (t21 * 1U);
    t9 = xsi_vhdl_bitvec_srl(t9, t7, t21, 1);
    t10 = (t0 + 2288U);
    t18 = *((char **)t10);
    t10 = (t18 + 0);
    t19 = (t20 + 12U);
    t22 = *((unsigned int *)t19);
    t22 = (t22 * 1U);
    memcpy(t10, t9, t22);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t0 + 6312U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t20, t2, t1);
    t6 = (t20 + 12U);
    t21 = *((unsigned int *)t6);
    t21 = (t21 * 1U);
    t3 = (9U != t21);
    if (t3 == 1)
        goto LAB21;

LAB22:    t7 = (t0 + 3936);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t18 = *((char **)t10);
    memcpy(t18, t5, 9U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB18:    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB20;

LAB21:    xsi_size_not_matching(9U, t21, 0);
    goto LAB22;

}

static void work_a_2024314802_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4000);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 9U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3856);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2024314802_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2024314802_3212880686_p_0,(void *)work_a_2024314802_3212880686_p_1};
	xsi_register_didat("work_a_2024314802_3212880686", "isim/REGISTRO_P08_isim_beh.exe.sim/work/a_2024314802_3212880686.didat");
	xsi_register_executes(pe);
}
