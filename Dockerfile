#0.0.9 upgrade sdk

FROM postor/ionic-android-build:0.0.8

RUN set -x \
&& cd /opt/android-sdk-linux/tools \
&& (while sleep 3; do echo "y"; done)|sudo ./android update sdk --no-ui --all --filter tool
