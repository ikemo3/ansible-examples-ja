FROM centos:7

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install openssh-clients python-pip
RUN pip install pip --upgrade
RUN pip install ansible

CMD ["/usr/sbin/init"]
