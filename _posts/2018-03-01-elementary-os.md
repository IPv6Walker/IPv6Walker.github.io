---
layout: post
title: ElementaryOS 部署笔记
date: 2018-03-01
description: 上手 elementary OS 的几个重要配置
tags: 
 - 教程
---
 
![](/media/files/WEBP/eleos.webp)

<!--more-->

```bash
# software-properties-common
sudo apt install -y python-software-properties  software-properties-common
sudo apt update

# 中文输入法 fcitx
sudo apt-get install fcitx fcitx-config-gtk fcitx-googlepinyin
# 配置输入法为 fcitx
im-config

# 安装 elementary-tweaks 以调整主题和样式
# 安装完要重启系统，然后在应用程序栏快捷方式进入即可
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks

# git
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

# Miniconda环境部署
# 下载Miniconda并安装
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
# Restart your terminal

# Shadowsocks-qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5

# 从[这里](https://www.google.com/chrome/)下载 Chrome 包，如果无法科学上网请戳[这里](https://get.js.org/chrome)下载
# 如果可以正常访问 google 的话可以直接用命令下载 chrome 包
wget https://dl.google.com/Linux/direct/google-chrome-stable_current_amd64.deb
# 安装相关依赖
sudo apt-get install libappindicator1 libindicator7  
# 解chrome包和补充依赖安装
sudo dpkg -i google-chrome-stable_current_amd64.deb   
sudo apt-get -f install  

# zsh oh-my-zsh框架
sudo apt install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# 以Docker建置PHP/Laravel開發環境：https://ithelp.ithome.com.tw/articles/10194127
```

安装 Tweakstool 和 Paper 主题后的效果：

![](/media/files/WEBP/ele2.webp)

![](/media/files/WEBP/ele3.webp)

安装 Telegram desktop 后，可以看到，Telegram 做到了惊人的全 PC 客户端版本同步：

![](/media/files/WEBP/ele4.webp)

Chrome Browser：

![](/media/files/WEBP/ele5.webp)