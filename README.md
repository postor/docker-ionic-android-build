# ionic android build

build your ionic to android with docker 

quick glance: https://www.youtube.com/watch?v=YNOBfE7Q1uo&list=PLM1v95K5B1ntVsYvNJIxgRPppngrO_X4s


## features

- java
- android sdk
- node npm yarn ionic
- gradle
- example app

## usage

- gitlab 

.gitlab-ci.yml

```
image: "postor/ionic-android-build"

build:
  script:
    - yarn 
    - ionic cordova build android

```

- shell

```
docker run --rm -v /your/app:/myApp postor/ionic-android-build ionic cordova build android
```

for latest ionic you can use an entry

```
#!/bin/bash
# update ionic
npm i ionic -g
# install packages
npm i
# build node
ionic build
# copy to android
npx cap copy android
# build apk
cd android && ./gradlew assembleDebug
```
