---
title: 技术笔记
layout: post
day: 2018-09-08
author: Stephen Tseng
tag:
 - notes
---

<a href='' target="_self"><img src="https://source.unsplash.com/random" alt="Unsplash Random Photo"><em>Unsplash Random Photo</em></a>

> And where there is despair, may we bring hope.

---

**09-14 (automation,change file name,sed,grep)**

Linux 命令行批量更改当前目录（含子目录）下所有文件中的特定字符串：

```
sed -i "s/AAA/BBB/g" `grep AAA -rl ./`
```

---

**09-12 (python,Linux,miniconda,env)**

通过 miniconda 来管理本地的 python 环境:

```bash
# Miniconda环境部署
# 下载Miniconda并安装
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
# Restart your terminal
conda create -n ENV_NAME python=PYTHON_VERSION $args=PREREQUESTS_FOR_PYTHON
source activate ENV_NAME
# 退出环境
source deactivate ENV_NAME
```

---

**09-12 (ps,script,administrator)**

通过另一个具备管理员权限的 Powershell 进程来运行脚本：

```powershell
# 把这段 if 判断内容加载 ps 脚本的开头
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{   
    $arguments = "& '" + $myinvocation.mycommand.definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Break
}
# 后面放你要用管理员权限运行的 ps 脚本内容
```

---

**09-12 (VScode,terminal,switch,cmd,bash,ps)**

之前困扰于 VScode 自带的终端切换很不方便（即当我设置的默认终端是 cmd 时，每次新开一个终端都是 cmd，如果要换成其他终端，如 ps、bash 等，又要重新设置一遍默认终端，），现在找到了一个不错的法子。

打开 VScode，按下快捷键 `Alt`{:.key} + `Shift`{:.key} + `P`{:.key}，输入 `tsds`，选择默认终端为 `cmd`（或者 `powershell` 也行，如果你的 Windows 系统里有 `wsl` 或者 `git-bash`，建议不要选择这两者）

ok，按快捷键 `ctrl`{:.key} + `反引号`{:.key} 打开 VScode 的集成终端，切换方法如下：

1. **cmd --> ps** ==> 输入：`powershell` 则在原先的终端内实时切换，输入：`start powershell` 可以打开一个 powershell 终端
2. **cmd --> bash** ==> 输入：`bash` 在原先的终端切换，同理，输入：`start bash` 打开一个新的 bash 终端
3. **bash --> cmd** ==> 输入：`exit` 返回 cmd

---

**09-08 (init,git,key,login,methods,tips)**

公钥登录 VPS 的命令：

```bash
# 假设你的机器上已经有公钥和密钥，没有的话，用这个命令生成：
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
# 接下来就可以根据生成的公钥来验证登陆 VPS：

ssh-copy-id -i ~/.ssh/id_rsa.pub root@vps-ip
```

公钥登陆原理，引用阮一峰老师的博客：

> 所谓”公钥登录”，原理很简单，就是用户将自己的公钥储存在远程主机上。登录的时候，远程主机会向用户发送一段随机字符串，用户用自己的私钥加密后，再发回来。远程主机用事先储存的公钥进行解密，如果成功，就证明用户是可信的，直接允许登录shell，不再要求密码。