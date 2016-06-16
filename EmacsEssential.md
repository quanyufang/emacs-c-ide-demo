## 本文档的目的
* 第一次接触Emacs的时候，可能会发现Emacs的一些概念和操作方法还是比较独特，当然Emacs和其他编辑器如VI或者sublime乃至IDE都是有相通之处的。要知道一般Linux下的终端中的编辑模式就是Emacs Mode，所以对Emacs的掌握带来的收益是多维度的。本文档的目的是介绍Emacs最基础的概念，包括键盘的基础知识、Frame、Buffer、配置和自定义、命令等。
* 我力图使这个文档足够短，足够口语化。
  
## 键盘基础知识
* 事实上，键盘的类型很多，也有很多很微妙的知识。不过对于目前常见的键盘可以粗略分为For Windows或者For Mac（Unix Like），我们暂不过多研究这方面的知识。
* 键盘上有几个特殊的键位对Emacs来说特别重要，包括Control，Meta, Esc，Alt，Super， RET。
    * Control键就是在键盘上写着Control字符的键，有些键盘是简写的Ctrl，在Emacs的文档中，或者交互输出的信息中，通常写作C，所以C-c的意思是同时按住Control和c键，C-x就是同时按住Control和x键，而C-c C-e则表示同时按住Control和c键，释放然后再同时按住Control和e键。当然对于思维严谨的同学有必要补充一句，不要求在同一个时刻按下两个键，C-c通常是先按住Control，然后再按住c，然后释放即可。以下描述键盘快捷键都是如此，不再赘述。
    * Meta键是一个虚拟的说法，通常是Alt键，也可以是Esc键，一般情况下它们是通用的。Meta键简称M。如果在某个场景Alt键不好用，可以试试Esc，M-x这个组合非常重要，表明你要执行一条Emacs命令。
    * Esc一般在键盘左上角，它和后面要介绍的Alt统称Meta键，简称M。Esc和Alt在Emacs中经常是通用的，但有时候并不如此，比如Esc有退出一些不期望操作时有效果，Alt则没有。
    * Alt在Mac上就是option键。
    * Super键也是一个虚拟的说法，在Mac上它就是command，在windows上就是windows键（通常印刷有视窗图标）。Super在快捷键序列里通常简写做S。
    * RET 就是回车键。
* 其他的键位基本和普通的用法一致。

## Frame的概念
* 对于图形界面，你打开Emacs以后，看到的Emacs窗口就是Frame。Emacs允许你打开多个Frame，充分利用多屏。
* 如果你在终端中打开Emacs，也是允许多个Frame的，只是没有那么直观。
* 快速的介绍几个和Frame相关的快捷键：
    * C-x 5 2 打开一个新的Frame，对应的命令是make-frame-command,也即是您也以按下M-x快捷键，然后输入命令new-frame-command,不过如果您使用本配置，你会发现输入命令也是很快的，比如你可以输入ne fr这样的字符组合也可以找到需要的命令。
    * C-x 5 0 关闭一个Frame，对只有一个Frame的场景，会给出一个提示信息，但不执行这个命令。
    * C-x 5 o (注意是字符o，不是zero)，切换到其他frame。
* 注意Frame和screen之间的关系。
    * screen是个直观的概念，接触计算机的人都会有一块或者多块物理屏幕，不用学究式的讨论概念，你可以认为Frame就是screen，你感兴趣的内容就展示在这里，内容太多一屏装不下，所以需要来回滚动，内容需要互相参考比对，所以多个Frame来满足你的需要。
    
## Buffer的概念
* 简单的说，你打开一个文件后，就是创建了一个Buffer，和这个文件绑定。当你在Buffer中编辑的时候，保存之前，内容并不会写到文件。
    * 模式的概念，简单的说就是Emacs认为打开的Buffer是程序文件还是邮件，又或者是Markdown文件或者ORG文件等等，Emacs识别之后会尽量为你营造最适合编辑这类文件的环境。一个Buffer可以有一个主模式(Major mode)，可以有多个minor mode，这些信息本文档就不介绍了。可以参考Emacs Tutorial(在Emacs 中输入C-h t马上就可以阅读)。
      
## 配置和自定义
* 配置是自定义Emacs的常见方法。
* Emacs可以满足几乎任何你想自定义的需求。
* 常见的配置文件：
    * 您可以在$HOME(Unix 立刻就是你的用户主目录，windows 不同版本有所不同)放置一个".emacs"文件，如果配置不复杂，建议用这个。我之前用这个方法将近10年。
    * 您可以在$HOME下创建一个.emacs.d目录，Emacs会在这个目录下查找init.el文件。2015年我改用这种模式。
* Emacs可以通过增加或修改命令改变行为，可以通过修改暴露出来的变量改变行为（这些变量在命令中使用）。可以在启动时定制，也可以在运行时定制。

## 命令
* 可以认为命令就是一般IDE中菜单项目中的具体一项，提供功能，有些命令太常用了所以提供快捷键。
* 熟悉了Emacs之后您肯定会了解一些命令或快捷键，可以参考[EmacsCommand](https://github.com/quanyufang/emacs-config-files/blob/master/EmacsCommand.md "EmacsCommand")。
* 几个常用的帮助：
    * C-h k 可以快速查看一个快捷键绑定了什么命令
    * C-h f 查看命令的文档
    * C-h v 查看Emacs中某个变量的说明
