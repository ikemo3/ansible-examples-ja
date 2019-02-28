FROM centos:7

RUN yum -y update && yum clean all
RUN yum -y install epel-release && yum clean all
RUN yum -y install openssh-clients python-pip && yum clean all
RUN pip install pip --upgrade
RUN pip install ansible

ENV TZ Asia/Tokyo

CMD ["/usr/sbin/init"]
