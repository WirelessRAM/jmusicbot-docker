cp -n /config.txt /opt/config/config.txt
nohup java -Dnogui=true -Dconfig=/opt/config/config.txt -jar /jmusicbot.jar
