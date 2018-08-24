---
layout: post
title: 免費的節點分享 / FreeNode Share
description: 分享快樂。
tags:
 - 機智上網
---

![](//telegra.ph/file/926d3c4d491a1feb577f4.jpg)

## 節點概念介紹

什麼是節點？

首先，你需要對 shadowsocks 這種網絡代理工具有[基本的了解](/ss-intro)，簡單來講，節點就是由 ss-server 端給出的驗證信息，形式上表現為一串鏈接，也可以手動進行配置。

鏈接形式示例

```yml
ss://YWVzLTEyOC1jZmI6WW91cnBhc3N3b3JkQFNlcnZlci5JUC5BZGRyZXNzOjQ0Mw==
```

二维码形式示例

![](//telegra.ph/file/0fbd372b92b0caa6cb3c5.png)


手動配置示例

```yml
Server Address: Server's Address
Server Port: 443
Password: Your_password
Encryption: aes-128-cfb
```

客戶端配置示例

![](//telegra.ph/file/1b4f99bac63edc758051f.jpg)

## 節點獲取方式

**IPv4 免費節點，用於通過 IPv4 協議翻牆（適用於不支持 IPv6 協議的童鞋）**

Google Hosts 項目維護的兩個公共 ss 節點及 Telegram socks5 代理

```
https://github.com/googlehosts/hosts/wiki/实验室
```

**IPv6 節點，用於破解夜間斷網和翻牆（適用於教育網用戶和 IPv6 用戶）**

經常使用 Shadowsocks 軟件的人可能知道，公共免費的 Shadowsocks 節點比較少，節點分享站多數從中國大陸無法直接訪問，而且這些站點本身並不提供 IPv6 節點。獲取 IPv6 節點的方法幾乎只有一條，就是購買國外支持 IPv6 的 VPS（遠程服務器）來自建 Shadowsocks server 端( 国内的vps绝大多数不支持ipv6，我们只能选用香港或境外的vps ). Bandwagon Host （搬瓦工 Host）是筆者親測並且已經使用兩年多的 VPS 提供商，這家廣受國人好評的 VPS Host 有極為簡單的上手面板，支持支付寶等購買方式，支持一鍵搭建 Shadowsocks server 端（購買後在操作面板一鍵點擊即可），價格十分優惠，OVZ 架構 / 支持三個 IPv6 / 月流量 1T 的 VPS 目前只需要 29.9 刀，戳 [這個鏈接](https://bwh1.net/aff.php?aff=28820) 進入。VPS 作為一臺遠程的服務器的作用遠遠不止作為 Shadowsocks server 端，本質上來說，VPS 就是一臺運行 Linux 系統的計算機，且大多數 VPS 有高速的 SSD 硬盤和寬帶，可以用來作為 Linux 學習機、搭建個人博客、搭建谷歌鏡像站來實現國內法訪問谷歌服務等等。如果你想要跳過購買服務器搭建 shadowsocks 服務的繁瑣步驟，直接獲取可用的 IPv6 節點，可以聯係 [安曇](//t.me/antakotaro)。

### Shadowsocks 系列

1. [Shadowsocks 簡介](/ss-intro)
2. [Shadowsocks 各平臺客戶端下載頁面](/ss-download)
3. [Shadowsocks 操作指導 -- Windows 篇](/ss-windows-cmd)
4. [Shadowsocks 操作指導 -- Linux 篇](/ss-linux-cmd)
5. [Shadowsocks 節點分享](/Free-node-share){:target="_self"}