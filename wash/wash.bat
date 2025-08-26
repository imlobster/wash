@echo off

chcp 65001

set "WASH_GLOBAL_DIR=%~dp0"

setlocal EnableDelayedExpansion
call "%WASH_GLOBAL_DIR%\modules\wash.init.bat"

echo %username% wash session %date% %time% > "%WASH_GLOBAL_DIR%\history\session.txt"

call "%WASH_GLOBAL_DIR%\modules\wash.wash.bat"

endlocal
exit