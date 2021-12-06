FROM alpine:3.15.0
ADD server.jar /root/server.jar
ADD run.sh /root/run.sh
ADD server.properties /root/server.properties
ADD eula.txt /root/eula.txt
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add openjdk17-jre-headless
RUN chmod +x /root/run.sh
CMD /root/run.sh
