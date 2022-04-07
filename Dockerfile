FROM ubuntu:20.04
COPY JMusicBot-0.3.8.jar /jmusicbot.jar
RUN mkdir /opt/jmusicbot/
#COPY config.txt /config.txt
#RUN cp /config.txt /opt/jmusicbot
RUN apt update
RUN apt upgrade -y
RUN apt-get install default-jre-headless -y
WORKDIR /opt/jmusicbot/
#CMD ["/bin/bash"]
CMD ["java", "-Dconfig=/opt/jmusicbot/config.txt", "-Dnogui=true", "-jar", "/jmusicbot.jar"]

#docker run -it jbot /bin/bash
