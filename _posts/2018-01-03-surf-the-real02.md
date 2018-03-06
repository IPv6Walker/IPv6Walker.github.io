---
layout: post
comments: true
share: true
title: AgGFW0.2.0
description: 机智上网全平台简略教程
tags: 
 - Collection
 - SmartConnet
---

![](http://telegra.ph/file/5f50b256394538c51b452.jpg){: .center-image}

* TOC
{:toc}

## SHADOWSOCKS / SS  #

o(*￣▽￣*)o o(*￣▽￣*)o o(*￣▽￣*)o o(*￣▽￣*)o

**SS START-->**  #

### Windows  #

> [下载](http://www.wangzi.ml/ssr-download/ss-win.zip)，解压，运行程序，导入节点：
 复制[这里](http://telegra.ph/FreeNode-Share-12-31)的一个 SS 节点，然后右键小飞机 -- 从剪贴板导入  URL
 下载 [pac.txt](http://goingsoft-1251132334.cosgz.myqcloud.com/pac.txt)放置到软件目录，即可开启 pac 模式


### MacOS  #

> [下载](http://www.wangzi.ml/ssr-download/ss-mac.zip)，安装，运行程序，小飞机上右键服务器列表子菜单的 “从剪贴板复制地址” 导入[这里](http://telegra.ph/FreeNode-Share-12-31)的一个 SS 节点，然后选择一个合适的服务器，更新一下 PAC ，然后开启系统代理即可机智上网

### iOS  #

推荐下载 SuperWIngy, AppStore 搜索下载即可。

### Android  #

[下载](http://www.wangzi.ml/ssr-download/ss-android.apk)，再[下载](http://www.wangzi.ml/ssr-download/ss-android-obfs.apk)（这个是插件，用来添加混淆功能），然后安装，复制[这里](http://telegra.ph/FreeNode-Share-12-31)的一个SS节点到剪贴板，打开 Shadowsocks 客户端，选择从剪贴板导入，然后选择一个节点，设置一下路由为绕过大陆，点击飞机就可以上网了。

### 路由器  #

（以下命令中的节点信息需自行调整）

刷入[这个](http://www.right.com.cn/forum/thread-161324-1-1.html)固件，然后 SSH 登陆路由器，执行以下命令（导入普通端口）

>SSH command
{:.filename}
```bash
wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=1 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=1 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

或者这个单端口多用户的

>SSH command
{:.filename}
```bash
wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=1 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=1 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

执行完毕以后就可以到路由器的设置面板里随意选择 Shadowsocks 服务器进行连接了。

**<-- SS END**

## SHADOWSOCKSR / SSR ---->>

(●ˇ∀ˇ●) (●ˇ∀ˇ●) (●ˇ∀ˇ●) (●ˇ∀ˇ●) (●ˇ∀ˇ●)

### Windows

> [下载](http://www.wangzi.ml/ssr-download/ssr-win.7z)，解压，运行程序，导入节点：
 复制[这里](http://telegra.ph/FreeNode-Share-12-31)的一个 SSR 节点到剪贴板，然后右键小飞机 -- 从剪贴板复制地址

### MacOS

> [下载](http://www.wangzi.ml/ssr-download/ssr-mac.dmg)，安装，运行程序，小飞机上右键服务器列表子菜单的 “从剪贴板复制地址” 导入[这里](http://telegra.ph/FreeNode-Share-12-31)的一个 SSR 节点，然后选择一个合适的服务器，更新一下 PAC ，然后开启系统代理即可机智上网。

### iOS  ##

> 推荐下载 SuperWingy, AppStore 搜索下载即可。

### Android  ##

> [下载](http://www.wangzi.ml/ssr-download/ssr-android.apk)，安装，然后复制[这里](http://telegra.ph/FreeNode-Share-12-31)的一个SSR节点到剪贴板，打开 ShadowsocksR 客户端，选择从剪贴板导入，然后路由选择绕过大陆，右上角开启就可以上网了。同时提供一个[ ACL 地址](http://www.wangzi.ml/link/Gmbyj1WcUjXSuemi)，长按复制地址到客户端里应用即可。

### 路由器  ##

> （以下命令中的节点信息需自行调整）
 刷入[这个](http://www.right.com.cn/forum/thread-161324-1-1.html)固件，然后 SSH 登陆路由器，执行以下命令（导入普通端口）

>SSH command
{: .filename}
```bash
wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=0 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=0 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

> 或者这个单端口多用户的

>SSH command
{:.filename}
```bash
wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=0 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=0 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

> 执行完毕以后就可以到路由器的设置面板里随意选择 Shadowsocks 服务器进行连接了。

**<--SSR END**  ##

## 各平台软件下载链接汇总

(ง •_•)ง (ง •_•)ง (ง •_•)ง (ง •_•)ง

[Shadowsocks-Windows](https://github.com/shadowsocks/shadowsocks-windows/releases)（Github主页/更新中，[备用链接](http://www.wangzi.ml/ssr-download/ss-win.zip)）

[ShadowsocksR-Windows](http://www.wangzi.ml/ssr-download/ssr-win.7z)

[Shadowsocks-Android](https://github.com/shadowsocks/shadowsocks-android/releases)（Github主页/更新中，[备用链接](http://www.wangzi.ml/ssr-download/ss-android.apk)）

[ShadowsocksR-Android](http://www.wangzi.ml/ssr-download/ssr-android.apk)

[Shadowsocks-Mac](http://www.wangzi.ml/ssr-download/ss-mac.zip)

[ShadowsocksR-Mac](http://www.wangzi.ml/ssr-download/ssr-mac.dmg)

### 更多

1. 关于代理上网，请参考[機智上網](http://test007.gq/surf-the-real)
2. [Telegram 入门](http://test007.gq/Telegram)
3. [利用教育網 IPv6 實現免代理翻墻、大一斷網和夜間斷網破解](http://test007.gq/IPV6-edu)
4. [IPv6 節點獲取](http://test007.gq/IPV6-node)

(●ˇ∀ˇ●) - (●ˇ∀ˇ●) - (●ˇ∀ˇ●) - (●ˇ∀ˇ●) - (●ˇ∀ˇ●)