# Based on phusion baseimage
FROM phusion/baseimage:0.9.16
MAINTAINER Andreas Ihrig (RoboMod) <mod.andy@gmx.de>

# Add config volume
VOLUME /etc/mysql/conf.d

# Add db volume
VOLUME /var/lib/mysql

# Use passenger-docker approach and scripts
ENV HOME /root
ADD . /build
RUN /build/scripts/install.sh

CMD ["/sbin/my_init"]

EXPOSE 3306