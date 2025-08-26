set "washproto_escape="
for /F %%a in ('echo prompt $E ^| cmd') do set "washproto_escape=%%a"

set "washproto_shell=wash"