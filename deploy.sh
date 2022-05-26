#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.rongkangwen.cn' > CNAME
echo 'rongkangwen.github.io' >> README.md

if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:rongkangwen/rongkangwen.github.io.git
else
  msg='来自github actions的自动部署'
  githubUrl=https://rongkangwen:${GITHUB_TOKEN}@github.com/rongkangwen/rongkangwen.github.io.git
  git config --global user.name "rongkangwen"
  git config --global user.email "rongkangwen@outlook.com"
fi

git init
git add -A
git commit -m "${msg}"

# 如果发布到 https://<USERNAME>.github.io
git push -f $githubUrl master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
rm -rf docs/.vuepress/dist