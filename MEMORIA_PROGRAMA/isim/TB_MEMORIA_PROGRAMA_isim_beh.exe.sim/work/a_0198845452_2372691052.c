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
static const char *ng0 = "C:/Users/ayhc9/arqCompVHDL/MEMORIA_PROGRAMA/TB_MEMORIA_PROGRAMA.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);


static void work_a_0198845452_2372691052_p_0(char *t0)
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
    char t26[8];
    char t27[8];
    char t28[8];
    char t29[8];
    char t30[8];
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
    char *t19;
    unsigned int t20;
    unsigned int t21;
    int t24;
    unsigned int t25;

LAB0:    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2040U);
    t3 = (t0 + 6306);
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
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1936U);
    t3 = (t0 + 6312);
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
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 6319);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 6325);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6331);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 6337);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 6343);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 6349);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6355);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 2504U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 6U);
    t6 = (t0 + 6036U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, t8);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 1936U);
    t4 = (t0 + 2216U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(115, ng0);
    t17 = (10 * 1000LL);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, t17);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 6361);
    *((int *)t2) = 0;
    t3 = (t0 + 6365);
    *((int *)t3) = 6;
    t8 = 0;
    t18 = 6;

LAB8:    if (t8 <= t18)
        goto LAB9;

LAB11:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 2040U);
    std_textio_file_close(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1936U);
    std_textio_file_close(t2);
    xsi_set_current_line(140, ng0);

LAB15:    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 2896);
    t6 = (t0 + 2040U);
    t7 = (t0 + 2288U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2288U);
    t4 = (t0 + 1608U);
    t6 = *((char **)t4);
    t4 = (t0 + 6020U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1608U);
    t3 = *((char **)t2);
    t2 = (t0 + 3472);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t19 = *((char **)t7);
    memcpy(t19, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1488U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 25U);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1608U);
    t6 = *((char **)t4);
    memcpy(t5, t6, 16U);
    t4 = (t0 + 6020U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t5, t4, (unsigned char)0, 5);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 24);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t22, t4, 5U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 24;
    t19 = (t7 + 4U);
    *((int *)t19) = 20;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (20 - 24);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t22, t23, (unsigned char)0, 9);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 19);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t26, t4, 4U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 19;
    t19 = (t7 + 4U);
    *((int *)t19) = 16;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (16 - 19);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t26, t23, (unsigned char)0, 6);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 15);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t27, t4, 4U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 15;
    t19 = (t7 + 4U);
    *((int *)t19) = 12;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (12 - 15);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t27, t23, (unsigned char)0, 6);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 11);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t28, t4, 4U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 11;
    t19 = (t7 + 4U);
    *((int *)t19) = 8;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (8 - 11);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t28, t23, (unsigned char)0, 7);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 7);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t29, t4, 4U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 7;
    t19 = (t7 + 4U);
    *((int *)t19) = 4;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (4 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t29, t23, (unsigned char)0, 7);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 2216U);
    t4 = (t0 + 1488U);
    t6 = *((char **)t4);
    t9 = (24 - 3);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t4 = (t6 + t21);
    memcpy(t30, t4, 4U);
    t7 = (t23 + 0U);
    t19 = (t7 + 0U);
    *((int *)t19) = 3;
    t19 = (t7 + 4U);
    *((int *)t19) = 0;
    t19 = (t7 + 8U);
    *((int *)t19) = -1;
    t24 = (0 - 3);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t19 = (t7 + 12U);
    *((unsigned int *)t19) = t25;
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t30, t23, (unsigned char)0, 7);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2896);
    t3 = (t0 + 1936U);
    t4 = (t0 + 2216U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);

LAB10:    t2 = (t0 + 6361);
    t8 = *((int *)t2);
    t3 = (t0 + 6365);
    t18 = *((int *)t3);
    if (t8 == t18)
        goto LAB11;

LAB12:    t24 = (t8 + 1);
    t8 = t24;
    t4 = (t0 + 6361);
    *((int *)t4) = t8;
    goto LAB8;

LAB13:    xsi_set_current_line(145, ng0);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_0198845452_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0198845452_2372691052_p_0};
	xsi_register_didat("work_a_0198845452_2372691052", "isim/TB_MEMORIA_PROGRAMA_isim_beh.exe.sim/work/a_0198845452_2372691052.didat");
	xsi_register_executes(pe);
}
