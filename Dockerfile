FROM ubuntu:xenial
MAINTAINER chrsimpson
ADD tacacs-F4.0.4.28.tar.gz /tmp/
ADD tac_plus.conf /etc/
ADD do_auth.ini /etc/
ADD do_auth.py /usr/local/sbin/
RUN apt-get update && apt-get install -y \
gcc \
make \
flex \
bison \
libwrap0-dev \
libpam-dev \
python-mysql.connector \
vim \
net-tools \
ssh \
wget \
libproc-daemon-perl
RUN cd /tmp/tacacs-F4.0.4.28; ./configure; make install; echo "include /etc/ld.so.conf.d/*.conf /usr/local/lib" > /etc/ld.so.conf; ldconfig
LABEL release_notes="NetSec test release"
EXPOSE 49 22
CMD ["/usr/local/sbin/tac_plus", "-C", "/etc/tac_plus.conf", "-G", "-t"]

