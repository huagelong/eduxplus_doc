#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成文档
yarn run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 部署到Coding
echo "eduxplus.com" > CNAME
echo "www.eduxplus.com" >> CNAME
#echo "google.com, pub-4147143076931995, DIRECT, f08c47fec0942fa0" > ads.txt

msg="来自Github Actions的自动部署，更新于$(TZ=UTC-8 date "+%Y-%m-%d %H:%M:%S")"
codingUrl=https://${CODING_USER}:${CODING_TOKEN}@e.coding.net:banxian-01/eduxplus/eduxplus_home.git

git config --global user.name "kaihui.wang"
git config --global user.email "hpuwang@gmail.com"

git init
git remote add origin $codingUrl
git add -A
git commit -m "${msg}"
git push -f origin master

# 删除
cd -
rm -rf docs/.vuepress/dist