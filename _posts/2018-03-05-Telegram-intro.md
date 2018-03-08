---
layout: post
comments: true
share: true
title: Telegram -- 真正定義即時通訊
date: 2018-03-05 05:00:00
description: 關於 Telegram
tags: 
 - Telegram
---

![](http://telegra.ph/file/958656d743da04054795f.png)*telegram*

* TOC
{:toc}

## \# Telegram -- 真正定義即時通訊 / 轉載

[Telegram](https://telegram.org/) 是一款 [開源](https://telegram.org/apps#source-code) 且跨平臺的 IM 工具（類似 Whatsapp、Messenger、微信），是我用過所有同類軟件中用戶體驗最好的一個，同時我也是 Telegram 重度用戶和開發者。當然，這麼好用的工具在天朝是難以訪問的。

Telegram 創始人 Pavel Durov 被稱為“俄羅斯的紮克伯格”，因為他曾創建了俄羅斯最受歡迎的社交網站 VKontakte。Telegram 完全由私人擁有，沒有其他股東和投資人，並號稱永遠不會出售。

2013 年，Facebook 、 Skype 、微軟、蘋果公司和雅虎被曝參與美國國家安全局實施的“棱鏡”項目，引起一片嘩然；2014 年，在 Facebook 宣布收購 Whatsapp 後的 5 天內，Telegram 增加了 800 萬用戶，很多發達國家的用戶更關心他們的隱私安全；而在中國，有人認為“**任何中國產通訊工具都是絕對不安全的**”。與這些相比，Telegram 背後並沒有巨頭站隊，公司註冊於德國柏林，非常註重隱私。

國內大多數用戶對個人隱私的重視程度還遠遠不夠，很多人不關心自己的授權被用去做什麼，也不在意 APP 中的隱私政策聲明。然而，註重隱私也並不一定意味著要像 [編程隨想](https://github.com/programthink) 那樣“小心翼翼”地上網。在我看來，今後可怕的不再是個人信息的泄露，而是**用戶行為已經被預測出來**，當科技的發展導致人工智能的建議能夠影響人的決策時，尤其是這些 AI 背後都由大公司掌控，就不知是該欣喜還是恐慌了。

Telegram 的基本功能譬如群組、Channel、UI 等方面就不介紹了，使用過的人會很容易感受到，我將介紹一些真正打動我的地方。

## \## Telegram 的加密通訊

加密通訊，是 Telegram 主打的功能之一。

Telegram 團隊使用自己設計的加密協議 MTProto，並以 30 萬美金的高價 [獎賞](https://telegram.org/blog/cryptocontest) 漏洞的提交者。

![](http://telegra.ph/file/8240f5d161c81b1fe0bd9.jpg)

你可以對其他用戶發起一對一的加密聊天，這是端到端加密的，可以設置每條消息的有效時間（有點像 Snapchat）。同時可以設置一段時間內沒有活動記錄自動刪除賬戶，也可以主動 [deactivate](https://my.telegram.org/auth?to=deactivate)。

如果不用 Telegram 的 Secret Chat 功能，默認的普通聊天是不被端到端加密的。這也是一些評測機構認為 Telegram 還不夠安全的原因之一。

有意思的是，由於 Telegram 安全性備受矚目，吸引了大量 [恐怖分子](http://securityaffairs.co/wordpress/54787/terrorism/telegram-isis.html) 的聚集，Telegram 團隊也不得不對這些頻道和群組加以監控和查封。

![](http://telegra.ph/file/da999de1a36fa1aa07235.png)

## \## 特性與細節

### \### 輕量
在 iOS 平臺上，Telegram 的安裝包是 39.8 MB，而 QQ、微信分別是 131 MB 和 110 MB。

使用一段時間後，在我的手機中， Telegram 占據空間依然是 40 MB 左右，而 QQ 和微信達到了恐怖的 3 GB。

### \### 實時

在 Telegram 中，只要你知道對方的用戶名，就可以向其發起會話，而不需要添加好友。

這在很多情景上提升了用戶體驗與溝通效率，達到真正的“即時通訊”。

### \### 全終端同步

Telegram 永遠不會主動刪除你的聊天記錄，所有內容都會在全平臺同步。

所以我會置頂一個和自己聊天的會話，當想從手機向電腦上傳一些圖片、文件、鏈接時，就會發給自己，在電腦上打開 Telegram 即可接收。最重要的是可以傳輸**無損圖片**。

### \### 一個細節

當用戶在電腦上有未編輯好的消息，如果有急事需要離開電腦旁（譬如上廁所）怎麼辦？

Telegram 告訴你什麼才是真正的“即時通訊”。

![](http://telegra.ph/file/623461a61f419ef511345.jpg)

你會看到，聊天框未發送的消息，在其他平臺進入時完全同步過來了，甚至光標的位置都一模一樣。也就是說你可以在如廁時繼續編輯剛才電腦上的消息。

Telegram 的還有很多動人的細節，值得自己去探索。接下來我介紹一個“大殺器”，那就是 Telegram 的聊天機器人平臺。

## \## 機器人 Bot

Telegram 在 2015 年 6 月發布了自己的 [機器人平臺(Telegram Bot Platform)](https://telegram.org/blog/bot-revolution)，開發者可以使用官方 API 自定義屬於自己的機器人，完成各種各樣的功能。

Bot 的機制體現了 Telegram 開放的特性，大大豐富了 Telegram 的用法。比如你可以利用 bot ssh 登錄到 VPS 上；通過 bot 來 RSS 訂閱新聞或博客，發到群組裏；還可以下載 YouTube 的視頻等等。這些 bot 多數是開源的，所以如果有安全問題的擔憂的話，你可以將其搭建在自己的 VPS 上。

有的開發者認為， IRC 的定制性更強，但我認為 Telegram Bot 機制已經足夠友好了，尤其是相比國內 IM 工具而言。絕大多數需求都可以通過定制 Bot 來滿足。

![](http://telegra.ph/file/44f491c6ba5f8107b27fc.jpg)

### \### ehForwarderBot

[ehForwarderBot](https://github.com/blueset/ehForwarderBot) 能夠將微信和 Telegram 連接在一起，你可以在 Telegram 上收發微信消息。同時，你還可以自己貢獻代碼，讓它支持更多平臺。

![](http://telegra.ph/file/ec700d402e5b019f68b5e.png)

網上有人說：

> 阻止我用Telegram最大的敵人就是我的朋友們···

其實在國內來說 Telegram 還算小眾，但它的使用者大多數是 Geek，和他們交流能學習到不少東西，因為 GFW 的存在就已經過濾了一部分用戶了。綜合來看利是大於弊的。

### \### 創建自己的 Bot

創建 Bot 非常簡單，只要去找機器人老爹 [@BotFather](https://telegram.me/BotFather) 創建，你會得到一串 Token，這將是 Bot 的唯一標識，同時也不能泄露出去。

之後你可以使用喜歡的語言完成開發，GitHub 上很多開發者都對原生 API 進行了封裝，比如 Python 的 [python-telegram-bot](https://github.com/python-telegram-bot/python-telegram-bot) 和 Golang 的[telebot](https://github.com/tucnak/telebot)。

[原文](https://livc.io/blog/177)

> More about Telegram
{:.filename}
```yml
Telegram入门与使用: https://blog.liuboke.com/telegram.html
同样是聊天工具，Telegram 的这些玩法你或许想试试: http://www.pingwest.com/some-telegram-skills-you-may-want-to-know/
《一天世界》博客：我订阅的 Telegram 频道和群组: https://zhuanlan.zhihu.com/p/27876119
Telegram 技巧: http://einverne.github.io/post/2016/07/telegram-review.html#bold
Telegram Wiki By Fans: http://telegram.wiki/
Sticker 搜索: http://stickergram.ru/13.html
```

## \## 更多

1. 關於代理上網，請參考[機智上網](http://test007.gq/surf-the-real)
2. [Telegram 入門](http://test007.gq/Telegram)
3. [利用教育網 IPv6 實現免代理翻墻、大一斷網和夜間斷網破解](http://test007.gq/IPV6-edu)
4. [IPv6 節點獲取](http://test007.gq/IPV6-node)

\(￣︶￣*\)) - \(￣︶￣*\)) - \(￣︶￣*\)) - \(￣︶￣*\))