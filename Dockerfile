FROM ubuntu:20.04
RUN wget -O /jmusicbot.jar https://github.com/jagrosh/MusicBot/releases/download/0.3.8/JMusicBot-0.3.8.jar
COPY config.txt /config.txt
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN mkdir /opt/config/
RUN apt update
RUN apt upgrade -y
RUN apt-get install default-jre-headless -y
WORKDIR /opt/config/
ENTRYPOINT /run.sh

