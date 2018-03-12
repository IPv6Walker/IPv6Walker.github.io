---
layout: post
comments: true
share: true
title: 機智上網系列 -- 全平臺指導
date: 2018-03-06 01:00:00
description: 機智上網全平臺簡略教程
tags: 
 - GFW
---

![](http://telegra.ph/file/5f50b256394538c51b452.jpg){: .center-image}

* TOC
{:toc}

---

## Shadowsocks / SS 

---

### Windows

Shadowsocks Windows 客戶端的單步指導請參考[這篇文章](http://test007.gq/ss-windows-cmd)

> [下載](http://www.wangzi.ml/ssr-download/ss-win.zip)，解壓，運行程序，導入節點：
 復制[這裏](http://telegra.ph/FreeNode-Share-12-31)的一個 SS 節點，然後右鍵小飛機 -- 從剪貼板導入  URL

---

### MacOS

> [下載](http://www.wangzi.ml/ssr-download/ss-mac.zip)，安裝，運行程序，小飛機上右鍵服務器列表子菜單的 `“從剪貼板復制地址”` 導入[這裏](http://telegra.ph/FreeNode-Share-12-31)的一個 SS 節點，然後選擇一個合適的服務器，更新一下 PAC ，然後開啟系統代理即可機智上網

---

### iOS

> 请在 app store 搜索 [Potatso Lite](https://itunes.apple.com/us/app/potatso-lite/id1239860606?mt=8) 下载。备用可使用 Superwingy.

---

### Android

> [下載](http://www.wangzi.ml/ssr-download/ss-android.apk)，然後安裝，復制[這裏](http://telegra.ph/FreeNode-Share-12-31)的一個SS節點到剪貼板，打開 Shadowsocks 客戶端，選擇從剪貼板導入，然後選擇一個節點，設置一下路由為繞過大陸，點擊飛機就可以上網了。

---

### 路由器

（以下命令中的節點信息需自行調整）

刷入[這個](http://www.right.com.cn/forum/thread-161324-1-1.html)固件，然後 SSH 登陸路由器，執行以下命令（導入普通端口）

>SSH command
{:.filename}
```bash
wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=1 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/cjYJgbhMEcc1uJt1?is_ss=1 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

或者這個單端口多用戶的

>SSH command
{:.filename}
```bash
wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=1 | bash && echo -e "\n0 */3 * * * wget -O- http://www.wangzi.ml/link/LX0uRDPJoWhgwAd6?is_ss=1 | bash\n">> /etc/storage/cron/crontabs/admin && killall crond && crond
```

執行完畢以後就可以到路由器的設置面板裏隨意選擇 Shadowsocks 服務器進行連接了。

---

## 各平臺軟件下載鏈接匯總

(ง •_•)ง (ง •_•)ง (ง •_•)ง (ง •_•)ง

[Shadowsocks-Windows](https://github.com/shadowsocks/shadowsocks-windows/releases)（Github主頁/更新中，[備用鏈接](http://www.wangzi.ml/ssr-download/ss-win.zip)）

[Shadowsocks-Android](https://github.com/shadowsocks/shadowsocks-android/releases)（Github主頁/更新中，[備用鏈接](http://www.wangzi.ml/ssr-download/ss-android.apk)）

[Shadowsocks-Mac](http://www.wangzi.ml/ssr-download/ss-mac.zip)

---

### 更多

1. 關於代理上網，請參考[機智上網](http://test007.gq/surf-the-real)
2. [Telegram 入門](http://test007.gq/Telegram)
3. [利用教育網 IPv6 實現免代理翻墻、大一斷網和夜間斷網破解](http://test007.gq/IPV6-edu)
4. [IPv6 節點獲取](http://test007.gq/IPV6-node)

---

**(●ˇ∀ˇ●) - (●ˇ∀ˇ●) - (●ˇ∀ˇ●)**

![](http://telegra.ph/file/266899c5402c9ebb14269.png){:.qrcode}

感謝每位聽衆，每個靈魂。

**(●ˇ∀ˇ●) - (●ˇ∀ˇ●) - (●ˇ∀ˇ●)**

---
