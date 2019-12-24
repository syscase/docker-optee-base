FROM archlinux/base
LABEL version="0.1.0" 

RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist

COPY setup/bootstrap /root/setup/bootstrap
COPY setup/strict-mode.sh /root/setup/strict-mode.sh

RUN PYTHON_ALIAS=n /root/setup/bootstrap

USER syscase
WORKDIR /home/syscase
