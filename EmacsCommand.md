<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
</head>
<body>
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

<p>以下大部分命令是在本配置文件基础上可用的</p>

<h1 id="文件和目录aidsec-1namesec-1a">文件和目录<a id="sec-1" name="sec-1"></a></h1>

<p>C-x C-f find-file</p>

<p>C-x C-v find-alternate-file</p>

<p>C-x i insert-file 会在光标处插入一个文件的内容</p>

<p>C-x C-s save-buffer</p>

<p>C-x C-w write-file</p>

<p>C-x C-c save-buffers-kill-emacs 存储所有修改，退出emacs</p>

<p>C-z 挂起emacs</p>

<p>S-^ kill-some-buffers</p>

<h2 id="helm-files.elaidsec-1-1namesec-1-1a">Helm-files.el<a id="sec-1-1" name="sec-1-1"></a></h2>

<p>C-x C-f 把光标放到一个buffer中符合文件名规则的字符串上(/home/usr/a.txt)，C-x C-f可以打开一个文件</p>

<h2 id="目录遍历aidsec-1-2namesec-1-2a">目录遍历<a id="sec-1-2" name="sec-1-2"></a></h2>

<p>C-x d打开目录后，把光标放到列表中的子目录，i 命令可以在本buffer展开子目录的内容</p>

<h1 id="光标移动aidsec-2namesec-2a">光标移动<a id="sec-2" name="sec-2"></a></h1>

<p>C-f forward-char 向前移动一个字符</p>

<p>C-b backward-char 向后移动一个字符</p>

<p>C-p previous-line</p>

<p>C-n next-line</p>

<p>M-f forward-word</p>

<p>M-b backwoard-word</p>

<p>C-a beginning-of-line</p>

<p>C-e end-of-line</p>

<p>M-a backward-sentence</p>

<p>M-e org-forward-sentence</p>

<p>C-v scroll-up</p>

<p>M-v Scroll-down</p>

<p>C-x [ backward-page</p>

<p>C-x ] forward-page</p>

<p>M-&gt; end-of-buffer</p>

<p>M-&lt; beginning-of-buffer</p>

<p>C-l recenter</p>

<p>M-(a number) digi-argument </p>

<h2 id="smartparens.elaidsec-2-1namesec-2-1a">smartparens.el<a id="sec-2-1" name="sec-2-1"></a></h2>

<p>C-M-f</p>

<p>C-M-b</p>

<p>C-M-k</p>

<h2 id="lisp.elaidsec-2-2namesec-2-2a">lisp.el<a id="sec-2-2" name="sec-2-2"></a></h2>

<p>C-M-@ mark-sexp (备注C-M-SPC我一直用不了）</p>

<p>C-M-a beginning-of-defun 到一个函数的前面来</p>

<p>C-M-e end-of-defun</p>

<p>C-M-h mark-defun</p>

<h2 id="whitespace.elaidsec-2-3namesec-2-3a">whitespace.el<a id="sec-2-3" name="sec-2-3"></a></h2>

<p>C-c w 显示空格</p>

<h2 id="discover-my-major.elaidsec-2-4namesec-2-4a">discover-my-major.el<a id="sec-2-4" name="sec-2-4"></a></h2>

<p>C-h h m discover-my-major</p>

<h1 id="文本编辑aidsec-3namesec-3a">文本编辑<a id="sec-3" name="sec-3"></a></h1>

<h2 id="删除命令aidsec-3-1namesec-3-1a">删除命令<a id="sec-3-1" name="sec-3-1"></a></h2>

<p>Del backward-delete char</p>

<p>C-d delete-char</p>

<p>M-d kill-word</p>

<p>M-<DEL> backard-kill-word</p>

<p>C-k kill-line</p>

<p>M-k kill-sentence</p>

<p>C-x Del backard-kill-sentence</p>

<p>C-y yank</p>

<p>C-w kill-region</p>

<pre><code>backward-kill-paragraph
kill-paragraph
</code></pre>

<h2 id="段落和区域操作aidsec-3-2namesec-3-2a">段落和区域操作<a id="sec-3-2" name="sec-3-2"></a></h2>

<p>C-@ set-mark Mark the beginning (or end) of a region.<br/>
C-Spaceset-mark Ibid. </p>

<p>C-x C-p mark-page Mark the current page. </p>

<p>C-x C-x exchange-point-and-make Exchange the location of the cursor and the mark. </p>

<p>C-x h mark-whole-buffer Mark the current buffer. </p>

<p>M-q fill-paragraph Reset the paragraph. 编写一长串文本时，这个命令自动把文档处理为宽度不超过80列的文本块</p>

<p>M-g fill-region Reformatindividual paragraphs with region.</p>

<p>M-h mark-paragraph Mark select paragraph. </p>

<p>C-c i &#8217;ident-region-or-buffer </p>

<p>C-u C-@ 返回之前的记录过得位点</p>

<h2 id="位置变换aidsec-3-3namesec-3-3a">位置变换<a id="sec-3-3" name="sec-3-3"></a></h2>

<p>C-t transpose-chars </p>

<p>M-t transpose-words 比较智能的交换连个单词</p>

<p>C-x C-t transpose-lines</p>

<p>transpose-sentences</p>

<p>transpose-paragraphs</p>

<h2 id="大小写处理aidsec-3-4namesec-3-4a">大小写处理<a id="sec-3-4" name="sec-3-4"></a></h2>

<p>M-c capitalize-word</p>

<p>M-u upcase-word</p>

<p>M-l downcase-word</p>

<p>C-x C-l downcase-region</p>

<p>C-x C-u upcase-region</p>

<h2 id="矩形操作（列操作）aidsec-3-5namesec-3-5a">矩形操作（列操作）<a id="sec-3-5" name="sec-3-5"></a></h2>

<p>emacs以C-x r开头的命令来进行矩形操作。先用C-space或者C-@设一个mark，移动光标到另一点，用以下命令进行列操作：</p>

<p>C-x r k 剪切一个矩形块</p>

<p>C-x r y 拷贝/粘贴一个矩形块</p>

<p>C-x r o 插入一个矩形块</p>

<p>C-x r c 清除一个矩形块(使其变成空白)</p>

<p>C-x r t 在选定区域的所有列前插入样的字符</p>

<p>query-replace 替换时确认</p>

<h2 id="搜索aidsec-3-6namesec-3-6a">搜索<a id="sec-3-6" name="sec-3-6"></a></h2>

<p>C-s isearch-forward</p>

<p>C-r isearch-backward</p>

<p>Meta Stop a successful search</p>

<p>C-g Stop searching and return to the starting point.</p>

<p>Del Delete an incorrect character whilst searching.</p>

<h1 id="撤销停止操作aidsec-4namesec-4a">撤销停止操作<a id="sec-4" name="sec-4"></a></h1>

<p>C-g keyboard-quit</p>

<p>C-x u advertised-undo</p>

<p>S-u revert-buffer</p>

<h1 id="全局grepaidsec-5namesec-5a">全局grep<a id="sec-5" name="sec-5"></a></h1>

<p>helm</p>

<p>helm-do-grep</p>

<p>C-c h M g s</p>

<p>projectile</p>

<p>projectile-grep</p>

<p>C-c p s g</p>

<h1 id="buffer控制aidsec-6namesec-6a">buffer控制<a id="sec-6" name="sec-6"></a></h1>

<p>S-u revert-buffer</p>

<p>C-x C-q Read-Only mode</p>

<p>discovery-my-major C-h m</p>

<p>使用helm-X命令，要从Emacs Command History跳到Emacs Command使用C-o</p>

<h1 id="frame和buffer的控制aidsec-7namesec-7a">frame和buffer 的控制<a id="sec-7" name="sec-7"></a></h1>

<p>C-x 5 2 开启一个新的frame（window）</p>

<p>C-x 5 0 关掉当前frame</p>

<p>C-x 4 c - 貌似打开同一个buffer,并且不影响前一个</p>

<h1 id="文本阅读aidsec-8namesec-8a">文本阅读<a id="sec-8" name="sec-8"></a></h1>

<p>C-x C-q 进入只读模式</p>

<h1 id="编码aidsec-9namesec-9a">编码<a id="sec-9" name="sec-9"></a></h1>

<p>C-x C-m f utf&#8211;8-unix RET （set-buffer-file-coding-system） - 当你存储文件时改变文件的编码</p>

<p>C-x C-m c RET C-x C-w RET 另存为指定编码 (会提示当前文件编码)</p>

<p>C-x RET r (revert-buffer-with-coding-system) 使用指定的编码打开文件</p>

<h1 id="代码阅读aidsec-10namesec-10a">代码阅读<a id="sec-10" name="sec-10"></a></h1>

<p>gtags</p>

<p>gtags-pop-stack M-*</p>

<p>M-. 跳转到某个符号的实现</p>

<p>M-, 找到引用某个符号的代码</p>

<h1 id="lisp代码编写支持aidsec-11namesec-11a">Lisp代码编写支持<a id="sec-11" name="sec-11"></a></h1>

<p>C-u C-M-u 找到第一个不平衡的defun</p>

<p>C-M-q</p>

<p>C-x C-e 求值一个表达式，输出在回显区</p>

<p>C-u C-x C-e 求值一个表达式，输出在当前buffer</p>

<p>M-x debug-on-entry 指定在某个函数调用时进入调试模式，比如mouse-drag-region</p>

<h1 id="help帮助aidsec-12namesec-12a">HELP(帮助)<a id="sec-12" name="sec-12"></a></h1>

<p>C-h f 查看一个具体的函数的帮助</p>

<p>C-h v 查看一个变量的帮助</p>

<p>C-h k 查看一个键的帮助</p>

<p>C-h p 用主题关键字搜索Emacs Lisp标准库</p>

<h1 id="helmaidsec-13namesec-13a">helm<a id="sec-13" name="sec-13"></a></h1>

<p>如果使用了helm，它既带来了极大的便利性，也带来一些用法的小的变化，比如</p>

<p>你安装了emacs之后，并没有额外配置，你交互式的调用一个函数forward-line,</p>

<p>希望传递一个参数的的方法是C-u 4 M-x forward-line,现在你的做法是M-x（假</p>

<p>定绑定到helm-M-x了），C-n C-p（必要时C-o切换备选区域），将光标移动到希</p>

<p>望选择的命令forward-line，然后按下C-u，输入你希望输入的参数。</p>

<h1 id="projectileaidsec-14namesec-14a">projectile<a id="sec-14" name="sec-14"></a></h1>

<h1 id="分类不明确aidsec-15namesec-15a">分类不明确<a id="sec-15" name="sec-15"></a></h1>

<p>M-; 执行comment-dwim&#8211;2 </p>

<p>C-X C- + 使用更大的字体</p>

<p>C-X C- - 使用更小的字体</p>

</body>
</html>
