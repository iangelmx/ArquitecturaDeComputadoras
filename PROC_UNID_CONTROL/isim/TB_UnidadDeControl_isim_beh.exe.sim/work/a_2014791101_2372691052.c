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
static const char *ng0 = "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PROC_UNID_CONTROL/TB_UnidadDeControl.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );
void ieee_p_3564397177_sub_2743816878_91900896(char *, char *, char *, char *);
void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


static void work_a_2014791101_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4600);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4600);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2014791101_2372691052_p_1(char *t0)
{
    char t5[16];
    char t10[16];
    char t11[16];
    char t12[16];
    char t13[16];
    char t14[16];
    char t15[16];
    char t21[8];
    char t22[8];
    char t23[8];
    char t24[24];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    int64 t16;
    int t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    int t26;

LAB0:    t1 = (t0 + 5040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3600U);
    t3 = (t0 + 10275);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 6;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (6 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3496U);
    t3 = (t0 + 10281);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)1);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 10288);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t5, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t5, t6, (unsigned char)0, t8);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 10304);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 10320);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 10336);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 10352);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 10368);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 10384);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 16U);
    t6 = (t0 + 10004U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3776U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(107, ng0);
    t16 = (10 * 1000LL);
    t2 = (t0 + 4848);
    xsi_process_wait(t2, t16);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 10400);
    *((int *)t2) = 0;
    t3 = (t0 + 10404);
    *((int *)t3) = 50;
    t8 = 0;
    t17 = 50;

LAB8:    if (t8 <= t17)
        goto LAB9;

LAB11:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 3600U);
    std_textio_file_close(t2);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 3496U);
    std_textio_file_close(t2);
    xsi_set_current_line(146, ng0);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(109, ng0);
    t4 = (t0 + 4848);
    t6 = (t0 + 3600U);
    t7 = (t0 + 3848U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    t4 = (t0 + 9956U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2688U);
    t3 = *((char **)t2);
    t2 = (t0 + 5504);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 5U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    t4 = (t0 + 9972U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5568);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t4 = (t0 + 9988U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t2 = (t0 + 5632);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5696);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5760);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);

LAB14:    t2 = (t0 + 5360);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 10400);
    t8 = *((int *)t2);
    t3 = (t0 + 10404);
    t17 = *((int *)t3);
    if (t8 == t17)
        goto LAB11;

LAB19:    t26 = (t8 + 1);
    t8 = t26;
    t4 = (t0 + 10400);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    t4 = (t0 + 5360);
    *((int *)t4) = 0;
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 20U);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 10412);
    t4 = (t0 + 4064U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);

LAB17:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    memcpy(t21, t6, 5U);
    t4 = (t0 + 9956U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t21, t4, (unsigned char)1, 16);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    memcpy(t22, t6, 4U);
    t4 = (t0 + 9972U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t22, t4, (unsigned char)1, 16);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    memcpy(t23, t6, 4U);
    t4 = (t0 + 9988U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t23, t4, (unsigned char)1, 16);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)1, 16);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)1, 16);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2568U);
    t6 = *((char **)t4);
    memcpy(t24, t6, 20U);
    t4 = (t0 + 9924U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t24, t4, (unsigned char)1, 16);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4064U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t25, t7, 4U);
    t6 = (t0 + 9940U);
    std_textio_write7(STD_TEXTIO, t2, t3, t25, t6, (unsigned char)0, 16);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3776U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB10;

LAB13:    t3 = (t0 + 992U);
    t19 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t19 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 10408);
    t6 = (t0 + 4064U);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    t7 = (t18 + 0);
    memcpy(t7, t2, 4U);
    goto LAB17;

LAB20:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_2014791101_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2014791101_2372691052_p_0,(void *)work_a_2014791101_2372691052_p_1};
	xsi_register_didat("work_a_2014791101_2372691052", "isim/TB_UnidadDeControl_isim_beh.exe.sim/work/a_2014791101_2372691052.didat");
	xsi_register_executes(pe);
}
