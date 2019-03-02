@echo off
set pass=
set count=0
set random_char=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789

:start
set /a num = (%random% %% 62)
call set char=%%random_char:~%num%,1%%
set pass=%pass%%char%
set /a count=%count%+1
if %count% lss 10 goto :start

ren "*.exe" %pass%".exe"
%pass%".exe"