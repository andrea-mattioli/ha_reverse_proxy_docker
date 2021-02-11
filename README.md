# Reverse Proxy for DuckDns
Are you tired of having to use https also local ip addresses?
THIS ADDON IS FOR YOU!

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

[![Sponsor Mattiols via GitHub Sponsors](https://raw.githubusercontent.com/andrea-mattioli/bticino_X8000_rest_api/test/screenshots/sponsor.png)](https://github.com/sponsors/andrea-mattioli)

🍻 [![Sponsor Mattiols via paypal](https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_37x23.jpg)](http://paypal.me/mattiols)


## 1. First step

### 1.1. Register a DUCKDNS account
Sign up for a new account website (https://www.duckdns.org/).

### 1.2. Add your domain and get your token

![Alt text](https://github.com/andrea-mattioli/bticino_X8000_rest_api/raw/test/screenshots/register_duck.PNG?raw=true "App Register")

## 2. CONFIGURATION

### 2.1. Get your Docker image from docker hub https://hub.docker.com/repository/docker/amattioli2/ha_reverse_proxy
example: docker pull amattioli2/ha_reverse_proxy:amd64 (change tag with your correct arch)
you can run this container with docker run or docker compose:
```
docker run \
-p 80:80 \
-p 443:443 \
-v /HA/ssl:/ssl:rw 
-e TZ='Europe/Rome'
-e TOKEN='duckDNS token'
-e DOMAIN='my home domain example.duckdns.org'
-e HAIP='my ha local ip (192.168.1.x)'
--name amattioli2/ha_reverse_proxy:amd64
```
### 2.2. Nat API port: "80,443" on your router/firewall on your Docker server address

## 3. START

