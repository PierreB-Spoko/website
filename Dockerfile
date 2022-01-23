FROM debian:stretch-slim

RUN apt-get update

RUN apt-get install -y git-all

RUN apt-get install -y nginx

WORKDIR /var/www/html/

RUN git clone https://github.com/PierreB-Spoko/website.git

RUN mv website/* .

EXPOSE 8001

CMD ["nginx", "-g", "daemon off;"]