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
static const char *ng0 = "C:/Users/arya/Documents/GitHub/tesla-osc/pulse_aggregator.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_4058165771_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3242033172_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = xsi_get_transient_memory(13U);
    memset(t1, 0, 13U);
    t2 = t1;
    memset(t2, (unsigned char)2, 13U);
    t3 = (t0 + 5504);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 13U);
    xsi_driver_first_trans_delta(t3, 0U, 13U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3242033172_3212880686_p_1(char *t0)
{
    char t17[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = (unsigned char)0;

LAB19:    if (t2 == 1)
        goto LAB14;

LAB15:    t1 = (unsigned char)0;

LAB16:    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t1 = *((unsigned char *)t4);
    t2 = (t1 == (unsigned char)3);
    if (t2 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 5696);
    t4 = (t3 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB23:    t3 = (t0 + 5408);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(96, ng0);
    t11 = (t0 + 5568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB3;

LAB5:    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t8 = (t0 + 9364U);
    t10 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t9, t8, 0);
    t1 = t10;
    goto LAB7;

LAB8:    t3 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t3);
    t2 = t7;
    goto LAB10;

LAB11:    xsi_set_current_line(99, ng0);
    t8 = (t0 + 1992U);
    t11 = *((char **)t8);
    t8 = (t0 + 9380U);
    t12 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t11, t8, 1);
    t13 = (t17 + 12U);
    t18 = *((unsigned int *)t13);
    t19 = (1U * t18);
    t20 = (28U != t19);
    if (t20 == 1)
        goto LAB20;

LAB21:    t14 = (t0 + 5632);
    t15 = (t14 + 56U);
    t21 = *((char **)t15);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t12, 28U);
    xsi_driver_first_trans_fast(t14);
    goto LAB12;

LAB14:    t8 = (t0 + 1832U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t16 = (t10 == (unsigned char)3);
    t1 = t16;
    goto LAB16;

LAB17:    t3 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t3);
    t2 = t7;
    goto LAB19;

LAB20:    xsi_size_not_matching(28U, t19, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(102, ng0);
    t3 = (t0 + 1992U);
    t8 = *((char **)t3);
    t3 = (t0 + 9380U);
    t6 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t8, t3, 0);
    if (t6 == 1)
        goto LAB28;

LAB29:    t5 = (unsigned char)0;

LAB30:    if (t5 != 0)
        goto LAB25;

LAB27:    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 9380U);
    t8 = (t0 + 3368U);
    t9 = *((char **)t8);
    t8 = (t0 + 9316U);
    t2 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t3, t9, t8);
    if (t2 == 1)
        goto LAB33;

LAB34:    t1 = (unsigned char)0;

LAB35:    if (t1 != 0)
        goto LAB31;

LAB32:    xsi_set_current_line(112, ng0);
    t3 = (t0 + 5696);
    t4 = (t3 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB26:    xsi_set_current_line(114, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 9380U);
    t8 = (t0 + 3608U);
    t9 = *((char **)t8);
    t8 = (t0 + 9348U);
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t3, t9, t8);
    if (t1 != 0)
        goto LAB39;

LAB41:
LAB40:    goto LAB23;

LAB25:    xsi_set_current_line(103, ng0);
    t14 = (t0 + 5696);
    t15 = (t14 + 56U);
    t21 = *((char **)t15);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB26;

LAB28:    t9 = (t0 + 1992U);
    t11 = *((char **)t9);
    t9 = (t0 + 9380U);
    t12 = (t0 + 3368U);
    t13 = *((char **)t12);
    t12 = (t0 + 9316U);
    t7 = ieee_p_3620187407_sub_4058165771_3965413181(IEEE_P_3620187407, t11, t9, t13, t12);
    t5 = t7;
    goto LAB30;

LAB31:    xsi_set_current_line(105, ng0);
    t15 = (t0 + 1672U);
    t21 = *((char **)t15);
    t15 = (t0 + 9364U);
    t6 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t21, t15, 0);
    if (t6 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 5696);
    t4 = (t3 + 56U);
    t8 = *((char **)t4);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB37:    goto LAB26;

LAB33:    t11 = (t0 + 1992U);
    t12 = *((char **)t11);
    t11 = (t0 + 9380U);
    t13 = (t0 + 3488U);
    t14 = *((char **)t13);
    t13 = (t0 + 9332U);
    t5 = ieee_p_3620187407_sub_4058165771_3965413181(IEEE_P_3620187407, t12, t11, t14, t13);
    t1 = t5;
    goto LAB35;

LAB36:    xsi_set_current_line(106, ng0);
    t22 = (t0 + 5696);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB37;

LAB39:    xsi_set_current_line(115, ng0);
    t11 = (t0 + 5568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(116, ng0);
    t3 = xsi_get_transient_memory(28U);
    memset(t3, 0, 28U);
    t4 = t3;
    memset(t4, (unsigned char)2, 28U);
    t8 = (t0 + 5632);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 28U);
    xsi_driver_first_trans_fast(t8);
    goto LAB40;

}

static void work_a_3242033172_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(123, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5760);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 28U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5424);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3242033172_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3242033172_3212880686_p_0,(void *)work_a_3242033172_3212880686_p_1,(void *)work_a_3242033172_3212880686_p_2};
	xsi_register_didat("work_a_3242033172_3212880686", "isim/pulse_aggregator_testbench_isim_beh.exe.sim/work/a_3242033172_3212880686.didat");
	xsi_register_executes(pe);
}
