#!/bin/bash
insmod pwm.ko timers=8,9,10 servo=0

#0x01 shenzhang
echo 0 > /dev/pwm8
echo 0 > /dev/pwm9
echo 100 > /dev/pwm10
sleep 20

#0x02 woquan
echo 0 > /dev/pwm8
echo 100 > /dev/pwm9
echo 0 > /dev/pwm10
sleep 20

#0x03 muzhihuisuo
echo 0 > /dev/pwm8
echo 100 > /dev/pwm9
echo 100 > /dev/pwm10
sleep 20

#0x04 muzhishenzhan
echo 100 > /dev/pwm8
echo 0 > /dev/pwm9
echo 0 > /dev/pwm10
sleep 20

#0x00 all-zero
echo 0 > /dev/pwm8
echo 0 > /dev/pwm9
echo 0 > /dev/pwm10
sleep 20

rmmod pwm
