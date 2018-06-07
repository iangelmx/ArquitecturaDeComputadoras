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
static const char *ng0 = "C:/Users/iAngelMx/Documents/GitHub/arqCompVHDL/PROCESADOR_ESCOMIPS/TB_PROCESADOR_B.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3564397177;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_0483995223_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4176);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4176);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0483995223_2372691052_p_1(char *t0)
{
    char t5[16];
    char t10[8];
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t16[8];
    char t17[8];
    char t23[8];
    char t24[16];
    char t28[8];
    char t29[8];
    char t30[8];
    char t31[8];
    char t32[8];
    char t33[16];
    char t34[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    int64 t18;
    int t19;
    unsigned char t20;
    unsigned int t21;
    unsigned int t22;
    char *t25;
    int t26;
    unsigned int t27;

LAB0:    t1 = (t0 + 4616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3320U);
    t3 = (t0 + 9346);
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
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3216U);
    t3 = (t0 + 9352);
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
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 9359);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 9365);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 9371);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 9377);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 9383);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 9389);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 9395);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, t8);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 9401);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 3784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t17, t7, 6U);
    t6 = (t0 + 8972U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t17, t6, (unsigned char)0, t8);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3216U);
    t4 = (t0 + 3496U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(106, ng0);
    t18 = (10 * 1000LL);
    t2 = (t0 + 4424);
    xsi_process_wait(t2, t18);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 9407);
    *((int *)t2) = 0;
    t3 = (t0 + 9411);
    *((int *)t3) = 9;
    t8 = 0;
    t19 = 9;

LAB8:    if (t8 <= t19)
        goto LAB9;

LAB11:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3320U);
    std_textio_file_close(t2);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 3216U);
    std_textio_file_close(t2);
    xsi_set_current_line(138, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 4424);
    t6 = (t0 + 3320U);
    t7 = (t0 + 3568U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(113, ng0);

LAB14:    t2 = (t0 + 4936);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 9407);
    t8 = *((int *)t2);
    t3 = (t0 + 9411);
    t19 = *((int *)t3);
    if (t8 == t19)
        goto LAB11;

LAB20:    t26 = (t8 + 1);
    t8 = t26;
    t4 = (t0 + 9407);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    t4 = (t0 + 4936);
    *((int *)t4) = 0;
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 2528U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 25U);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 2648U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 2768U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2408U);
    t6 = *((char **)t4);
    memcpy(t5, t6, 16U);
    t4 = (t0 + 8892U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t5, t4, (unsigned char)0, 5);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 24);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t23, t4, 5U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 24;
    t25 = (t7 + 4U);
    *((int *)t25) = 20;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (20 - 24);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t23, t24, (unsigned char)0, 9);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 19);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t28, t4, 4U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 19;
    t25 = (t7 + 4U);
    *((int *)t25) = 16;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (16 - 19);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t28, t24, (unsigned char)0, 6);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 15);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t29, t4, 4U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 15;
    t25 = (t7 + 4U);
    *((int *)t25) = 12;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (12 - 15);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t29, t24, (unsigned char)0, 6);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 11);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t30, t4, 4U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 11;
    t25 = (t7 + 4U);
    *((int *)t25) = 8;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (8 - 11);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t30, t24, (unsigned char)0, 7);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 7);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t31, t4, 4U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 7;
    t25 = (t7 + 4U);
    *((int *)t25) = 4;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (4 - 7);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t31, t24, (unsigned char)0, 7);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2528U);
    t6 = *((char **)t4);
    t9 = (24 - 3);
    t21 = (t9 * 1U);
    t22 = (0 + t21);
    t4 = (t6 + t22);
    memcpy(t32, t4, 4U);
    t7 = (t24 + 0U);
    t25 = (t7 + 0U);
    *((int *)t25) = 3;
    t25 = (t7 + 4U);
    *((int *)t25) = 0;
    t25 = (t7 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 3);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t7 + 12U);
    *((unsigned int *)t25) = t27;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t32, t24, (unsigned char)0, 7);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2648U);
    t6 = *((char **)t4);
    memcpy(t24, t6, 16U);
    t4 = (t0 + 8924U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t24, t4, (unsigned char)0, 5);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2768U);
    t6 = *((char **)t4);
    memcpy(t33, t6, 16U);
    t4 = (t0 + 8940U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t33, t4, (unsigned char)0, 5);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3496U);
    t4 = (t0 + 2888U);
    t6 = *((char **)t4);
    memcpy(t34, t6, 16U);
    t4 = (t0 + 8956U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t34, t4, (unsigned char)0, 5);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 4424);
    t3 = (t0 + 3216U);
    t4 = (t0 + 3496U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(132, ng0);
    t18 = (20 * 1000LL);
    t2 = (t0 + 4424);
    xsi_process_wait(t2, t18);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 992U);
    t20 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t20 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_set_current_line(143, ng0);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB25:    goto LAB2;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

}


extern void work_a_0483995223_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0483995223_2372691052_p_0,(void *)work_a_0483995223_2372691052_p_1};
	xsi_register_didat("work_a_0483995223_2372691052", "isim/TB_PROCESADOR_B_isim_beh.exe.sim/work/a_0483995223_2372691052.didat");
	xsi_register_executes(pe);
}
