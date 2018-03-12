---
layout: post
comments: true
share: true
title: Shadowsocks 系列 -- Linux 操作指导
date: 2018-03-12 23:00:00
description: 
tags:
 - ss
 - 操作指导
---

![](http://telegra.ph/file/901fff5e3b7611cfeb4d7.png)

---

首先，戳[这里](https://github.com/shadowsocks/shadowsocks-qt5/releases)下载 Shadowsocks-qt5

这是一款 Shadowsocks 在 Linux 平台的 GUI 客户端。

项目主页地址戳：[这儿](https://github.com/shadowsocks/shadowsocks-qt5)

下面先展示一下在 elementaryOS 的操作步骤，因为会比 Ubuntu 多一个赋权的环节。

---

> ElementaryOS 操作步骤

下载完成后，右键点击 Shadowsocks-Qt5-3.0.0-x86_64.AppImage，选择 `属性` --> `权限`

可以看到，这是的软件权限值是 ` -664`  (●'◡'●)

![](http://telegra.ph/file/74c61dcd8c50a7be3f247.png)

![](http://telegra.ph/file/35b56c759d32055d655c7.png)

---

将所有者、群组、任何人的执行权限勾选上，下方显示权限值为 `-777`

![](http://telegra.ph/file/8f74aa3837e397ff411b7.png)

---

点击关闭，然后右键点击 Shadowsocks-Qt5，点击 `运行` / 或者直接双击软件运行 （￣︶￣）↗

![](http://telegra.ph/file/963355656b33becd9b3af.png)

---

刚进入是没有配置信息的  (+_+)?

这时候我们首先要有节点，也就是[这里](http://test007.gq/ss-intro)所说的 ss-server 给出的配置信息啦

于是，我們先進入 [Free node share](http://test007.gq/Free-node-share) 獲取一個節點

获取成功之后，我们现在把它导入到 Shadowsocks-Qt5 中。

如果你获取的是直接的配置信息，你需要手动的把配置信息输入。

> 手動配置示例
{:.filename}
```yml
Server Address: Server's IPv6 Address
Server Port: 443
Password: Your_password
Encryption: aes-128-cfb
```

![](http://telegra.ph/file/2c0eb252cf6923009e033.png)

![](http://telegra.ph/file/b5d72ff66cdfd48a274cd.png)

---

如果你获取到的是一个二维码，你可以选择扫描屏幕中的二维码。

![](http://telegra.ph/file/722f17ee6140bd538feeb.png)

![](http://telegra.ph/file/8691fcfa0a47b716faaa1.png)

---

测试一下延迟 \\(￣︶￣*\\))

![](http://telegra.ph/file/f4dfd75086d091263da0d.png)

OK. 这样我们就完成了 ElementaryOS 系统的翻墙大任了。 ✌

---

> Ubuntu 操作

如果你有关注 linux 发行版的话，你会发现，elementaryOS 其实是基于 Ubuntu 开发的，所以在 Ubuntu 下的翻墙操作跟上面基本是一致的2333，只是在 Ubuntu 系统我们不需要给 Shadowsocks-Qt5 赋权就能够直接双击软件运行呢。

---

大功告成！測試一下... d=====(￣▽￣*)b

> Google

![](http://telegra.ph/file/ad4de590c8a650a662ba9.png)

> Youtube

![](http://telegra.ph/file/6d948d793ed07745bcc2d.png)

> Twitter

![](http://telegra.ph/file/789bcc8293cf9d40cf0d6.png)

---

更多關於 ss ->

1. [Shadowsocks 簡介](http://test007.gq/ss-intro)
2. Shadowsocks 各平臺客戶端[下載頁面](http://test007.gq/ss-download)
3. Shadowsocks Windows 客戶端的單步指導請參考[這篇文章](http://test007.gq/ss-cmd)

---

### More Blogs

1. 關於代理上網，請參考[機智上網](http://test007.gq/surf-the-real)
2. [Telegram 入門](http://test007.gq/Telegram)
3. [利用教育網 IPv6 實現免代理翻墻、大一斷網和夜間斷網破解](http://test007.gq/IPV6-edu)
4. [IPv6 節點獲取](http://test007.gq/IPV6-node)

---

**(。・∀・)ノ - (。・∀・)ノ - (。・∀・)ノ**

![](http://telegra.ph/file/266899c5402c9ebb14269.png){:.qrcode}

感謝每位聽衆，每個靈魂。

**(。・∀・)ノ - (。・∀・)ノ - (。・∀・)ノ**

---