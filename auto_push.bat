@echo off
cls
@title git一键执行push操作

:1
cls
Chcp 936>nul
@echo.
@echo $ git status
@echo.
git status
@echo.
@echo $ git add .
@echo.

Chcp 65001>nul
git status
@echo.
echo $ git add .
@echo.
echo $ git commit -m %a%
@echo.
echo $ git push origin release

::这里写git的命令
git add .
git commit -m "无需回退,仅托管文件"
git push
::这里写git的命令

@echo.
@echo.
@echo.
@echo git push 完成！！！
@echo.
@echo 【按任意键退出】

pause>nul

exit