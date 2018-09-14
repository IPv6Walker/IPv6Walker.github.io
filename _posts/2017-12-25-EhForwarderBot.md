---
layout: post
musicid: 519935263 #夏日星
title: EFB 介绍 (1/3)
description: Telegram 机器人 - 在 Telegram 上收发 wechat 信息。
tags:
 - Telegram
 - EFB
---

![](/media/files/WEBP/white.webp){:.small}

Telegram 机器人 - 在 Telegram 上收发 wechat 信息。

<!--more-->

Ubuntu 下配置使用 EFB v2.0 的[示例](/EFBv2.0-Ubuntu)已更新，亲测，建议在内存足够且网络环境稳定的情况下部署，推荐使用原因：部署简单（根据示例即可），运行稳定，出错信息在可控范围。
{:.note}

这篇文章是对 EhForwarderBot 的一个简单认识，基于 v1.0 版本。截止至 2018-02-26，官方已更新 v2.0 版本。同时在 CentOS6 完整部署 EFB 的教程已更新，见[迁移 wechat 到 Telegram 之操作详解](
/EFB-sh)。

---

## 楔子

遷移Wechat消息到Telegram的契機來自不鳥萬如一的這篇文章：告別微信（[機智上網使用](https://telegra.ph/%E8%81%8A%E8%81%8A%E6%9C%BA%E6%99%BA%E4%B8%8A%E7%BD%91-12-03)）。文章寫的很有一天世界的風格：主觀，卻又謙虛。不鳥萬如一的視角一如既往，從產品的角度去分析職能，細節处常常會带給你親身使用產品的感覺：

>我拒絕一個不允許鏈接到自有生態圈以外資源的媒體基礎設施。在微信公眾號裏，作者沒有權利通過 URL 自由鏈接到萬維網（web）上的其它文章、音頻、視頻與文件。喏，[就像這樣](https://telegra.ph/Link-Wechat-To-Telegram-12-25)。這不僅從根本上肢解了萬維網，也在變相鼓勵侵權：如果我不能鏈接過去，就只好復制過來。--《告別微信》 / 不鳥萬如一

![](/media/files/WEBP/nowechat.webp){:.small}

促使我決定抽出期末復習的這幾個小時來完成這一遷移（不知為何突然想起聖經中的摩西，橫渡紅河，令人唏噓）的，並不完全同博主所說的那般，對於微信所能帶來的生活上的便攜性，我還是心存感謝的。盡管這種便攜性的背後還有數據的監控，還有無法自由定制通訊的“不自由”，我想這也是不鳥萬如一憤憤的緣由之一吧。

## 准备

回歸主題，接下來聊聊如何遷移微信消息到 Telegram。

* **工具**上，你需要：【一台 VPS ，一个 Wechat 和一个 Telegram 账户】。
* **先修知識**：【 Linux基礎操作（e.g.  `cp cd ls mv ln` 等基礎系統操作命令 / wget 下載 / dependencies 的編譯 / vim 文本編輯器簡單操作），Google 檢索技巧。】
**P.S.** 在任何一個步驟上遇到問題，你都可以通過在互聯網上檢索該步驟相關的關鍵詞來獲取解決方案，借助遞歸的方式，在項目推進過程中的某個步驟遇到問題，首先解決它，緊接著繼續工作，一步一步的排除掉不會的點，時間和資源充足的前提下，項目的成功就幾乎是必然的了。鑒於你不斷的吸收著新知，隨著這種探索和遞歸方式的不斷深化，效率的逐漸提高也是可以預測到的。

## 步驟

**整個遷移過程參照這幾篇文章，按照文章對於構建過程描述的完整性排序**：

1. [官方文檔](https://ehforwarderbot.readthedocs.io/en/latest/)：官方原始 Doc 當然是描述最為細致清晰的，不過技術細節過多，如果短期內只需部署微信到 Telegram 的消息遷移，推薦閱讀下面這篇文章。
2. 《[安裝並使用 EFB：在 Telegram 收發微信消息](https://blog.1a23.com/2017/01/09/EFB-How-to-Send-and-Receive-Messages-from-WeChat-on-Telegram-zh-CN/)》：【親測】整個部署過程都遵循這篇 Tutorial 完成，除個別步驟有出入，教程本身是非常細致的，較適用於 VPS 是 Ubuntu 操作系統的讀者。
3. 《[“在 Telegram上 實現微信收發”—— EHForwarderBot 搭建指南](https://ellinia.me/how-to-deploy-ehforwarderbot-on-centos7/)》：【CentOS 7】鑒於部分讀者的VPS是 CentOS 系統，這裏增補一篇 CentOS 的文章，未親測，索引文章同上兩篇，目測可完成。
{:.poem}

**具體的步驟可以概括為這幾步**：

1. **SSH 登陸遠程 VPS**；  
2. **安裝 Python，非 Python 依賴和 Python 依賴**；（P.S. EhforwarderBot 源碼基於 Python3，親測 Python3.5 成功，請至少保證 Python版本 在3.4以上。在這一步，如果是 VPS 是 centos 系統是無法直接通過 apt 或者 yum 安裝的，需要添加倉庫，這時候你可以 Google: `yum` + 安裝 + 要安裝的依賴項，之所以加入安裝這個檢索詞是出於語言考慮，通過添加倉庫的來實現 yum 安裝是最簡單的方式，不過，部分依賴可能仍然需要通過下載源碼以及 `./configure $$ make $$ make install` 的編譯方式安裝）  
3. **配置和初始化**；（ P.S. 這一步比較簡單，在從 `@Botfather` 處獲取到 token 後請記得妥善保存，`username` 定義後請不要向他人泄露）  
4. **啟動EFB**；（ P.S. 這一步就是掃碼登陸微信網頁端的相同操作，不過當我看到 xshell 裏彈出一個二維碼還是覺得挺酷的）
{:.poem}

其他的說明事項不多索引，請自行查閱上面的三個文檔，最後的完成效果如下：

![](/media/files/WEBP/fromwechat.webp){:.small}*Sent from Wechat*

![](/media/files/WEBP/bytelegram.webp){:.small}*Received by Telegram*

## 最后

大功告成。整個過程操作下來其實非常流暢，對於先修知識的要求也並沒有想象中的高。

最後，Enjoy your IM in telegram and **Merry X'mas** again.
