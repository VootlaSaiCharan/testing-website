FROM ubuntu:latest
LABEL project="testing-website"
LABEL Author="Charan"

WORKDIR /app
COPY . /app

RUN apt update
RUN apt install apache2

ENV debian_frontend=non-interactive

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

EXPOSE 80

VOLUME /var/apache/log/

ADD ./* /var/www/html
