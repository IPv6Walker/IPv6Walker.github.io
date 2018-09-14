---
layout: post
title: Shadowsocks - Linux 篇
date: 2018-03-12
description: 
tags:
 - 機智上網
---

![](/media/files/WEBP/sl1.webp)

首先，戳 [這裏](//github.com/shadowsocks/shadowsocks-qt5/releases)下載 Shadowsocks-qt5

這是一款 Shadowsocks 在 Linux 平臺的 GUI 客戶端。

下面先展示一下在 elementaryOS 的操作步驟，因為會比 Ubuntu 多一個賦權的環節。

## ElementaryOS 下的操作步驟

下載完成後，右鍵點擊 Shadowsocks-Qt5-3.0.0-x86_64.AppImage，選擇 `屬性` --> `權限`

可以看到，這裏的軟件權限值是  `-664`  (●'◡'●)

![](/media/files/WEBP/sl2.webp)

![](/media/files/WEBP/sl3.webp)

將所有者、群組、任何人的執行權限勾選上，下方顯示權限值為 `-777`

![](/media/files/WEBP/sl4.webp)

點擊關閉，然後右鍵點擊 Shadowsocks-Qt5，點擊 `運行` / 或者直接雙擊軟件運行 （￣︶￣）↗

![](/media/files/WEBP/sl5.webp)

剛進入是沒有配置信息的  (+_+)?

這時候我們首先要有節點，也就是 [這裏](/ss-intro) 所說的 server 端給出的配置信息啦

於是，我們先進入 [Free node share](/Free-node-share) 獲取一個節點

獲取成功之後，我們現在把它導入到 Shadowsocks-Qt5 中。

如果你獲取的是直接的配置信息，你需要手動的把配置信息輸入。

**手動配置示例**

```yml
Server Address: Server's Address
Server Port: 443
Password: Your_password
Encryption: aes-128-cfb
```

![](/media/files/WEBP/sl6.webp)

![](/media/files/WEBP/sl7.webp)

如果你獲取到的是一個二維碼，你也可以通過掃描屏幕中的二維碼來導入節點。

![](/media/files/WEBP/sl8.webp)

![](/media/files/WEBP/sl9.webp)

測試一下延遲 \\(￣︶￣*\\))

![](/media/files/WEBP/sl10.webp)

OK. 這樣我們就完成了 ElementaryOS 系統的翻墻大任了。 ✌

## Ubuntu 下的操作步驟

如果你有關註 linux 發行版的話，你會發現，elementaryOS 其實是基於 Ubuntu 開發的，所以在 Ubuntu 下的翻墻操作跟上面基本是一致的2333，只是在 Ubuntu 系統我們不需要給 Shadowsocks-Qt5 賦權就能夠直接雙擊軟件運行呢。

![](/media/files/WEBP/sl11.webp)

大功告成！測試一下... d=====(￣▽￣*)b

**Google**

![](/media/files/WEBP/sl12.webp)

### Shadowsocks 系列

1. [Shadowsocks 簡介](/ss-intro)
2. [Shadowsocks 各平臺客戶端下載頁面](/ss-download)
3. [Shadowsocks 操作指導 -- Windows 篇](/ss-windows-cmd)
4. [Shadowsocks 操作指導 -- Linux 篇](/ss-linux-cmd){:target="_self"}
5. [Shadowsocks 節點分享](/Free-node-share)
{:.poem}
