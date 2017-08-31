FROM ubuntu

ENV VAULT_VERSION=0.8.1

RUN apt-get update
RUN apt-get -y install vim ruby curl wget unzip

RUN wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip

ADD bin/provision /usr/bin/provision
RUN chmod +x /usr/bin/provision
CMD /usr/bin/provision
