@echo off
color 97
mode con: cols=64 lines=24

set gameName=还没想起来叫什么比较好
set gameVer=0.1.0
set gameDeveloper=P0000324

title %gameName%

:mainMenu
cls
echo %gameName%
echo 版本 %gameVer%
echo ========
echo 1)开始游戏
echo 2)游戏设置?不存在的
echo 3)这是啥?
echo 4)去NM的
echo 或者输入[Q]退出.
set /p userAns=键入一个选项然后按下[Return]键]

if "%userAns%"=="1" (
	goto setPlayerName
)
if "%userAns%"=="2" (
	goto gameSettings
)
if "%userAns%"=="3" (
	goto gameAbout
)
if "%userAns%"=="4" (exit)
if /i "%userAns%"=="Q" (exit)
goto mainMenu

:gameSettings
cls
echo 
echo ========
echo 这年头哪儿来的设置啊?这都是大棚里的设置,你嫌贵我还嫌贵呢
set /p aVerySecretAnswer=
if "%aVerySecretAnswer%"=="lyp" (
	echo 你TM劈我设置是吧!
	pause
	echo 萨日朗!萨日朗!
	pause
)
goto mainMenu

:gameAbout
cls
echo 关于 %gameName%
echo ========
echo %gameName% %gameVer%
echo 由 %gameDeveloper% 开发
pause
goto mainMenu

:setPlayerName
if not "%playerName%"=="" (goto playerNameCheck)
:inputPlayerName
set /p playerName=玩家名?]
if "%playerName%"=="" (goto checkPlayerNameGrumm)
goto playerNameCheck
:checkPlayerNameGrumm
set /p check=真要叫滚木吗?(Y/N)]
if /i "%check%"=="Y" (goto playerNameCheck)
goto setPlayerName
:playerNameCheck
set /p check=玩家名%playerName%,对吧?(Y/N)]
if /i "%check%"=="Y" (goto gameNotes)
if /i "%check%"=="N" (goto inputPlayerName)
cls
goto playerNameCheck
:gameNotes
cls
echo *游玩前注意*
echo 这个游戏没有任何存档系统,不会保存任何东西,包括你的游戏记录.
echo 如果不希望游戏记录丢失,请不要在游玩时关闭游戏,包括按下[Command]+[C].
echo 警告:光敏性癫痫 敬爱的*刘玉平*元帅的光芒不止会导致光敏性癫痫发作,还可能导致你的眼睛被闪瞎.
echo 如果出现不适或旁边刷新敬爱的*刘玉平*元帅,请立刻停止游戏.
echo 为保证体验,游玩前请确认你的键盘是完好的.
pause
goto processBegin

:processBegin
color 79
color 97
set playerHP=100
set nameNPC1=未命名1
cls
pause
cls
echo 这是一个平平无奇的早晨.
pause
cls
echo %playerName% 顶着困意醒来,发现周围有点儿不对.
pause
cls
echo [%playerName%]这是怎么回事?我怎么在这儿?这是哪儿?
pause
cls
echo [%playerName%](看向自己)不对,我怎么......
pause
cls
echo %playerName% 意识到一个难以置信的事实:TA穿越到一个陌生的世界,而且变成兽兽了!
pause
cls
echo [%playerName%]这不可能!我......我这一定是在做梦!
pause
cls
echo [%playerName%]话说我得赶紧起床了,今天我还有事情要做呢!都要忙不过来了!
pause
cls
echo %playerName% 打了自己一下.
pause
cls
echo [%playerName%]嗷!好痛!
pause
cls
echo [%playerName%]完了!这样该不会......
pause
cls
echo %playerName% 陷入沉思.过了一会儿,TA突然好像想到了些什么.
pause
cls
echo [%playerName%](看着自己的爪子)等一下,这样子的话......
pause
cls
echo [%playerName%]我岂不是可以在这个世界扫黑除恶,斩草除根,斩钉截铁,断子绝孙,当上大英雄,走上人(?)生巅峰了!哈哈哈哈(突发恶疾式仰天大笑)......
pause
cls
echo 这时,一只灰狼走了过来.
pause
cls
echo [???](看着你)嗯?你是谁?以前好像没见过你啊.
pause
:processBeginChoice
echo ========
echo 1)我叫 %playerName%
set /p playerAns=输入你的选择:]
if "%playerAns%"=="1" (goto process1)
goto processBeginChoice

:process1
cls
echo [%playerName%]我叫%playerName%.
pause
cls
echo [%playerName%]我本来不应该在这儿的,不知道怎么就穿越过来了,还成了这副样子.
pause
cls
echo [???]这样啊......(沉思,然后抬起头来)真怪.
pause
cls
echo [???]不过既然都那样了,还能说什么呢.我叫%nameNPC1%,很高兴见到你!(伸出一只爪子)
pause
:process1Choice
echo ========
echo 1)伸出爪子去与他握爪
echo 2)什么都不做
set /p playerAns=输入你的选择:]
if "%playerAns%"=="1" (goto process2)
if "%playerAns%"=="2" (goto process3)
goto process1Choice

:process2
cls
echo [%playerName%]我也......很高兴认识你(握爪).
pause
goto process4

:process3
cls
echo [%nameNPC1%]这样啊......不方便握爪也没事儿.
pause
goto process4

:process4
cls
echo [%nameNPC1%]话说既然你是新来的,那一定还没有住所吧.
pause
cls
echo [%nameNPC1%]可不能让你睡大街,要不你跟我走吧,到我家去借住几天,等到政府把房子给你分下来再搬走也无妨.
pause
:process1Choice
echo ========
echo 1)欣然应允,并跟他走
echo 2)婉拒他
set /p playerAns=输入你的选择:]
if "%playerAns%"=="1" (goto process5)
if "%playerAns%"=="2" (goto processEnding2)

:process5
pause

:processEnding1
cls
echo []那你看看后面都是些谁?
pause
cls
echo [%playerName%](转身)啊?他们是......
pause
cls
echo []没错,就是他们,那些帮过你的群众们.没有他们,你到不了这里.
pause
cls
echo [%playerName%]这么说......(耳朵耷拉下来)达成这一切的,并不是我?
pause
cls
echo []也有你的一些功劳.但是,他们的功劳绝对不能被抹灭!
pause
cls
echo []其实,这儿根本没有哪个大英雄,群众都是英雄,都是历史的创造者!
pause
cls
echo [%playerName%]这......(泪水积满双眼)
pause
cls
echo [](扶住你的一边肩膀)继续你的新生活吧,孩子.
pause
cls
echo []其实,平凡的你,才是那个真正的勇士.
pause
cls
echo ********************************
echo 达成结局:
echo              好结局
echo      从群众中来,到群众中去!
echo ********************************
pause
goto mainMenu

:processEnding2
cls
echo []那你看看后面都是些谁?
pause
cls
echo [%nameNPC1%]那好吧,保重!
pause
cls
echo 这一晚下大雪,%playerName% 蜷缩在墙根下.
pause
cls
echo [%playerName%]只要......度过这一晚......(瑟瑟发抖)
pause
cls
echo ......
pause
cls
echo ********************************
echo 达成结局:
echo              坏结局
echo      在大雪之夜,被冻死街头
echo ********************************
pause
goto mainMenu

:bottom
cls
echo 糟糕!您好像到了一个不该到的地方!
echo 赶紧回去吧,这儿没有可玩的!
pause
goto mainMenu