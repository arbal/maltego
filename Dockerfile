FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update && apt-get install --no-install-recommends -y \
ca-certificates \
locales
apt-transport-https \
sudo \
tor \
privoxy \
xpdf \
gnupg \
pgpgpg \
dirmngr \
apt-utils \
xz-utils \
wget

ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

RUN echo 'deb https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
echo 'deb-src https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list && \
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

RUN mkdir -p /usr/share/man/man1

RUN apt-get update && apt-get install --no-install-recommends -y --allow-unauthenticated \
openjdk-8-jre \
openjdk-8-jre-headless \
ca-certificates-java \
maltego

RUN useradd -d /home/maltego -m maltego && \
passwd -d maltego && \
adduser maltego sudo

USER maltego

WORKDIR /home/maltego

RUN sudo rm -f /etc/privoxy/config && \
sudo rm -f /etc/tor/torcc && \
echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config && \
echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config && \
echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

RUN sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

CMD sudo service tor start && sudo service privoxy start && maltego
