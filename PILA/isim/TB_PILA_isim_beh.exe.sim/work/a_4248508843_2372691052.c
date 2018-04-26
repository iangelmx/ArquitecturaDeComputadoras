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
static const char *ng0 = "C:/Users/ayhc9/arqCompVHDL/PILA/TB_PILA.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );
void ieee_p_3564397177_sub_2743816878_91900896(char *, char *, char *, char *);
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);


static void work_a_4248508843_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4576);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5416);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4576);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4248508843_2372691052_p_1(char *t0)
{
    char t5[16];
    char t10[8];
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t16[8];
    char t22[8];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    int64 t17;
    int t18;
    unsigned char t19;
    char *t20;
    int t21;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3720U);
    t3 = (t0 + 9117);
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
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 3616U);
    t3 = (t0 + 9123);
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
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 9130);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 9135);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 9140);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 9145);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 9150);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 9155);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 9160);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 4184U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 5U);
    t6 = (t0 + 8828U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, t8);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3616U);
    t4 = (t0 + 3896U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(134, ng0);
    t17 = (10 * 1000LL);
    t2 = (t0 + 4824);
    xsi_process_wait(t2, t17);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 9165);
    *((int *)t2) = 0;
    t3 = (t0 + 9169);
    *((int *)t3) = 22;
    t8 = 0;
    t18 = 22;

LAB8:    if (t8 <= t18)
        goto LAB9;

LAB11:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 3720U);
    std_textio_file_close(t2);
    xsi_set_current_line(166, ng0);
    t2 = (t0 + 3616U);
    std_textio_file_close(t2);
    xsi_set_current_line(168, ng0);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(136, ng0);
    t4 = (t0 + 4824);
    t6 = (t0 + 3720U);
    t7 = (t0 + 3968U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3968U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5480);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t20 = *((char **)t7);
    *((unsigned char *)t20) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3968U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3048U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5544);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t20 = *((char **)t7);
    *((unsigned char *)t20) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3968U);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5608);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t20 = *((char **)t7);
    *((unsigned char *)t20) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3968U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 3168U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 5672);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t20 = *((char **)t7);
    *((unsigned char *)t20) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3968U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    t4 = (t0 + 8844U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5736);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t20 = *((char **)t7);
    memcpy(t20, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(149, ng0);

LAB14:    t2 = (t0 + 5336);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 9165);
    t8 = *((int *)t2);
    t3 = (t0 + 9169);
    t18 = *((int *)t3);
    if (t8 == t18)
        goto LAB11;

LAB16:    t21 = (t8 + 1);
    t8 = t21;
    t4 = (t0 + 9165);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    t4 = (t0 + 5336);
    *((int *)t4) = 0;
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t21 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t5, t21, 5);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    t7 = (t5 + 12U);
    t9 = *((unsigned int *)t7);
    t9 = (t9 * 1U);
    memcpy(t4, t2, t9);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, 6);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, 6);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, 6);
    xsi_set_current_line(157, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, 6);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    memcpy(t5, t6, 16U);
    t4 = (t0 + 8844U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t5, t4, (unsigned char)0, 6);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    memcpy(t22, t6, 5U);
    t4 = (t0 + 8812U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t22, t4, (unsigned char)0, 6);
    xsi_set_current_line(160, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3896U);
    t4 = (t0 + 2568U);
    t6 = *((char **)t4);
    memcpy(t23, t6, 16U);
    t4 = (t0 + 8796U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t23, t4, (unsigned char)0, 6);
    xsi_set_current_line(162, ng0);
    t2 = (t0 + 4824);
    t3 = (t0 + 3616U);
    t4 = (t0 + 3896U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB10;

LAB13:    t3 = (t0 + 1152U);
    t19 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t19 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_4248508843_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4248508843_2372691052_p_0,(void *)work_a_4248508843_2372691052_p_1};
	xsi_register_didat("work_a_4248508843_2372691052", "isim/TB_PILA_isim_beh.exe.sim/work/a_4248508843_2372691052.didat");
	xsi_register_executes(pe);
}
