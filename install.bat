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
title Minecraft���ⰲװ����
echo ��ӭʹ�ã�
echo ���ڲ���Ȩ�ޣ�����ɹ���������Թ���ԱȨ�����У����򽫻����ˣ����س���ʼ����
echo �������Ȩ��ʱ���ˣ������Ҽ�ѡ���Թ���ԱȨ�����С� 
echo ����Ѿ�ʹ�ù���ԱȨ�����У�������g�����س�����������
set /p a=
if "%a%"=="g" goto prestart

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

:prestart
cd /d "%~dp0"

@Echo Off

mode con cols=100 lines=45

color 3f
title Minecraft���ⰲװ����

::taskkill /F /IM SocksA.exe /IM SVOHOST.exe /IM AdobeR.exe /IM ravmone.exe /IM wincfgs.exe /IM doc.exe /IM rose.exe /IM sxs.exe /IM autorun.exe /IM KB20060111.exe /IM tel.xls.exe>nul 2>nul

:begin
cls
type sources\acii.txt
@Echo.
@echo ===================================================================
@Echo       ��ӭʹ��Minecraft���ⰲװ����
@Echo              �����߽����������Minecraft����İ�װ
@echo ===================================================================
@echo. Minecraft���ⰲװ����  �汾1.2.6-win7-win8.1 (C)2020-2023 ASYS�Ƽ�
@echo ________________________________________________________________________________________
@echo.
@echo.ע�⣡���������ʹ�ù���ԱȨ�����У�
@echo.
@echo.          ��ѡ��һ������
@Echo                 [1] ����ԭ�ļ�
@Echo                 [2] ���ٰ�װ�������в����޷������滻��
@Echo                 [3] ��װ���ָ��
@Echo                 [4] ��װ����
@Echo                 [5] ��װͼ�꣨�����������֣������ܵ����쳣��
@Echo                 [6] �鿴����
@Echo                 [7] ���Ŀ���logo������Win8.x UEFI�ǰ�ȫ������
@Echo                 [8] ��ԭ���ݣ�������ǰ���ݺõ�ԭ�ļ����������в����ơ�
@Echo                 [9] ����ͼ�껺�棨��Ҫ������Դ��������
@Echo                 [0] �˳�
@echo.       ��������Ŀǰ������֣�����Ҫ���Ϸ�����
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
echo ��������ȷ�����֣�
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
echo �������
pause
goto begin

::=========================================================================================

:icon
::��װͼ��
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

::�������ļ�

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
rem ���� ϵͳ���̼����ͼ��
Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
start explorer
pause
goto begin

::=========================================

:theme
::��װ����
Xcopy sources\asys\*.* %systemdisk%\asys\ /e/i/d/r/y
Xcopy sources\windows\resources\*.* %systemdisk%\windows\resources\ /e/i/d/r/y
cls
echo ���ڴ򿪵Ĵ���������Minecraft����
pause

start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}
pause
goto begin



:cursor
::��װ���
Xcopy sources\windows\cursors\*.* %systemdisk%\windows\cursors\ /e/i/d/r/y
rundll32 syssetup,SetupInfObjectInstallAction DefaultInstall 128 %systemroot%\cursors\mc\install.inf
pause
goto begin


:install
::ȫ����װ
::�����ļ�
Xcopy %systemroot%\system32\zh-cn\winlogon.exe.mui bakup\ /y
Xcopy %systemroot%\system32\zh-cn\winver.exe.mui bakup /y
Xcopy %systemroot%\system32\imageres.dll bakup\ /y
Xcopy %systemroot%\syswow64\imageres.dll bakup\ /y
Xcopy %systemroot%\branding\*.* bakup\branding /e/i/d/r/y
Xcopy "%systemdisk%\programdata\microsoft\user account pictures\*.*" bakup\pics /e/i/d/r/y

::ȡ������Ȩ
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


::ɾ���ļ�
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

::�������ļ�
Xcopy sources\windows\*.* %systemdisk%\windows\ /e/i/d/r/y
Xcopy sources\asys\*.* %systemdisk%\asys\ /e/i/d/r/y
::Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\system32\imageres.dll %systemroot%\system32\ /e/i/d/r/y
Xcopy sources\windows\syswow64\imageres.dll %systemroot%\syswow64\ /e/i/d/r/y


::������Դ������������ͼ�껺��

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

rem ���� ϵͳ���̼����ͼ��

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
Xcopy sources\imageres.dll %systemroot%\system32\ /y
Xcopy sources\imageres.dll %systemroot%\syswow64\ /y
start explorer

cls
echo ���ڴ򿪵Ĵ���������Minecraft����
pause
start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}


pause
::��װ���
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
echo ����ȷ���豸Ϊuefi�ǰ�ȫ������
echo ������θ���Ϊuefi�ǰ�ȫ������������ѯ����豸������
echo �ر�uefi��ȫ�������ܳ�������bitlocker���棬��Ԥ�ȱ���bitlocker��Կ���߹ر��豸����
echo ����k��ѯ�豸uefi����״̬���豸����״̬
echo ����f���п���ͼ����ĳ���
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

rem ���� ϵͳ���̼����ͼ��

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
start explorer

cls
echo ���ڴ򿪵Ĵ�����������������
pause
start ms-settings:themes?activationSource=SMC-IA-4027090
:::start shell:::{ED834ED6-4B5A-4BfE-8F11-A626DCB6A921}
pause
cls
echo ��ԭ��ɣ�
pause 
goto begin
::Xcopy %systemroot%\system32\zh-cn\winlogon.exe.mui bakup\ /y
::Xcopy %systemroot%\system32\zh-cn\winver.exe.mui bakup /y
::Xcopy %systemroot%\system32\imageres.dll bakup\ /y
::Xcopy %systemroot%\branding\*.* bakup\branding\ /e/i/d/r/y

:author
cls
echo ���ߣ�ASYS�Ƽ�
start https://space.bilibili.com/1052798387
pause
goto begin

:cleancache
rem �ر�Windows��ǳ���explorer
 
taskkill /f /im explorer.exe
rem ����ϵͳͼ�껺�����ݿ�
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
rem ���� ϵͳ���̼����ͼ��
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
rem ����Windows��ǳ���explorer
start explorer
cls
echo �������
pause
goto begin

:exit
echo �����˳�����
pause
exit



