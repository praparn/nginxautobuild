FROM labdocker/alpine:latest 
MAINTAINER Praparn Lueangphoonlap (eva10409@gmail.com) 
LABEL Description="NodeJS/NGINX Build Container" Version="1.1"
ENV NODE_VERSION=v4.3.0 NPM_VERSION=2.14.12
RUN apk update && \
    apk add nginx
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /usr/sbin
ENTRYPOINT ["nginx","-c","/etc/nginx/nginx.conf"]
EXPOSE 8080
