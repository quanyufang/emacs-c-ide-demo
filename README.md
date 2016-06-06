# 这个项目的目标
在https://github.com/tuhdo/emacs-c-ide-demo 基础上尝试配置一套在OS X上能够立即使用的emacs配置。
# 感谢
感谢原作者 tuhdo。目前项目的状态是您可能还会遇到些小问题，我正在改进中。力图改进到不需要做任何额外的配置（网络问题另说）。

# 关于项目的名字
目前这个名字实在是一个让人看起来没有兴趣的东西，后面如果这个项目有点用处了，会修改为一个合适的名字。

# 项目使用方法简介
## emacs安装：
当然需要先按照emacs，mac下，个人推荐 http://emacsformacosx.com/， 请前往这个网站下载软件安装。

## 配置文件的使用
使用方法：
git clone https://github.com/tuhdo/emacs-c-ide-demo .emacs.d

# 特点：

1. 支持 C/C++、PHP、Python、Common Lisp编程。

1.1 使用gtags、etags 帮助阅读代码， company 代码补全（python使用另一套）， projectile 项目管理，使用helm。关于这两个东西的强大能力体验之后就能明白。
2. 拥有几套theme，耍耍酷。
3. 基本统一了几种语言在阅读过程中代码的跳转等




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
