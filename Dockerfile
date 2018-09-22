FROM ubuntu:16.04

WORKDIR /

ADD ./*.sh /
ADD ./myApp /myApp

RUN set -x \
&& apt update \
&& apt install sudo openjdk-8-jdk gradle wget unzip curl -y  \
&& chmod +x *.sh \
&& . ./install-node.sh \
&& npm i ionic cordova yarn -g \
&& . ./install-android.sh \
&& apt remove wget unzip  -y \
&& apt autoremove -y

WORKDIR /myApp

CMD /myApp/build.sh
