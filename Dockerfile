FROM debian:buster-slim

MAINTAINER https://oda-alexandre.github.io

RUN apt-get update

RUN apt-get install --no-install-recommends -y ca-certificates apt-transport-https

RUN rm -rf /etc/apt/sources.list
RUN echo "deb https://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src https://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install --no-install-recommends -y --allow-unauthenticated sudo tor privoxy maltego firefox-esr xpdf libasound2 libgconf-2-4 libgtk2.0-0 libnotify4 libnss3 libxtst6

RUN apt-get --purge autoremove -y

RUN sudo rm -f /etc/privoxy/config
RUN sudo rm -f /etc/tor/torcc
RUN echo "listen-address localhost:8118" | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks5 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4 / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "forward-socks4a / localhost:9050 ." | sudo tee -a /etc/privoxy/config
RUN echo "SOCKSPort localhost:9050" | sudo tee -a /etc/tor/torcc

RUN useradd -d /home/maltego -m maltego
RUN passwd -d maltego
RUN adduser maltego sudo

USER maltego

CMD sudo service tor start && sudo service privoxy start && maltego
