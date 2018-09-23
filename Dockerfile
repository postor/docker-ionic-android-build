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
&& apt install gradle -y \
&& apt autoremove -y 

ENV ANDROID_HOME /opt/android-sdk-linux

WORKDIR /myApp

CMD /myApp/build.sh
