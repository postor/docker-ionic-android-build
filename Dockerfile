#0.0.8 upgrade gradle

FROM postor/ionic-android-build:0.0.7

RUN set -x \
&& apt-get install -y software-properties-common \
&& sudo add-apt-repository ppa:cwchien/gradle -y \
& apt-get update -y \
&& apt upgrade gradle -y 
