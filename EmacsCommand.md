<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>Emacs基础命令</title>
</head>
<body>
<div id="content">
<h1 class="title">Emacs基础命令</h1>
<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. 文件和目录</a>
<ul>
<li><a href="#sec-1-1">1.1. Helm-files.el</a></li>
<li><a href="#sec-1-2">1.2. 目录遍历</a></li>
</ul>
</li>
<li><a href="#sec-2">2. 光标移动</a>
<ul>
<li><a href="#sec-2-1">2.1. smartparens.el</a></li>
<li><a href="#sec-2-2">2.2. lisp.el</a></li>
<li><a href="#sec-2-3">2.3. whitespace.el</a></li>
<li><a href="#sec-2-4">2.4. discover-my-major.el</a></li>
</ul>
</li>
<li><a href="#sec-3">3. 文本编辑</a>
<ul>
<li><a href="#sec-3-1">3.1. 删除命令</a></li>
<li><a href="#sec-3-2">3.2. 段落和区域操作</a></li>
<li><a href="#sec-3-3">3.3. 位置变换</a></li>
<li><a href="#sec-3-4">3.4. 大小写处理</a></li>
<li><a href="#sec-3-5">3.5. 矩形操作（列操作）</a></li>
<li><a href="#sec-3-6">3.6. 搜索</a></li>
</ul>
</li>
<li><a href="#sec-4">4. 撤销停止操作</a></li>
<li><a href="#sec-5">5. 全局grep</a></li>
<li><a href="#sec-6">6. buffer控制</a></li>
<li><a href="#sec-7">7. frame和buffer 的控制</a></li>
<li><a href="#sec-8">8. 文本阅读</a></li>
<li><a href="#sec-9">9. 编码</a></li>
<li><a href="#sec-10">10. 代码阅读</a></li>
<li><a href="#sec-11">11. Lisp代码编写支持</a></li>
<li><a href="#sec-12">12. HELP(帮助)</a></li>
<li><a href="#sec-13">13. helm</a></li>
<li><a href="#sec-14">14. projectile</a></li>
<li><a href="#sec-15">15. 分类不明确</a></li>
</ul>
</div>
</div>
<p>
以下大部分命令是在本配置文件基础上可用的
</p>
<div id="outline-container-sec-1" class="outline-2">
<h2 id="sec-1"><span class="section-number-2">1</span> 文件和目录</h2>
<div class="outline-text-2" id="text-1">
<p>
C-x C-f find-file
C-x C-v find-alternate-file
C-x i   insert-file 会在光标处插入一个文件的内容
C-x C-s save-buffer
C-x C-w write-file
C-x C-c save-buffers-kill-emacs 存储所有修改，退出emacs
C-z     挂起emacs
S-^     kill-some-buffers
</p>
</div>
<div id="outline-container-sec-1-1" class="outline-3">
<h3 id="sec-1-1"><span class="section-number-3">1.1</span> Helm-files.el</h3>
<div class="outline-text-3" id="text-1-1">
<p>
C-x C-f 把光标放到一个buffer中符合文件名规则的字符串上(/home/usr/a.txt)，C-x C-f可以打开一个文件
</p>
</div>
</div>
<div id="outline-container-sec-1-2" class="outline-3">
<h3 id="sec-1-2"><span class="section-number-3">1.2</span> 目录遍历</h3>
<div class="outline-text-3" id="text-1-2">
<p>
C-x d打开目录后，把光标放到列表中的子目录，i 命令可以在本buffer展开子目录的内容
</p>
</div>
</div>
</div>

<div id="outline-container-sec-2" class="outline-2">
<h2 id="sec-2"><span class="section-number-2">2</span> 光标移动</h2>
<div class="outline-text-2" id="text-2">
<p>
C-f forward-char 向前移动一个字符
C-b backward-char 向后移动一个字符
C-p previous-line
C-n next-line
M-f forward-word
M-b backwoard-word
C-a beginning-of-line
C-e end-of-line
M-a backward-sentence
M-e org-forward-sentence
C-v scroll-up
M-v Scroll-down
C-x [ backward-page
C-x ] forward-page
M-&gt; end-of-buffer
M-&lt; beginning-of-buffer
C-l recenter
M-(a number) digi-argument 
</p>
</div>

<div id="outline-container-sec-2-1" class="outline-3">
<h3 id="sec-2-1"><span class="section-number-3">2.1</span> smartparens.el</h3>
<div class="outline-text-3" id="text-2-1">
<p>
C-M-f
C-M-b
C-M-k
</p>
</div>
</div>

<div id="outline-container-sec-2-2" class="outline-3">
<h3 id="sec-2-2"><span class="section-number-3">2.2</span> lisp.el</h3>
<div class="outline-text-3" id="text-2-2">
<p>
C-M-@ mark-sexp  (备注C-M-SPC我一直用不了）
C-M-a beginning-of-defun 到一个函数的前面来
C-M-e end-of-defun
C-M-h mark-defun
</p>
</div>
</div>

<div id="outline-container-sec-2-3" class="outline-3">
<h3 id="sec-2-3"><span class="section-number-3">2.3</span> whitespace.el</h3>
<div class="outline-text-3" id="text-2-3">
<p>
C-c w 显示空格
</p>
</div>
</div>
<div id="outline-container-sec-2-4" class="outline-3">
<h3 id="sec-2-4"><span class="section-number-3">2.4</span> discover-my-major.el</h3>
<div class="outline-text-3" id="text-2-4">
<p>
C-h h m discover-my-major
</p>
</div>
</div>
</div>

<div id="outline-container-sec-3" class="outline-2">
<h2 id="sec-3"><span class="section-number-2">3</span> 文本编辑</h2>
<div class="outline-text-2" id="text-3">
</div><div id="outline-container-sec-3-1" class="outline-3">
<h3 id="sec-3-1"><span class="section-number-3">3.1</span> 删除命令</h3>
<div class="outline-text-3" id="text-3-1">
<p>
Del backward-delete char
C-d delete-char
M-d kill-word
M-&lt;DEL&gt; backard-kill-word
C-k kill-line
M-k kill-sentence
C-x Del backard-kill-sentence
C-y yank
C-w kill-region
    backward-kill-paragraph
    kill-paragraph
</p>
</div>
</div>

<div id="outline-container-sec-3-2" class="outline-3">
<h3 id="sec-3-2"><span class="section-number-3">3.2</span> 段落和区域操作</h3>
<div class="outline-text-3" id="text-3-2">
<p>
C-@ set-mark Mark the beginning (or end) of a region.  
C-Spaceset-mark Ibid. 
C-x C-p mark-page Mark the current page. 
C-x C-x exchange-point-and-make Exchange the location of the cursor and the mark. 
C-x h mark-whole-buffer Mark the current buffer. 
M-q fill-paragraph Reset the paragraph. 编写一长串文本时，这个命令自动把文档处理为宽度不超过80列的文本块
M-g fill-region Reformatindividual paragraphs with region.
M-h mark-paragraph Mark select paragraph. 
C-c i 'ident-region-or-buffer 
C-u C-@ 返回之前的记录过得位点
</p>
</div>
</div>


<div id="outline-container-sec-3-3" class="outline-3">
<h3 id="sec-3-3"><span class="section-number-3">3.3</span> 位置变换</h3>
<div class="outline-text-3" id="text-3-3">
<p>
C-t transpose-chars 
M-t transpose-words 比较智能的交换连个单词
C-x C-t transpose-lines
transpose-sentences
transpose-paragraphs
</p>
</div>
</div>

<div id="outline-container-sec-3-4" class="outline-3">
<h3 id="sec-3-4"><span class="section-number-3">3.4</span> 大小写处理</h3>
<div class="outline-text-3" id="text-3-4">
<p>
M-c capitalize-word
M-u upcase-word
M-l downcase-word
C-x C-l downcase-region
C-x C-u upcase-region
</p>
</div>
</div>

<div id="outline-container-sec-3-5" class="outline-3">
<h3 id="sec-3-5"><span class="section-number-3">3.5</span> 矩形操作（列操作）</h3>
<div class="outline-text-3" id="text-3-5">
<p>
emacs以C-x r开头的命令来进行矩形操作。先用C-space或者C-@设一个mark，移动光标到另一点，用以下命令进行列操作：
</p>

<p>
C-x r k 剪切一个矩形块
C-x r y 拷贝/粘贴一个矩形块
C-x r o 插入一个矩形块
C-x r c 清除一个矩形块(使其变成空白)
C-x r t 在选定区域的所有列前插入样的字符
query-replace 替换时确认
</p>
</div>
</div>

<div id="outline-container-sec-3-6" class="outline-3">
<h3 id="sec-3-6"><span class="section-number-3">3.6</span> 搜索</h3>
<div class="outline-text-3" id="text-3-6">
<p>
C-s isearch-forward
C-r isearch-backward
Meta Stop a successful search
C-g Stop searching and return to the starting point.
Del Delete an incorrect character whilst searching.
</p>
</div>
</div>
</div>


<div id="outline-container-sec-4" class="outline-2">
<h2 id="sec-4"><span class="section-number-2">4</span> 撤销停止操作</h2>
<div class="outline-text-2" id="text-4">
<p>
C-g keyboard-quit
C-x u advertised-undo
S-u  revert-buffer
</p>
</div>
</div>

<div id="outline-container-sec-5" class="outline-2">
<h2 id="sec-5"><span class="section-number-2">5</span> 全局grep</h2>
<div class="outline-text-2" id="text-5">
<p>
helm
helm-do-grep
C-c h M g s
</p>

<p>
projectile
projectile-grep
C-c p s g
</p>
</div>
</div>

<div id="outline-container-sec-6" class="outline-2">
<h2 id="sec-6"><span class="section-number-2">6</span> buffer控制</h2>
<div class="outline-text-2" id="text-6">
<p>
S-u revert-buffer
C-x C-q Read-Only mode
</p>

<p>
discovery-my-major C-h m
使用helm-X命令，要从Emacs Command History跳到Emacs Command使用C-o
</p>
</div>
</div>

<div id="outline-container-sec-7" class="outline-2">
<h2 id="sec-7"><span class="section-number-2">7</span> frame和buffer 的控制</h2>
<div class="outline-text-2" id="text-7">
<p>
C-x 5 2 开启一个新的frame（window）
C-x 5 0 关掉当前frame
C-x 4 c - 貌似打开同一个buffer,并且不影响前一个
</p>
</div>
</div>

<div id="outline-container-sec-8" class="outline-2">
<h2 id="sec-8"><span class="section-number-2">8</span> 文本阅读</h2>
<div class="outline-text-2" id="text-8">
<p>
C-x C-q 进入只读模式
</p>
</div>
</div>

<div id="outline-container-sec-9" class="outline-2">
<h2 id="sec-9"><span class="section-number-2">9</span> 编码</h2>
<div class="outline-text-2" id="text-9">
<p>
C-x C-m f utf-8-unix RET （set-buffer-file-coding-system） -  当你存储文件时改变文件的编码
C-x C-m c RET C-x C-w RET 另存为指定编码 (会提示当前文件编码)
C-x RET r (revert-buffer-with-coding-system) 使用指定的编码打开文件
</p>
</div>
</div>

<div id="outline-container-sec-10" class="outline-2">
<h2 id="sec-10"><span class="section-number-2">10</span> 代码阅读</h2>
<div class="outline-text-2" id="text-10">
<p>
gtags
gtags-pop-stack M-*
M-. 跳转到某个符号的实现
M-, 找到引用某个符号的代码
</p>
</div>
</div>

<div id="outline-container-sec-11" class="outline-2">
<h2 id="sec-11"><span class="section-number-2">11</span> Lisp代码编写支持</h2>
<div class="outline-text-2" id="text-11">
<p>
C-u C-M-u 找到第一个不平衡的defun
C-M-q
C-x C-e 求值一个表达式，输出在回显区
C-u C-x C-e 求值一个表达式，输出在当前buffer
M-x debug-on-entry 指定在某个函数调用时进入调试模式，比如mouse-drag-region
</p>
</div>
</div>

<div id="outline-container-sec-12" class="outline-2">
<h2 id="sec-12"><span class="section-number-2">12</span> HELP(帮助)</h2>
<div class="outline-text-2" id="text-12">
<p>
C-h f 查看一个具体的函数的帮助
C-h v 查看一个变量的帮助
C-h k 查看一个键的帮助
C-h p 用主题关键字搜索Emacs Lisp标准库
</p>
</div>
</div>
<div id="outline-container-sec-13" class="outline-2">
<h2 id="sec-13"><span class="section-number-2">13</span> helm</h2>
<div class="outline-text-2" id="text-13">
<p>
如果使用了helm，它既带来了极大的便利性，也带来一些用法的小的变化，比如
你安装了emacs之后，并没有额外配置，你交互式的调用一个函数forward-line,
希望传递一个参数的的方法是C-u 4 M-x forward-line,现在你的做法是M-x（假
定绑定到helm-M-x了），C-n C-p（必要时C-o切换备选区域），将光标移动到希
望选择的命令forward-line，然后按下C-u，输入你希望输入的参数。
</p>
</div>
</div>
<div id="outline-container-sec-14" class="outline-2">
<h2 id="sec-14"><span class="section-number-2">14</span> projectile</h2>
</div>
<div id="outline-container-sec-15" class="outline-2">
<h2 id="sec-15"><span class="section-number-2">15</span> 分类不明确</h2>
<div class="outline-text-2" id="text-15">
<p>
M-; 执行comment-dwim-2 
C-X C- + 使用更大的字体
C-X C- - 使用更小的字体
</p>
</div>
</div>
</div>
<div id="postamble" class="status">
<p class="author">Author: fang yu</p>
<p class="date">Created: 2016-06-24 Fri 16:41</p>
<p class="creator"><a href="http://www.gnu.org/software/emacs/">Emacs</a> 24.5.1 (<a href="http://orgmode.org">Org</a> mode 8.2.10)</p>
<p class="validation"><a href="http://validator.w3.org/check?uri=referer">Validate</a></p>
</div>
</body>
</html>
