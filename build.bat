:: build shutd.exe
@echo on

set WINRAR="%ProgramFiles%\WinRAR\WinRAR.exe"

%WINRAR% a -iadm -ibck -y -m0 -ep -sfx -z"sfx.conf" -iicon"shutd.ico" shutd.exe "shutd.bat"
