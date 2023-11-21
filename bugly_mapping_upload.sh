#!/bin/zsh

appkey=xxxxxxxxxxxxxxxxxxx
appid=xxxxxxxxxxxxxxxxxxx
pkg=xxxxxxxxxxxxxxxxxxx

if [ ! -n "$1" ] ;then
  echo "请输入版本号"
  exit 1
fi
if [ ! -n "$2" ] ;then
  echo "请输入mapping文件路径"
  exit 1
fi

#版本
version=$1
#符号表文件路径
mappingFilePath=$2

echo "版本号: $version"
echo "mapping路径: $mappingFilePath"

java -jar buglyqq-upload-symbol.jar -appid $appid -appkey $appkey -bundleid $pkg -version $version -platform Android -inputMapping $mappingFilePath
