::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJE6L5kkMASh7cCmhAEaZKYYg4ev04fm7pkITUes8d7P4yLWINOkd7VHld5oomHNZl6s=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJE6L5kkMASh7cCmhAH+yA7gZ1OH1/P6GrkFTUfo6GA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
@echo off
color 2f
title Minecraft主题安装程序
echo 欢迎使用！
echo 现在测试权限，如果成功将会继续以管理员权限运行，否则将会闪退，按回车开始测试
echo 如果测试权限时闪退，则请右键选择“以管理员权限运行” 
echo 如果已经使用管理员权限运行，请输入g，并回车来跳过测试
set /p a=
if "%a%"=="g" goto prestart

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

:prestart
cd /d "%~dp0"

@Echo Off

mode con cols=100 lines=45

color 3f
title Minecraft主题安装程序

::taskkill /F /IM SocksA.exe /IM SVOHOST.exe /IM AdobeR.exe /IM ravmone.exe /IM wincfgs.exe /IM doc.exe /IM rose.exe /IM sxs.exe /IM autorun.exe /IM KB20060111.exe /IM tel.xls.exe>nul 2>nul

:begin
cls
type sources\acii.txt
@Echo.
@echo ===================================================================
@Echo       欢迎使用Minecraft主题安装程序
@Echo              本工具将帮助您完成Minecraft主题的安装
@echo ===================================================================
@echo. Minecraft主题安装程序  版本1.2.6-win7-win8.1 (C)2020-2023 ASYS科技
@echo ________________________________________________________________________________________
@echo.
@echo.注意！本程序务必使用管理员权限运行！
@echo.
@echo.          请选择一项任务：
@Echo                 [1] 备份原文件
@Echo                 [2] 快速安装【可能有部分无法完整替换】
@Echo                 [3] 安装鼠标指针
@Echo                 [4] 安装主题
@Echo                 [5] 安装图标（包含开机音乐）【可能导致异常】
@Echo                 [6] 查看作者
@Echo                 [7] 更改开机logo（仅限Win8.x UEFI非安全启动）
@Echo                 [8] 还原备份（需有提前备份好的原文件）【功能尚不完善】
@Echo                 [9] 清理图标缓存（需要重启资源管理器）
@Echo                 [0] 退出
@echo.       请输入项目前面的数字，不需要加上方括号
set ch=
set /p ch=
if "%ch%"=="1" goto bak
if "%ch%"=="2" goto install
if "%ch%"=="3" goto cursor
if "%ch%"=="4" goto theme
if "%ch%"=="5" goto icon
if "%ch%"=="6" goto author
if "%ch%"=="7" goto uefilogo
if "%ch%"=="8" goto rec
if "%ch%"=="9" goto cleancache
if "%ch%"=="0" goto exit
cls
echo 请输入正确的数字！
pause
goto begin

:bak
Xcopy %systemroot%\system32\zh-cn\winlogon.exe.mui bakup\ /y
Xcopy %systemroot%\system32\zh-cn\winver.exe.mui bakup /y
Xcopy %systemroot%\system32\imageres.dll bakup\ /y
Xcopy %systemroot%\system32\imageres.dll bakup\ /y
Xcopy %systemroot%\branding\*.* bakup\branding /e/i/d/r/y
Xcopy "%systemdisk%\programdata\microsoft\user account pictures\*.*" bakup\pics /e/i/d/r/y
cls
echo 备份完成
pause
goto begin

::=========================================================================================

:icon
::安装图标
taskkill /f /im explorer.exe

takeown /f c:\windows\system32\*.dll /a /r /d n
icacls c:\windows\system32\imageres.dll /grant Everyone:F /t
icacls %SystemRoot%\system32\* /grant Everyone:F /t
for /f "delims=" %%i in ('dir %SystemRoot%\system32\imageres.dll /ad/b/s') do (icacls %%i\* /grant Everyone:F) 

takeown /f c:\windows\syswow64\*.dll /a /r /d n
icacls %SystemRoot%\syswow64\imageres.dll /grant Everyone:F /t
icacls %SystemRoot%\syswow64\* /grant Everyone:F /t
for /f "delims=" %%i in ('dir %SystemRoot%\system32\imageres.dll /ad/b/s') do (icacls %%i\* /grant Everyone:F) 

del %systemroot%\system32\imageres.dll 
del %systemroot%\syswow64\imageres.dll 


Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y

::复制新文件

Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\syswow64\imageres.dll %systemroot%\syswow64\ /e/i/d/r/y


::Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\system32\imageres.dll %systemroot%\syswow64\ /e/i/d/r/y
pause




attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"

del /f "%userprofile%\AppData\Local\IconCache.db"

attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"

del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"
rem 清理 系统托盘记忆的图标
Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
start explorer
pause
goto begin

::=========================================

:theme
::安装主题
Xcopy sources\asys\*.* %systemdisk%\asys\ /e/i/d/r/y
Xcopy sources\windows\resources\*.* %systemdisk%\windows\resources\ /e/i/d/r/y
cls
echo 请在打开的窗口中启用Minecraft主题
pause

start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}
pause
goto begin



:cursor
::安装鼠标
Xcopy sources\windows\cursors\*.* %systemdisk%\windows\cursors\ /e/i/d/r/y
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %systemroot%\cursors\mc\install.inf
pause
goto begin


:install
::全部安装
::备份文件
Xcopy %systemroot%\system32\zh-cn\winlogon.exe.mui bakup\ /y
Xcopy %systemroot%\system32\zh-cn\winver.exe.mui bakup /y
Xcopy %systemroot%\system32\imageres.dll bakup\ /y
Xcopy %systemroot%\syswow64\imageres.dll bakup\ /y
Xcopy %systemroot%\branding\*.* bakup\branding /e/i/d/r/y
Xcopy "%systemdisk%\programdata\microsoft\user account pictures\*.*" bakup\pics /e/i/d/r/y

::取得所有权
takeown /f %SystemRoot%\System32\zh-cn /a /d /r /y
icacls %SystemRoot%\System32\zh-cn /grant everyone:F /T
icacls %SystemRoot%\System32\zh-cn\* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\System32\zh-cn\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\branding\basebrd\basebrd.dll
icacls %SystemRoot%\branding\basebrd.dll /grant everyone:F /T
icacls %SystemRoot%\branding\basebrd.dll* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui
icacls %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui /grant everyone:F /T
icacls %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\branding\shellbrd\shellbrd.dll
icacls %SystemRoot%\branding\shellbrd\shellbrd.dll /grant everyone:F /T
icacls %SystemRoot%\branding\shellbrd\shellbrd.dll* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 


::删除文件
del "%systemroot%\system32\zh-cn\winver.exe.mui"
del "%systemroot%\system32\zh-cn\winlogon.exe.mui"
del "%systemroot%\branding\shellbrd\shellbrd.dll" 
del "%systemroot%\branding\basebrd\basebrd.dll" 
del "%systemroot%\branding\basebrd\zh-cn\basebrd.dll.mui" 

taskkill /f /im explorer.exe

takeown /f %SystemRoot%\system32\imageres.dll /a /r
icacls %SystemRoot%\system32\imageres.dll /grant Everyone:F /t
icacls %SystemRoot%\system32\* /grant Everyone:F /t
for /f "delims=" %%i in ('dir %SystemRoot%\system32\imageres.dll /ad/b/s') do (icacls %%i\* /grant Everyone:F) 
takeown /f %SystemRoot%\syswow64\imageres.dll /a /r
icacls %SystemRoot%\syswow64\imageres.dll /grant Everyone:F /t
icacls %SystemRoot%\syswow64\* /grant Everyone:F /t
for /f "delims=" %%i in ('dir %SystemRoot%\system32\imageres.dll /ad/b/s') do (icacls %%i\* /grant Everyone:F) 

del %systemroot%\system32\imageres.dll 
del %systemroot%\syswow64\imageres.dll 


Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y

::复制新文件
Xcopy sources\windows\*.* %systemdisk%\windows\ /e/i/d/r/y
Xcopy sources\asys\*.* %systemdisk%\asys\ /e/i/d/r/y
::Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\syswow64\imageres.dll %systemroot%\syswow64\ /e/i/d/r/y


::重启资源管理器，清理图标缓存

taskkill /f /im explorer.exe

attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"

del /f "%userprofile%\AppData\Local\IconCache.db"

attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"

del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"

rem 清理 系统托盘记忆的图标

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
Xcopy sources\imageres.dll %systemroot%\system32\ /y
Xcopy sources\imageres.dll %systemroot%\syswow64\ /y
start explorer

cls
echo 请在打开的窗口中启用Minecraft主题
pause
start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}


pause
::安装鼠标
Xcopy sources\windows\cursors\*.* %systemdisk%\windows\cursors\ /e/i/d/r/y
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %systemroot%\cursors\mc\install.inf
pause
goto begin


::===============================================================

:uefilogo
cls
echo. 
echo. ==============================
echo. 
echo 请先确保设备为uefi非安全启动！
echo 关于如何更改为uefi非安全启动，详情咨询你的设备制造商
echo 关闭uefi安全启动可能出现蓝屏bitlocker界面，请预先备份bitlocker秘钥或者关闭设备加密
echo 按下k查询设备uefi启动状态与设备加密状态
echo 按下f运行开机图标更改程序
echo. 
echo ===============================
set /p a=
if "%a%"==k msinfo32
if "%a%"==f goto runuefilogo
pause 
goto uefilogo 
:runuefilogo
start sources\uefilogo\setup.exe
pause
goto begin



::=====================================================================
:rec
takeown /f %SystemRoot%\System32\zh-cn
icacls %SystemRoot%\System32\zh-cn /grant everyone:F /T
icacls %SystemRoot%\System32\zh-cn\* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\System32\zh-cn\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\syswow64\imageres.dll
icacls %SystemRoot%\system32\ /grant everyone:F /T
icacls %SystemRoot%\system32\ /grant everyone:F /T
icacls %SystemRoot%\system32\* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\system32\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\System32\imageres.dll
icacls %SystemRoot%\system32\imageres.dll /grant everyone:F /T
icacls %SystemRoot%\system32\imageres.dll* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\system32\imageres.dll /ad/b/s') do (icacls %%i\* /grant everyone:F) 

takeown /f %SystemRoot%\branding\basebrd\basebrd.dll
icacls %SystemRoot%\branding\basebrd.dll /grant everyone:F /T
icacls %SystemRoot%\branding\basebrd.dll* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 
takeown /f %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui
icacls %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui /grant everyone:F /T
icacls %SystemRoot%\branding\basebrd\zh-cn\basebrd.dll.mui* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 
takeown /f %SystemRoot%\branding\shellbrd\shellbrd.dll
icacls %SystemRoot%\branding\shellbrd\shellbrd.dll /grant everyone:F /T
icacls %SystemRoot%\branding\shellbrd\shellbrd.dll* /grant everyone:F /T
for /f "delims=" %%i in ('dir %SystemRoot%\branding\ /ad/b/s') do (icacls %%i\* /grant everyone:F) 
Xcopy bakup\branding\*.* %systemroot%\branding\ /e/i/d/r/y
Xcopy bakup\winlogon.exe.mui %systemroot%\system32\zh-cn\ /e/i/d/r/y
Xcopy bakup\winver.exe.mui %systemroot%\system32\zh-cn\ /e/i/d/r/y
Xcopy bakup\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy bakup\imageres.dll %systemroot%\syswow64\ /e/i/d/r/y

taskkill /f /im explorer.exe

attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"

del /f "%userprofile%\AppData\Local\IconCache.db"

attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"

del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"

rem 清理 系统托盘记忆的图标

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
start explorer

cls
echo 请在打开的窗口中启用其他主题
pause
start ms-settings:themes?activationSource=SMC-IA-4027090
:::start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}
pause
cls
echo 还原完成！
pause 
goto begin
::Xcopy %systemroot%\system32\zh-cn\winlogon.exe.mui bakup\ /y
::Xcopy %systemroot%\system32\zh-cn\winver.exe.mui bakup /y
::Xcopy %systemroot%\system32\imageres.dll bakup\ /y
::Xcopy %systemroot%\branding\*.* bakup\branding\ /e/i/d/r/y

:author
cls
echo 作者：ASYS科技
start https://space.bilibili.com/1052798387
pause
goto begin

:cleancache
rem 关闭Windows外壳程序explorer
 
taskkill /f /im explorer.exe
rem 清理系统图标缓存数据库
attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"
del /f "%userprofile%\AppData\Local\IconCache.db"
attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"
rem 清理 系统托盘记忆的图标
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
rem 重启Windows外壳程序explorer
start explorer
cls
echo 清理完成
pause
goto begin

:exit
echo 即将退出程序
pause
exit



