ARCH            := arm
KERNEL_SRC_DIR  := ../../linux-xlnx
CROSS_COMPILE := arm-linux-gnueabihf-

obj-m := udmabuf.o

all:
	make -C $(KERNEL_SRC_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(PWD) modules

clean:
	make -C $(KERNEL_SRC_DIR) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) M=$(PWD) clean

