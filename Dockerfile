FROM node:lts-alpine
MAINTAINER Hongcai Deng <admin@dhchouse.com>

WORKDIR /forsaken-mail

RUN wget https://github.com/doublx01/mail/archive/master.tar.gz -q -O /tmp/mail-master.tar.gz \
    && tar zxf /tmp/mail-master.tar.gz -C /tmp \
    && mv /tmp/mail-master/* /forsaken-mail \
    && rm /tmp/mail-master.tar.gz \
    && npm install --production \
    && npm cache clean --force

EXPOSE 25
EXPOSE 3000
CMD ["npm", "start"]
