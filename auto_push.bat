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
set /p a= $ git commit -m 
if "%a%"=="" (
    @echo 输入不可为空，请重新输入说明信息！！！
    goto 1
)

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
git commit -m %a%
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