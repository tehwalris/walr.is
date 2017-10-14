FROM alpine:edge
RUN sed -i 's/dl-4/dl-5/g' /etc/apk/repositories
RUN apk --update add nginx gzip
RUN mkdir -p /run/nginx
RUN mkdir -p /srv
ADD nginx.conf /etc/nginx/nginx.conf
ADD dist /srv/http/
RUN gzip /srv/http/* -k
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
