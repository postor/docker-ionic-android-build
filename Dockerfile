FROM ubuntu:16.04

WORKDIR /

ADD ./* /

RUN set -x \
&& apt update \
&& apt install sudo openjdk-8-jdk gradle\
&& chmod +x *.sh \
&& ./install-node.sh \
&& ./install-android.sh 

CMD /myApp/build.sh