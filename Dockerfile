FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget sudo curl git

RUN wget https://raw.githubusercontent.com/openreplay/openreplay/main/scripts/helmcharts/openreplay-cli -O /bin/openreplay

RUN chmod +x /bin/openreplay

ENV DOMAIN_NAME=default

CMD ["sh", "-c", "openreplay -i $DOMAIN_NAME"]