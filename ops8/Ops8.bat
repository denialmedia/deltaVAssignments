
::#    Script Name: Ops Challenge 8
::#    Author: Jason Kingery
::#    Date of last revision 06/19/21
::#    Description of purpose: Backup Desktop to drive s:

@echo off
:: variables
set drive=S:\Backup
set backupcmd=xcopy /s /c /d /e /h /i /r /y 
echo ### Backing up Desktop.
%backupcmd% "%USERPROFILE%\Desktop" "%drive%\Desktop"
echo Backup Complete!
@pause