FROM centos:6.7
MAINTAINER Jason Hagglund <hagglundized@gmail.com>

RUN yum update -y && yum install -y epel-release
RUN yum install -y nano tcl git gcc make dkms kernel-devel fontconfig \
    freetype freetype-devel fontconfig-devel libstdc++ postgresql-libs postgresql-devel

RUN gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -L get.rvm.io | bash -s stable