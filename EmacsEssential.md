## 本文档的目的
* 第一次接触Emacs的时候，可能会发现Emacs的一些概念和操作方法还是比较独
  特，当然Emacs和其他编辑器如VI或者sublime乃至IDE都是有相通之处的。要
  知道一般Linux下的终端中的编辑模式就是Emacs Mode，所以对Emacs的掌握带
  来的收益是多维度的。本文档的目的是介绍Emacs最基础的概念，包括键盘的
  基础知识、Frame、Buffer、命令等。
  
## 键盘基础知识
* 事实上，键盘的类型很多，也有很多很微妙的知识。不过对于目前常见的键盘
  可以粗略分为For Windows或者For Mac（Unix Like），我们暂不过多研究这
  方面的知识。
* 键盘上有几个特殊的键位对Emacs来说特别重要，包括Control，Meta, Esc，
  Alt，Super， RET。
    * Control键就是在键盘上写着Control字符的键，有些键盘是简写的Ctrl，
      在Emacs的文档中，或者交互输出的信息中，通常写作C，所以C-c的意思
      是同时按住Control和c键，C-x就是同时按住Control和x键，而C-c C-e则
      表示同时按住Control和c键，释放然后再同时按住Control和e键。当然对
      于思维严谨的同学有必要补充一句，不要求在同一个时刻按下两个键，
      C-c通常是先按住Control，然后再按住c，然后释放即可。以下描述键盘
      快捷键都是如此，不再赘述。
    * Meta键是一个虚拟的说法，通常是Alt键，也可以是Esc键，一般情况下他
      们是通用的。Meta键简称M。如果在某个唱歌Alt键不好用，可以试试Esc，
      M-x这个组合非常重要，表明你要执行一条Emacs命令。
    * Esc一般在键盘左上角，它和后面要介绍的Alt统称Meta键，简称M。Esc和
      Alt在Emacs中经常是通用的，但有时候并不如此，比如Esc有退出一些不
      期望操作时有效果，Alt则没有。
    * Alt在Mac上就是option键。
    * Super键也是一个虚拟的说法，在Mac上它就是command，在windows上就是
      windows键（通常印刷有视窗图标）。Super在快捷键序列里通常简写做S。
    * RET 就是回车键。
* 其他的键位基本和普通的用法一致。

## Frame的概念
* 对于图形界面，你打开Emacs以后，看到的Emacs窗口就是Frame。
