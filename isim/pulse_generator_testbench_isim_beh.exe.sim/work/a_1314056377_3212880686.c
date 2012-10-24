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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/arya/Desktop/vhdl_fun/pulse_generator.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1314056377_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7600U);
    t7 = (t0 + 2568U);
    t8 = *((char **)t7);
    t7 = (t0 + 7632U);
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t8, t7);
    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    t2 = (t0 + 4864);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t7 = (t0 + 5008);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB3;

LAB5:    t2 = (t0 + 1312U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(64, ng0);
    t9 = (t0 + 5008);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    goto LAB9;

}

static void work_a_1314056377_3212880686_p_1(char *t0)
{
    char t7[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    t2 = (t0 + 4880);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t8 = (t0 + 7600U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t7, t9, t8, 1);
    t11 = (t7 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (28U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 5072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 28U);
    xsi_driver_first_trans_fast(t15);
    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_size_not_matching(28U, t13, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(74, ng0);
    t2 = xsi_get_transient_memory(28U);
    memset(t2, 0, 28U);
    t8 = t2;
    memset(t8, (unsigned char)2, 28U);
    t9 = (t0 + 5072);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 28U);
    xsi_driver_first_trans_fast(t9);
    goto LAB11;

}

static void work_a_1314056377_3212880686_p_2(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 7600U);
    t5 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t4, t3, 0);
    if (t5 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 5136);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);

LAB3:    t3 = (t0 + 4896);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng0);
    t11 = (t0 + 5136);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t1 = t14;
    goto LAB7;

LAB8:    t6 = (t0 + 1832U);
    t7 = *((char **)t6);
    t6 = (t0 + 7600U);
    t8 = (t0 + 2448U);
    t9 = *((char **)t8);
    t8 = (t0 + 7616U);
    t10 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t7, t6, t9, t8);
    t2 = t10;
    goto LAB10;

}

static void work_a_1314056377_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(87, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5200);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t11 = (t0 + 4912);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1314056377_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5264);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 28U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4928);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1314056377_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1314056377_3212880686_p_0,(void *)work_a_1314056377_3212880686_p_1,(void *)work_a_1314056377_3212880686_p_2,(void *)work_a_1314056377_3212880686_p_3,(void *)work_a_1314056377_3212880686_p_4};
	xsi_register_didat("work_a_1314056377_3212880686", "isim/pulse_generator_testbench_isim_beh.exe.sim/work/a_1314056377_3212880686.didat");
	xsi_register_executes(pe);
}
