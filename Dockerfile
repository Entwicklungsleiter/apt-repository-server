FROM nginx:stable

COPY default.conf.template /etc/nginx/conf.d/

RUN mkdir -p /mnt/data
WORKDIR /mnt/data/

EXPOSE 80

CMD /bin/sh -c "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf \	
			&& nginx -g 'daemon off;'"
