# 这套配置文件的目标
尝试配置一套在OS X上能够立即使用的emacs配置,这套配置能够满足C/C++、PHP、Python以及Common Lisp（ELisp）开发人员的一般需求。

# 感谢
感谢原作者[tuhdo](https://github.com/tuhdo "")，这份配置以tuhdo的配置为基础不断修改。

# 特点：
1. 支持 C/C++、PHP、Python、Common Lisp编程。

2. 代码阅读和编写支持

2.1 使用gtags、etags 帮助阅读代码， company 代码补全。统一了 C/C++、PHP、Python在阅读过程中代码的跳转使用的快捷键等。

2.2 python使用jedi来完成代码补足的功能。 

2.3 使用projectile 进行项目管理。

2.4 使用强大的helm。

3. 拥有几套theme，可以耍酷。



# 使用方法简介
## emacs安装：
当然需要先安装emacs，mac系统个人推荐 http://emacsformacosx.com/。

## 配置文件的使用
使用方法：
git clone https://github.com/tuhdo/emacs-c-ide-demo .emacs.d


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
