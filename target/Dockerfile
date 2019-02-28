FROM centos/systemd

RUN yum -y update && yum clean all
RUN yum -y install openssh-server && yum clean all
RUN sed -ri 's/^#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
RUN passwd -d root

ENV TZ Asia/Tokyo

RUN /bin/systemctl enable sshd
EXPOSE 22
