---
title: 基于 Jekyll 创建你的第一个博客
layout: post
date: 2018-09-10
description: "聊聊从头开始一步一步构建你的个人博客"
tags:
 - 教程
---

![](/media/files/WEBP/da-kraplak.webp)*Photo by Da Kraplak on Unsplash*

> 轩墨染于荧屏、方寸尽是感动。

---

## 楔子

博客一年了，这一年或多或少都在与编辑器打交道。所谓博客，大抵是一种自由而内敛的表达方式，构建在半个多世纪来计算机技术大厦上的书写方式，从出生就饱含感动，想想一个简单的 HTML 页面背后的技术支撑，每一个字符的呈现，都经历了前人的智慧洗涤，无数的字符和 0 1 代码汇聚、最终静静的躺在显示器的一个角落，供人们品评。

## 谈编辑器

![](/media/files/WEBP/code1-27-1.webp)

教程开始之前插播一段题外话：最近 09-06 VScode 发布了界面可供定制（ custom ）的 1.27.1 版本，全新的应用体验让 VScode 这款本就精致快捷的编辑器焕发出新的光彩，如果你厌倦了 Atom 的繁重和迟钝，又希望有能实时跟终端交互，插件丰富，上手简单的一款漂亮的编辑器，VScode 绝对是一个不错的选择。

| 特性 | 对比
|-|-
| 启动速度 | Sublime > VScode > Atom
| 插件体验 | VScode > Atom > Sublime
| 终端交互 | VScode > Sublime > Atom
| 运行内存 | Sublime > VScode > Atom

👆主流现代编辑器的特性对比

## 博客介绍

回到正题。对于入门 Jekyll 博客创作，在搜索引擎上收录着无数精彩的文章，博主接触 Jekyll 较晚，也就去年的九月中旬。但这一年围绕着 Jekyll 博客踩了很多坑，经过一年的积累，我觉得可以把我的博客写作体验分享出来了，读者们尽可以将这篇文章作为一篇踩坑文，内容上比较大的优势是皆系原创，而且在 Windows 和 Linux 平台都充分的测试过，精确性上可以保证。

接下来我们进入博客创作。首先，要写一个博客，正常的做法有三种：

自建服务器：适用于静态和动态博客，经验比较丰富的站长们大多会选择将博客部署在自建的服务器上（包括共享的虚拟主机建站的情况）
托管平台：适用于静态博客和简单的动态博客，觉得流量不大、服务器运维麻烦的博主通常选择托管在类似于 Github、Gitlab 或 Coding 的代码托管平台
博客平台：适用于单纯的创作，不需要关注 HTML 和博客的代码，只需要在类似于 Google Blogspot、Medium、Tumblr、简书或者 CSDN 这类博客平台发布文章即可。
{:.poem}

（其实还有另外一种，我在先前的博文中有介绍过的，即基于 [Telegram](/Telegram) 推出的 [Telegrah](/telegraphintro) 匿名文章发布平台构建纯匿名的博客，优点是同样不需要关注 HTML，支持 Youtube、Twitter、Vimeo 等外链的定制样式，支持图片、Gif 和视频上传存储等，开箱即用。缺点是管理需要兼顾多个页面，博文之间的链接逻辑需要自己构建。）

对于自建服务器，比我有经验的站长很多，简单聊聊看法，这种方式的技术成本相对较高，需要对 web 技术栈有较深入的学习。博主在日本的 VPS 上基于 Nginx 构建了一个 [www.ynewtime.com](//www.ynewtime.com) 的镜像站点，构建完成之后用国人开发的一款便捷的 HTTPS 获取脚本 [acme.sh](https://github.com/Neilpang/acme.sh) 也给镜像站点加入了 HTTPS 支持，整个过程比较简单，对于手上有闲置、访问正常的 VPS 的小伙伴可以一试，有空的话我之后也会写一篇自建服务器搭建 Jekyll 博客的教程，由于本篇教程面向入门，自建服务器的方法这里就不赘述了。

另一种方法：在博客平台发布博文，基本不需要什么学习成本，依托于成熟的文章创作平台还有一个优点，即天然拥有该平台的流量入口，易被检索易被收录，曝光率较高，适合单纯文章创作的读者们。国内的博客平台推荐简书，如果是技术博客也可以考虑 CSDN，能够同时被谷歌和百度收录，流量入口有保证。国外的博客平台则推荐 Medium，不过中文文章在 Medium 发布难以保证阅读量，Medium 比较适合英文博文，而且国内无法访问 Medium，需要[科学上网](https://www.ynewtime.com/科学上网)。感兴趣的读者们可以立即上手了，基本是零成本操作。

接下来我们主要聊聊在托管平台发布博客的方式。这种方式多数是这样实现的：“ 托管平台（如知名代码库：Github、Gitlab 和 Coding） + SSG（静态站点生成器，如 Jekyll、Hexo） ”。大多数人选择的方式是 **Github Pages** + **Jekyll** 的方式，我们首先介绍一下这两者：

<div class="responsive">
  <div class="img">
    <a href="/media/files/WEBP/pages.webp">
      <img src="/media/files/WEBP/pages.webp" alt="GITHUB PAGES">
    </a>
    <div class="desc">
      <a href="//pages.github.com">GITHUB PAGES</a>
    </div>
  </div>
</div>

<div class="responsive">
  <div class="img">
    <a href="/media/files/WEBP/jekyll.webp">
      <img src="/media/files/WEBP/jekyll.webp" alt="JEKYLLRB.COM">
    </a>
    <div class="desc">
      <a href="//jekyllrb.com">JEKYLL</a>
    </div>
  </div>
</div>

<div class="clearfix"></div>

**Github Pages** 是 Github 推出的代码库个人主页方案，最初面向 Github 上成千上万的代码库，为其提供一个方便的项目展示方案。后来随着 Jekyll 静态站点生成引擎的引入，越来越多的人也借助 Github Pages 来做自己的博客。逻辑上，博主直接将网站的全部文件上传到你的 Github 账号下即可，Github Pages 的生成基本是透明的，只要项目里面有 Jekyll 引擎所需要的配置文件，Github Pages 就可以自动生成，你就可以通过访问对应的域名访问你的博客主页了。**Jekyll** 则是前 Github 创始人之一开发的一个静态站点生成器，架构非常简单，在网站的对应路径添加配置文件，Jekyll 就可以根据这些配置文件自动渲染生成你的博客站点了。
{:.poem}

## 构建开始

下面我们开始整个博客的搭建过程（基于 Jekyll + Github Pages）。

### 准备

首先，你需要的东西是：

1. [Git](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000) 、[Jekyll](//jekyllrb.com) 入门知识
2. [Github](//github.com) 账号

### 上手

### Github Repository

登录你的 Github 账号，创建一个新的代码库（ Repository ），命名为：`你的用户名.github.io`（如：ynewtime.github.io）👇

![](/media/files/WEBP/jekyll-repo.webp)

最开始代码库只有一个 README.md 文件，这个文件是代码库的示例文件，你可以把它理解为 repo 的导航页，用来展示该 repo 的相关事项👇

![](/media/files/WEBP/repo-1.webp)

接着，我们用 Git 把这个 repo 导入到本地👇

![](/media/files/WEBP/git-clone.webp)

正如你所看到的，最开始的目录只有一个 `.git` 文件夹（ git 仓库的默认文件夹），和一个 README.md 文件（仓库的示例文件）：

```
.
├── .git // git仓库文件夹
├── README.md // 示例文件，可不创建
```

### Jekyll 本地配置

这个板块也是整个 Jekyll 博客搭建的重点，博主在这个步骤踩了无数的坑，因此想把最佳实践分享给各位：

首先，如果你是 **macOS** 用户，你可以参考[官方的教程](https://jekyllrb.com/docs/installation/macos/)部署你的 Jekyll 环境，大致的步骤总结一下就是：

运行 `ruby -v` 确认本地的 ruby 环境大于 2.3.3，接着运行 `gem install bundler jekyll` 安装 Jekyll 环境。如果 ruby 环境小于 2.3.3 或者你希望更新到最新版本的 ruby，可以参考[官方的教程](https://jekyllrb.com/docs/installation/macos/)。
{:.poem}

对于 Linux 用户，请戳：[官方的教程](https://jekyllrb.com/docs/installation/) （因为对于 Linux 用户来说这些都是小 case 了。如果是 Ubuntu 用户，总结一下其实就是这几条命令，跑一遍就可以了：

```bash
sudo apt update && sudo apt upgrade -y
sudo apt-get install ruby ruby-dev build-essential
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
```

我们重点聊聊 Windows 下的 jekyll 配置。

![](/media/files/WEBP/sublinux.webp)

#### WSL 大法好

不推荐官方的安装教程，因为在 Windows 的命令行实在是...一言难尽。如果接触过 Linux 系统的童鞋应该有了解过 Windows 系统在 2016 年的更新中原生整合了 Linux（sub-linux）系统，启用之后，在 Windows 也能用上纯正的 Linux 环境，不再需要去部署虚拟机（当然虚拟机对于有环境迁移的用户还是需要的）和双系统方案了。那么，Windows Sublinux 的开启方式戳[这儿](https://docs.microsoft.com/zh-cn/windows/wsl/install-win10)。总结一下就是：

按 `win`{:.key} + `R`{:.key} 输入 cmd 打开命令行界面，输入 `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux` 开启 sublinux 特性。重启电脑。接着，进入 Windwos store 官方应用商店，查找 Linux，选择你喜欢的发行版（推荐 Ubuntu 18.04），安装即可。
{:.poem}

（在正式启用之前还需要配置一下 Windows sublinux 的用户名和密码）成功之后，我们按照 Jekyll for Linux 的[官方的教程](https://jekyllrb.com/docs/installation/) 在 sublinux 系统里面安装 Jekyll。同样的，对于 Ubuntu 用户，跑一遍下面的命令即可：

```bash
sudo apt update && sudo apt upgrade -y
sudo apt-get install ruby ruby-dev build-essential
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler
```

### 第一个 Jekyll 博客

好，那么接下来我们在进入之前导入到本地的代码库中，运行命令：`jekyll new . --force`

Jekyll 的文件夹树：

```bash
.
├── .git // git仓库文件夹
├── README.md // 示例文件，可不创建
├── _config.yml // ！主配置文件，Jekyll的配置依据
├── index.md // ！博客索引文件，首页
├── about.md // ！网站说明页
├── 404.html // ！网站404页面
├── Gemfile // bundle配置文件，非必需
├── _posts // ！博客文章文件夹，放置创作的文章
    └── 2018-09-10-welcome-to-jekyll.markdown // 最开始的一篇文章

<==== 以上为初始创建的文件
====> 以下为推荐创建的文件夹

├── _layouts // ！页面模板文件夹，规定了各个页面模板
└── media // ！资源文件夹，放置样式、图片和JS脚本等
    └── main.css
```

在命令行运行：`bundle exec jekyll server`，在浏览器输入`127.0.0.1:4000`，你就可以看到你的第一个 Jekyll 站点啦

![](/media/files/WEBP/jekyll-new.webp)

上面的命令会启动 Jekyll 自带的网站引擎，生成一个本地的站点预览，如果要退出，按 `ctrl`{:.key} + `C`{:.key} 即可。接着，我们把生成好的博客 push 到我们最先创建的 Github 仓库：

```bash
git add .
git commit -m "blog init"
git push
```

DONE! push 成功之后，你就可以在 `https://你的用户名.github.io` 看到你新创建的博客了。

接下来你要做的就是，根据你的喜好选择一款主题，因为我们先前用 `jekyll new` 命令创建的主题是博客最原生的一个主题：minima，如果你想要挑选适合你的主题，可以上 Jekyll 的[一些主题站点](https://jekyllrb.com/resources/)找（Jekyll 官方并没有维护一个主题站点，大多数主题都是第三方的，网上也有付费的精致主题）。当然，你也完全可以自己创建自己的主题，从零开始定制你的博客样式，学习文章的排版等等，如果你对我的主题感兴趣，欢迎来 fork: [Ynewtime](//github.com/Ynewtime/jekyll-ynewtime).