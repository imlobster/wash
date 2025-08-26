:main_loop

set "wash_input="
title %username%@wash

set "wash_cd=!cd:%WASH_ROOT_DIR%%WASH_HOME_DIR%=~!"

call "%WASH_GLOBAL_DIR%\modules\wash.prompt.bat"

echo.
set /p "wash_input=%WASH_PROMPT_OUTPUT%"

verify > nul

echo !wash_input! >> "%WASH_GLOBAL_DIR%\history\session.txt"

if /i "!wash_input:~0,7!"=="\washed" (
    goto :end
)
if /i "!wash_input:~0,5!"=="\wash" (
    call "%WASH_GLOBAL_DIR%wash.bat"
    exit /b
)

if /i "!wash_input:~0,8!"=="@echo on" (
    rundll32 user32.dll,MessageBeep
    echo [wash] shell not permited to use this command
    goto :main_loop
)
if /i "!wash_input:~0,9!"=="@echo off" (
    rundll32 user32.dll,MessageBeep
    echo [wash] shell not permited to use this command
    goto :main_loop
)

call %wash_input%
goto :main_loop

:end
cls
echo Bye
endlocal
exit