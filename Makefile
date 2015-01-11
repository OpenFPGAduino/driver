ifeq ($(KERNELRELEASE),)
KERNELDIR?= ../linux
PWD:=$(shell pwd)
#CFLAGS += $(DEBFLAGS) -Wall
#CFLAGS += -I$(LDDINC)
all: modules
modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	rm -rf *.o
	rm -rf *.ko
	rm -rf *.mod.c
	rm -rf modules.order Module.symvers
.PHONY:modules clean
else
	obj-m := openfpgaduino.o
    openfpgaduino-objs :openfpgaduino.o
endif
