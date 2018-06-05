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

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
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
    t2 = (t0 + 5456);
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
    t2 = (t0 + 5456);
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
    char t20[16];
    char t22[24];
    char t23[8];
    char t24[8];
    char t25[8];
    char t26[24];
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
    int t21;

LAB0:    t1 = (t0 + 5040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 3600U);
    t3 = (t0 + 10319);
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
    xsi_set_current_line(190, ng0);
    t2 = (t0 + 3496U);
    t3 = (t0 + 10325);
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
    xsi_set_current_line(192, ng0);
    t2 = (t0 + 10332);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t5, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t5, t6, (unsigned char)0, t8);
    xsi_set_current_line(194, ng0);
    t2 = (t0 + 10348);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(195, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 10364);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(198, ng0);
    t2 = (t0 + 10380);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(200, ng0);
    t2 = (t0 + 10396);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(202, ng0);
    t2 = (t0 + 10412);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(203, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(204, ng0);
    t2 = (t0 + 10428);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 16U);
    xsi_set_current_line(205, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 4208U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 16U);
    t6 = (t0 + 10048U);
    t8 = (16U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(206, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3776U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(208, ng0);
    t16 = (10 * 1000LL);
    t2 = (t0 + 4848);
    xsi_process_wait(t2, t16);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(209, ng0);
    t2 = (t0 + 10444);
    *((int *)t2) = 0;
    t3 = (t0 + 10448);
    *((int *)t3) = 50;
    t8 = 0;
    t17 = 50;

LAB8:    if (t8 <= t17)
        goto LAB9;

LAB11:    xsi_set_current_line(270, ng0);
    t2 = (t0 + 3600U);
    std_textio_file_close(t2);
    xsi_set_current_line(271, ng0);
    t2 = (t0 + 3496U);
    std_textio_file_close(t2);
    xsi_set_current_line(273, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(210, ng0);
    t4 = (t0 + 4848);
    t6 = (t0 + 3600U);
    t7 = (t0 + 3848U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(212, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    t4 = (t0 + 10000U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(213, ng0);
    t2 = (t0 + 2688U);
    t3 = *((char **)t2);
    t2 = (t0 + 5520);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 5U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(214, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    t4 = (t0 + 10016U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(215, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5584);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(216, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t4 = (t0 + 10032U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(217, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t2 = (t0 + 5648);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(218, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(219, ng0);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5712);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(220, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3848U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(221, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5776);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(225, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 20U);
    xsi_set_current_line(238, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10452);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 16;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (16 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)1, 16);
    xsi_set_current_line(239, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10468);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 16;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (16 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)1, 16);
    xsi_set_current_line(240, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10484);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 16;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (16 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)1, 16);
    xsi_set_current_line(241, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10500);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 16;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (16 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)1, 16);
    xsi_set_current_line(242, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10516);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 16;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (16 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)1, 16);
    xsi_set_current_line(243, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2568U);
    t6 = *((char **)t4);
    memcpy(t22, t6, 20U);
    t4 = (t0 + 9968U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t22, t4, (unsigned char)1, 16);
    xsi_set_current_line(244, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10532);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 4;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (4 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)0, 16);
    xsi_set_current_line(246, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3776U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(248, ng0);

LAB14:    t2 = (t0 + 5360);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 10444);
    t8 = *((int *)t2);
    t3 = (t0 + 10448);
    t17 = *((int *)t3);
    if (t8 == t17)
        goto LAB11;

LAB20:    t21 = (t8 + 1);
    t8 = t21;
    t4 = (t0 + 10444);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    t4 = (t0 + 5360);
    *((int *)t4) = 0;
    xsi_set_current_line(250, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 20U);
    xsi_set_current_line(257, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    memcpy(t23, t6, 5U);
    t4 = (t0 + 10000U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t23, t4, (unsigned char)1, 16);
    xsi_set_current_line(258, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    memcpy(t24, t6, 4U);
    t4 = (t0 + 10016U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t24, t4, (unsigned char)1, 16);
    xsi_set_current_line(259, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    memcpy(t25, t6, 4U);
    t4 = (t0 + 10032U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t25, t4, (unsigned char)1, 16);
    xsi_set_current_line(260, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)1, 16);
    xsi_set_current_line(261, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)1, 16);
    xsi_set_current_line(262, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 2568U);
    t6 = *((char **)t4);
    memcpy(t26, t6, 20U);
    t4 = (t0 + 9968U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t26, t4, (unsigned char)1, 16);
    xsi_set_current_line(263, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3776U);
    t4 = (t0 + 10536);
    t7 = (t20 + 0U);
    t18 = (t7 + 0U);
    *((int *)t18) = 1;
    t18 = (t7 + 4U);
    *((int *)t18) = 4;
    t18 = (t7 + 8U);
    *((int *)t18) = 1;
    t21 = (4 - 1);
    t9 = (t21 * 1);
    t9 = (t9 + 1);
    t18 = (t7 + 12U);
    *((unsigned int *)t18) = t9;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t20, (unsigned char)0, 16);
    xsi_set_current_line(265, ng0);
    t2 = (t0 + 4848);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3776U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(267, ng0);

LAB18:    t2 = (t0 + 5376);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 992U);
    t19 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t19 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t4 = (t0 + 5376);
    *((int *)t4) = 0;
    goto LAB10;

LAB17:    t3 = (t0 + 992U);
    t19 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t19 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_2014791101_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2014791101_2372691052_p_0,(void *)work_a_2014791101_2372691052_p_1};
	xsi_register_didat("work_a_2014791101_2372691052", "isim/TB_UnidadDeControl_isim_beh.exe.sim/work/a_2014791101_2372691052.didat");
	xsi_register_executes(pe);
}
