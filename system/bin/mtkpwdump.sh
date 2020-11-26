#!/system/bin/sh
## ---------------------------------------------
#        MTK     wufangqi
#        V 3
## ---------------------------------------------
#misc/net
echo "------------script version:v3---------------" >> /data/misc/net/log.txt;
echo "MTK pwreport start!!!" >> /data/misc/net/log.txt;
echo "---------------------------------------------" >> /data/misc/net/log.txt;
cnt =0;
while ((1))
do
cnt=$(($cnt+1));

if (($cnt > "30010" ));then
cnt=$(($cnt-30000));
echo "Log Clear" > /data/misc/net/log.txt;
fi

date >> /data/misc/net/log.txt;

if (($cnt > "5" ));then
echo "APP" >> /data/misc/net/log.txt;
echo $(dumpsys activity MTKpwdump) >> /data/misc/net/log.txt;
fi

echo "CPU:"  >> /data/misc/net/log.txt;
cat /sys/devices/system/cpu/online  >> /data/misc/net/log.txt;
cat /proc/cpufreq/cpufreq_freqsum  >> /data/misc/net/log.txt;
echo "GPU:"  >> /data/misc/net/log.txt;
cat /proc/mali/utilization >> /data/misc/net/log.txt;
echo "BKL:"  >> /data/misc/net/log.txt;
cat /sys/class/leds/lcd-backlight/brightness >> /data/misc/net/log.txt;
cat /sys/power/sleepwake >> /data/misc/net/log.txt;
echo "DDR:"  >> /data/misc/net/log.txt;
cat /sys/bus/platform/drivers/emi_clk_test/read_dram_data_rate >> /data/misc/net/log.txt;
echo "BATSOC" >> /data/misc/net/log.txt;
cat /sys/class/power_supply/battery/capacity >> /data/misc/net/log.txt;
echo "BATV" >> /data/misc/net/log.txt;
cat /sys/class/power_supply/battery/batt_vol >> /data/misc/net/log.txt;
echo "BAT5MI" >> /data/misc/net/log.txt;
cat /sys/class/power_supply/battery/current_now >> /data/misc/net/log.txt;
echo "BATI" >> /data/misc/net/log.txt;
cat /sys/bus/platform/drivers/battery_meter/battery_meter/FG_Current >> /data/misc/net/log.txt;
echo "ThermPw:"  >> /data/misc/net/log.txt;
cat /proc/ppm/policy/thermal_cur_power >> /data/misc/net/log.txt;
sleep 10;
echo " " >> /data/misc/net/log.txt;

done















