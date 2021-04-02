To read ReadMe.txt normally, please open it with Sublime Text.
为正常阅读 ReadMe.txt，请使用 Sublime Text 打开。

--------------------------------------------------------------------
# Contra Director
Coded by SalHe
SalHe@qq.com
Copyright(C) SalHe, All Rights Resvered

--------------------------------------------------------------------
# Functions/功能
V20160329: 
Preview level mapping/预览地图
Preview enemy’s position/预览敌人位置

V20160507:
Edit level mapping/编辑地图

V20160513:
Parsing graphics data/解析图形数据

V20160522:
Fix problem on parsing graphics data up/解决图形解析问题

--------------------------------------------------------------------
# Thanks/感谢
Trax & CZXIn & 凌晨星光 & Ex_DirectUI & Steven Monaco

--------------------------------------------------------------------
# Reference/参考
Trax: Contra Hacking Guide & Enemy Attributes
      http://www.bwass.org/romhack/contra/
Steven Monaco: Console Graphics Document
               http://mrclick.zophar.net/TilEd/download/consolegfx.txt

--------------------------------------------------------------------
# QAF/问题
Q: How to set language the software use?
   如何设置该软件所使用语言？
A: Open .\config\Appliction.ini, set value of item Location.Language to name of language.And the language file is in .\language\%LanguageName%.txt.You youself can write a language. Normally, there are two language files, are for Chinese and English.
   打开 .\config\Appliction.ini, 设置 Location.Language 项的值为语言名字。语言文件位于 .\language\%LanguageName%.txt。你可以自己编写语言文件。一般软件会自带两种语言文件，中文和英文。
-----------------------------------
Q: I found some question and I have some advice! 
   我发现了些问题还有点建议！
A: I'm very gald to hear it! If you've found some question or you have some advice, please let me know.
   我很高兴你发现了！如果你有任何问题或者建议，请告诉我。

--------------------------------------------------------------------
# Using guide/使用技巧
 * Some basic using methods neeedn't to be mentioned. Such as open file, save file... everybody can do them. I want to tell you some skill.
   一些基本的操作就没有说的必要了把，什么打开文件了，保存文件了。。。大家都会的。我想说的是一些小技巧。

1.How to fill many places with a same block fast: Keep Shift downed and move you mouse.
  如何快速用一个 Block 填充多处：按住 Shift 移动鼠标。

2.How to lock mapping, because I don't want to move it: Make Lock checked, it's on the left of block selected and under Edit mode.
  怎么锁定地图，因为我不想让它移来移去的：选中 锁定，它位于 选中Block 的左边，编辑模式 的下面。

--------------------------------------------------------------------
# History/历史

-----------------------------------
2016/04/02

Contra Director Preview version is completely, or nearly.
It can display level's layout and enemy's position, but can't edit.
Now Contra Director can adapt Contra of US version perfectly, other version may not, specially hacked rom.
Japanese Contra can be adapted by Contra Director, but some trouble with graphics. And I don't know whether it's caused by problem of  Contra Director-self because it's not clear to be seen.
And I want to take graphics from Contra to display, but I have never learned programming about FC/NES. Although I take it, I won't how to display it correctly.
So if you know how to do, could you please tell that? :)
Contra Director For Editing version will came out soon, or much later, because I'm getting for my ZhongKao.
Thanks for waitting! :D

Contra Director 预览版本基本完成。
现在可以显示地图布局以及敌人位置，但是不可以编辑。
现在 Contra Director 可以完美适应美版魂斗罗，其他版本可能不行，特别是修改过的。
日版魂斗罗可以被 Contra Director 适应，但是在图形上有些问题。我不知道是不是 Contra Director 自身读取的问题。
我想从魂斗罗中提取图形，但是我没学习过FC/NES编程。所以即使我提取到了，我也不知道如何正确显示。
所以，如果你了解的话可以指点一下吗？ :)
Contra Director 编辑版将会不久发布，也可能很久，因为我在准备中考。
谢谢期待！:D

--------------------------------------------------------------------
2016/05/07

Contra Director Edition for Level layout is completely, or nearly.
It hasn't been updated for mostly a month since last time because of my study....:D
To update this function(edit level's layout) took some times yesterday, and I solved some bugs.
Now it can display&edit level's layout and display enemy's position.
If you want to expand Contra, I think you should use "Contra Expansion.NES". It's patched with "Contra Expansion.ips" by WinIPS. And before expanding it, you should do some works. You yourself must add section address for the level you want to expand. The function isn't implemented by me. Eh, I have too little time to do this now. So if you are interested in this, and you have ability to do it, you can ask me for source code of Contra Director(It's programmed with Easy-Language/易语言, or I will pack source code into attachment).
And my troubles about taking graphics from Contra, some of them are solved. Rest of them are definition of color of cell. I don't how to connect cell with palette. I hope you can help me:)

Contra Director 地图编辑版基本完成。
几乎一个月没写了，主要因为学习....:D
昨天花了些时间来更新这个功能（编辑地图布局），我还解决了一些bug。
现在可以显示&编辑地图布局，显示敌人位置。
如果你想扩展魂斗罗，我觉得你应该使用“Contra Expansion.NES”。这是用WinIPS打的补丁，补丁文件是“Contra Expansion.ips”。在扩展以前，你还要干点事儿。你必须手动为你想扩展的关卡添加关卡页（Section）地址。这个功能我没去实现。额，我时间不够，暂时就没法去做了。如果你对这个感兴趣，并且有能力完成的话，可以找我要源码的（是用 Easy-Language/易语言 写的，可能我会把源码放在附件里的）。
关于我从魂斗罗提取图形的问题，其中一些已经解决了。剩下的问题是Cell的颜色的定义。我不晓得怎么把调色板和cell联系起来。希望你能帮助我:)

--------------------------------------------------------------------
2016/05/13

The function updated this time is directly parsing graphics from Contra ROM file.
But it's not enough perfect. The main problem is on uncompressing graphics data for PPU.
And I will try to solve it. But in short time, I can't do it.
Maybe some months later I can complete it, because of something...
For using this function, open Contra firstly, and click my head.
Eh, it's like a rabbit, isn't it?
Maybe you still don't konw what it is, and now, I say it in a piece of words.
It's on left-up corner of Contra Director, And there is a word "SalHe" written on the head.
I think you must know where it is. If not, you are really foolish :D
Hah, that is a joke, don't think more.
And the result parsed is saved in .\Results.

本次更新功能是直接从魂斗罗的ROM文件中提取图形。
但是这个功能还不够完善，主要问题出在解压图形数据到PPU上。
我会去解决的，但是短时间内是不行的了。
估计数月后我可以完成，因为一些事情要忙...
使用方法是，先打开魂斗罗，然后点击我的头像。
额，看起来像只兔子，不是么？
也许你还是不晓得它是什么鬼，我就用一句话说好了。
它在 Contra Director 的左上角，有个单词“SalHe”被写在上面。
我想你肯定知道它在哪了。如果还不知道，那你真够笨的 :D
哈，开个玩笑了，别当真哈。
解析的结果存放在 .\Results 里。

--------------------------------------------------------------------
2016/05/22

Today when I'm optimizing algorithm of uncompressing graphics data, I found why parsing graphics fail at last...
That's interesting, it's a pointer covertion problem. I forgot to add 1 for new PPU address.
Follow is code fixed:
  ppuOffset ＝ 合并整数 (取字节集数据 (Contra, #短整数型, ConvertPointer (ptr)), 0) ＋ 1 ' Yes. Where it's fixed is " + 1" at the end of code.
But now I want not to release it. Because the function updated is only one and it's for a bug fixing.
Okay, I think I am closer to success. And later I will go to school for night lesson.
Now there is some problem on drawing blocks. It's about colors(palette). 
And the palette I used is for Level 1. So the blocks of the other levels are different from original game in colors...
After that, main task is editting enemy. Eh, I will do it, maybe several months later...:D
The students are hard...Hah.

今天当我在优化图形解压算法时，我终于发现图形解析失败的问题了...
说起来也很有趣，就是个指针转换问题。我忘了给新PPU地址加1了。
修复后的代码是酱紫的：
  ppuOffset ＝ 合并整数 (取字节集数据 (Contra, #短整数型, ConvertPointer (ptr)), 0) ＋ 1 ' 嗯，没错，就是在屁股那里多了个“ + 1”。
现在我还不想发布它，因为更新的功能就一个而且还是修复bug。
嗯，我觉得我离成功又进了。过会儿我就得去学校准备晚自习了。
现在在绘制Blocks上还有点问题。和颜色（调色板）有关。
我用都的是1关的调色板，所以别的关卡的Blocks看起来和原游戏的颜色不一样...
这之后的话，首要任务就是编辑敌人了。额，估计几个月后我会去弄的把...:D
学生真苦啊...哈哈。