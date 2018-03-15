---
layout: post
comments: true
share: true
title: IPv6 系列 -- 釋放教育網 IPv6 的潛能
date: 2018-03-15 15:09:00
description: 條件-教育網/IPv6支持;效果-無縫訪問GFWlist
tags: 
 - IPv6
---

![](http://telegra.ph/file/a24811d539183e435b271.jpg){:.center-image}*IPv6-Youtube*

修改 IPv6 DNS, 戳 [這篇教程](http://test007.gq/IPV6-cmd).

---

修改 Hosts 文件:

進入目錄: `C:\Windows\System32\drivers\etc`

管理員權限打開 hosts 文件 ( 推薦用 VScode 編輯器 )

複製 [這裏](https://raw.githubusercontent.com/lennylxx/ipv6-hosts/master/hosts) 的内容 ( `ctrl`{:.key} + `A`{:.key} --> `ctrl`{:.key} + `c`{:.key} 複製全部内容, 然後 `ctrl`{:.key} + `v`{:.key} 粘貼到 hosts 文件裏面 )

---

刷新本地 DNS 緩存 ( `win`{:.key} + `R`{:.key} 打開運行程序, 輸入 `cmd` 打開命令行程序, 再敲入命令: `ipconfig /flushdns` 即可 )

清除瀏覽器 cookies ( 示例: 打開 Chrome, 按下快捷鍵 `ctrl`{:.key} + `shift`{:.key} + `Delete`{:.key} , 選擇 `清除 cookie 及其他網站數據` 即可 )

---

OK. 嘗試訪問 [Google](https://www.google.com.hk) / [Youtube](https://www.youtube.com/) / [Twitter](https://twitter.com/) / [Wikipedia](https://www.wikipedia.org/). 

---

筆者在嘗試訪問推特的時候遭到了拒絕, 經排查發現, 上面的 hosts 文件裏面, 對應 twitter 的項目解析出來的是 IPv4 的地址, 在 cmd 界面 `ping` 不通, 所以無法訪問. 不過不用擔心, 因爲我們前面已經修改過 DNS, 所以這時候把 hosts 文件裏面對應 twitter 的解析修改一下就可以了. 修改方法: 首先打開 hosts 文件( 打開方法在上面, 記得要用管理員權限 ), 然後按下 `ctrl`{:.key} + `f`{:.key} 開啓文本搜索, 輸入 twitter, 可以找到 twitter 的條目, 將解析為 IPv4(形式: 104.244.42.193 twitter.com )的條目刪掉, 按 `ctrl`{:.key} + `s`{:.key} 快捷鍵保存. 到這一步可能已經可以正常訪問 twitter 了. 你也可以嘗試一下手動修改 hosts 文件的解析, 在 cmd 命令行程序裏面輸入 `ping twitter.com`, 這時候解析出來的 IP 地址應該是 IPv6 形式的, 按照 `240c:f:1:4000:9999 twitter.com` 加入到 hosts 文件中即可.

當然, 在穩定性上這種方法仍有很大的幾率遭遇訪問失敗, 而且支持 ipv6 的網站仍在少數.