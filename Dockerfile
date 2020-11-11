ARG ARCH=
FROM alpine
ENV TZ=Europe/Rome
ENV DOMAIN=changeme
ENV TOKEN=changeme
ENV HAIP=changeme
RUN mkdir /mattiols_reverse_proxy

WORKDIR /mattiols_reverse_proxy

RUN apk add --no-cache \
        bash \
        tzdata \
        python3 \
        py3-pip \
        openssl \
        nginx \
        certbot \
        certbot-nginx

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY run.sh /mattiols_reverse_proxy
COPY data/nginx.conf* /etc/nginx/
COPY data/check_cert.py /mattiols_reverse_proxy/
RUN chmod a+x /mattiols_reverse_proxy/run.sh

RUN pip3 install noipy

CMD [ "/mattiols_reverse_proxy/run.sh" ]
