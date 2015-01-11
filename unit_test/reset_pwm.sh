echo 0x03030300 > /sys/kernel/debug/openfpgaduino/power
echo 0xFFFFFFFF > /sys/kernel/debug/openfpgaduino/gpio1/doe
PWMDIR=/sys/kernel/debug/openfpgaduino

LIST=`find $PWMDIR -name "pwm*"`

for PWM in $LIST
do
	echo 0x0 > $PWM/reset
	echo 0x0 > $PWM/dtyc
	echo 0x0 > $PWM/gate
done
