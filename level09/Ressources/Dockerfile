FROM kalilinux/kali-linux-docker
# Update
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get -y clean

# Install git
RUN apt-get install -y git

# Install zsh, oh-my-zsh and set it as default chell
RUN apt-get install -y zsh && wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# Install local config
COPY dotfiles/.config_locale_bennychou /root/.config_locale_bennychou
COPY dotfiles/.vimrc /root/.vimrc
COPY dotfiles/.zshrc /root/.zshrc

# Install tools and utils
RUN apt-get install -y vim
RUN apt-get install -y python
RUN apt-get install -y kali-linux-top10
RUN apt-get install -y binutils

# Install gdb-peda
RUN apt-get install -y gdb
RUN git clone https://github.com/longld/peda.git ~/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit
# Install radare2
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN git clone https://github.com/radareorg/radare2.git
RUN /radare2/sys/install.sh

ENTRYPOINT ["/bin/zsh"]
