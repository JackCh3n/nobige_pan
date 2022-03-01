#!/bin/bash
country=$(curl -s https://api.tiiao.cn/country.php)
if [ $country = "cn" ]
then
    npm config set registry https://registry.npmjs.org/
    echo "npm images set tencent"
else
    npm config set registry http://mirrors.cloud.tencent.com/npm/
    echo "npm images set official"
fi