FROM alpine:latest
RUN apk update
RUN apk upgrade -y
RUN apk add wget openjdk17-jre-headless -y
RUN wget -O /jmusicbot.jar https://github.com/jagrosh/MusicBot/releases/download/0.3.8/JMusicBot-0.3.8.jar
COPY config.txt /config.txt
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN mkdir /opt/config/
WORKDIR /opt/config/
ENTRYPOINT /run.sh

