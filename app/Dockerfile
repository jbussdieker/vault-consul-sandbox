FROM ubuntu
RUN apt-get update
RUN apt-get -y install vim ruby curl
ADD bin/provision /usr/bin/provision
RUN chmod +x /usr/bin/provision
CMD /usr/bin/provision
