FROM node:lts-alpine
MAINTAINER Hongcai Deng <admin@dhchouse.com>

WORKDIR /forsaken-mail

RUN wget https://github.com/doublx01/mail/archive/master.zip -q -O /tmp/mail-master.zip \
    && tar zxf /tmp/mail-master.zip -C /tmp \
    && mv /tmp/mail-master/* /forsaken-mail \
    && rm /tmp/mail-master.zip \
    && npm install --production \
    && npm cache clean --force

EXPOSE 25
EXPOSE 3000
CMD ["npm", "start"]
