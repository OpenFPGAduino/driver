openFPGAdunino Linux kernel driver module
============

Build the driver:
	
	make

On the target system mount debugfs if needed:

	mount -t debugfs none /sys/kernel/debug

Install module:

	copy the openfpgaduino.ko to the broad	
	rmmod openfpgaduino
	insmod openfpgaduino.ko

Check discovered subsystems:

	tree /sys/kernel/debug/openfpgaduino


Test the module
	copy the script and source file in the unit_test folder
		
	./fpga_config.sh xxx.rbf Test the fpga configuration


