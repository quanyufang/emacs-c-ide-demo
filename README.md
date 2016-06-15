## 这套配置文件的目标
尝试配置一套在OS X上能够立即使用的emacs配置,这套配置能够满足C/C++、PHP、Python以及Common Lisp（ELisp）开发人员的一般需求。

## 感谢
感谢原作者[tuhdo](https://github.com/tuhdo "")，这份配置以tuhdo的配置为基础不断修改。

## 特点：
* 自动加载配置文件依赖的包文件。
    * 个别还未纳入package archives管理的包，放在manual-install目录下管理（包括自动识别文件编码的unicad)
* 支持 C/C++、PHP、Python、Common Lisp编程。
* 代码阅读和编写支持
    * 使用gtags、etags 帮助阅读代码， company 代码补全。统一了 C/C++、PHP、Python在阅读过程中代码的跳转使用的快捷键等。
    * python使用jedi来完成代码补足的功能。 
    * 使用projectile 进行项目管理。
    * 使用强大的helm。

* 强大的编辑能力
    * undo-tree可以有效地管理你的编辑历史，提供类树形图形管理界面。
    * helm-ring.el提供了一套工具，能够帮你展示之前你copy-cut(使用更准确的emacs用语kill)的内容，本配置中使用M-y(命令helm-show-kill-ring）就能展示你的编辑历史中使用过的编辑历史，使用C-n,C-p可以来回查看，RET（回车）即可把内容复制到当前的光标位置。
* 拥有几套theme，可以耍酷。
* 当前emacs自带的package也非常强大，比如，org-mode非常适合写作和管理TODO-LIST。


# 使用方法简介
## emacs安装：
当然需要先安装emacs，mac系统个人推荐 http://emacsformacosx.com/。

## 配置文件的使用
使用方法：
git clone https://github.com/quanyufang/emacs-config-files .emacs.d

## 常用命令
我整理了该配置下可以使用的命令，还比较初级，但基本常用的都能找到 ，见  [EmacsCommand.md](https://github.com/quanyufang/emacs-config-files/blob/master/EmacsCommand.md "")

# 注意事项：
1. 可能因为墙的原因，melpa.milkbox.net:80很慢，可以尝试VPN
2. 使用最新的emacs > 24


# python注意事项:
1. 参考 http://tkf.github.io/emacs-jedi/latest/ 

# Lisp注意事项:
1. 使用etags来建立标签: find somewhere|xargs etags。

# gtags使用
1. 这个配置中C/C++和PHP代码使用gtags，在OS X上面使用Homebrew安装global即可。安装完成之后，在项目目录下面执行gtag，也可以使用helm提供的命令直接在emacs内部生产和更新tags

# flycheck的说明：

1.通过执行 M-x flycheck-verify-setup 检查当前语言需要的lint工具是否准备好了

2.不同的语言需要在不同的OS下，需要的lint工具有所不同，查询对应的安装工具来安装相应的工具。我在OS X下使用Homebrew安装相应工具，比如php语言的支持
brew install homebrew/php/php-code-sniffer homebrew/php/phpmd
