call "%WASH_GLOBAL_DIR%\modules\wash.protocol.bat"

set "WASH_CONFIG_FILE=%WASH_GLOBAL_DIR%\config.conf"
set "WASH_THEMES_DIR=%WASH_GLOBAL_DIR%\themes"

set "WASH_COLORS="
set "WASH_THEME_NAME="
set "WASH_PROMPT_TEMPLATE="

set "WASH_ROOT_DIR="
set "WASH_INIT_DIR="
set "WASH_HOME_DIR="
set "WASH_APP_DIR="


for /f "tokens=1,2 delims==" %%a in ('type "%WASH_CONFIG_FILE%"') do (
    if /i "%%a"=="theme" set "WASH_THEME_NAME=%%b"
    if /i "%%a"=="init_dir" set "WASH_INIT_DIR=%%b"
    if /i "%%a"=="home_dir" set "WASH_HOME_DIR=%%b"
    if /i "%%a"=="root" set "WASH_ROOT_DIR=%%b"
    if /i "%%a"=="color" set "WASH_COLORS=%%b"
    if /i "%%a"=="app_dir" set "WASH_APP_DIR=%%b"
)

if not defined WASH_ROOT_DIR (
    set "WASH_ROOT_DIR=C:"
)

if not defined WASH_INIT_DIR (
    set "WASH_INIT_DIR=%userprofile%"
)

if not defined WASH_APP_DIR (
    set "WASH_APP_DIR=\"
)

%WASH_ROOT_DIR%
cd "%WASH_ROOT_DIR%%WASH_INIT_DIR%"

for /f "usebackq delims=" %%a in ("%WASH_THEMES_DIR%\%WASH_THEME_NAME%.wash-theme") do (
    set "WASH_PROMPT_TEMPLATE=!WASH_PROMPT_TEMPLATE!%%a"
)

if not defined WASH_COLORS (
    color f0
    goto :end_checkcolors
)

color %WASH_COLORS%

:end_checkcolors

cls

if not defined WASH_THEME_NAME (
    echo [wash] theme not found
    set "WASH_PROMPT_TEMPLATE={%%{cd}%%} > "
    goto :end_checktheme
)

if not defined WASH_PROMPT_TEMPLATE (
    echo [wash] theme file not found or corrupted
    set "WASH_PROMPT_TEMPLATE={%%{cd}%%} > "
)

:end_checktheme