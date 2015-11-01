FROM openfpgaduino/openfpgaduino
MAINTAINER Zhizhou Li <lzz@meteroi.com>
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/gcc/bin:/altera/14.1/quartus/bin:/altera/14.1/quartus/sopc_builder/bin
RUN git clone https://github.com/OpenFPGAduino/driver.git
RUN git clone https://github.com/OpenFPGAduino/linux.git
RUN cd linux; make clean; make ; cd ..
RUN cd driver; make clean; make
