docker run -it --rm -v $PWD:/myApp postor/ionic-android-build /myApp/build.sh

# docker run 运行镜像
# -t 申请伪终端
# -i 打开输入
# --rm 运行后删除
# -v ./:/myApp 映射当前目录到docker中的 /myApp目录
# postor/ionic-android-build 要运行的docker的名字
# /myApp/build.sh 在docker中运行的脚本
