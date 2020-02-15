FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y binutils
RUN apt install -y gdb
RUN apt install -y git
RUN apt install -y python
RUN apt install -y vim
RUN git clone https://github.com/longld/peda.git /tmp/peda
RUN echo "source /tmp/peda/peda.py" >> /root/.gdbinit
RUN apt install -y git
RUN apt install -y python
RUN apt install -y make
RUN apt install -y gcc
RUN git clone https://github.com/radareorg/radare2.git
RUN /radare2/sys/install.sh
