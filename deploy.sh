#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成文档
yarn run build

# 进入生成的文件夹
cd docs/.vuepress/dist

msg="来自Github Actions的自动部署，更新于$(TZ=UTC-8 date "+%Y-%m-%d %H:%M:%S")"
# deploy to github
githubUrl=https://eduxplus_doc:${DOC_GITHUB_TOKEN}@github.com/trensy/eduxplus_doc.git

git config --global user.name "kaihui.wang"
git config --global user.email "hpuwang@gmail.com"

git init
git remote add origin $githubUrl
git add .
git commit -m "${msg}"
git push --set-upstream origin gh-pages --force

# 删除
cd -
rm -rf docs/.vuepress/dist