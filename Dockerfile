#0.0.9 upgrade sdk

FROM postor/ionic-android-build:0.0.8

RUN set -x \
&& cd /opt/android-sdk-linux/tools \
&& (while sleep 3; do echo "y"; done)|sudo ./android update sdk -u -a -t $(./android list sdk --no-ui --all | grep Build-tools | awk -F '-' '{print $1}' | paste -d',' -s | sed 's/ //g')

RUN npm i ionic -g
