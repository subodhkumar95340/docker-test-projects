FROM centos

RUN yum -y install passwd

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN rm /run/nologin

RUN yum -y install mysql

RUN yum update -y && \
    yum install python2 -y && \
    yum install epel-release -y && \
    yum install python2-pip -y && \
    yum -y install awscli  && \
    aws --version

RUN yum update -y && \
    yum install httpd -y 


RUN ssh-keygen -A


CMD /usr/sbin/sshd -D
