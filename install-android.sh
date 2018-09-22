# create sdk folder
export ANDROID_HOME=/opt/android-sdk-linux
sudo mkdir -p $ANDROID_HOME

# download android sdk
cd $ANDROID_HOME
sudo wget https://dl.google.com/android/repository/tools_r25.2.3-linux.zip
sudo unzip tools_r25.2.3-linux.zip
cd tools

# install all sdk packages
sudo ./android update sdk --no-ui

# set path
export PATH=${PATH}:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/25.0.2/
source /etc/profile