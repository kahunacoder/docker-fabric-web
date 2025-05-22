FROM golang:latest

RUN go install github.com/danielmiessler/fabric@latest

RUN mkdir -p ~/.config/fabric

RUN mkdir /web && cd /web

RUN git clone https://github.com/danielmiessler/fabric.git /web

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y npm tailscale

RUN cd /web/web && npm install

COPY start.sh /start.sh

RUN chmod +x /start.sh

RUN sed -i -se 's/vite dev/vite dev --host/g' /web/web/package.json

CMD ["/start.sh"]
