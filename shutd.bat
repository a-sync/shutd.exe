::shutd.exe
@echo off

mode 38,6
color 0A
TITLE shutd.exe

shutdown -a
cls

echo.
echo Shutdown Timer
echo.

::ora
set /p ora= - Hours: 
if "%ora%"=="" (
set ora=0
)

::perc
set /p perc= - Minutes: 
if "%perc%"=="" (
set perc=0
)

::masodperc
::set /p mp= - Seconds: 
::if "%mp%"=="" (
::set mp=0
::)

set /a mp=(%ora%*3600)+(%perc%*60)
if "%mp%"=="0" (
goto end
)

::tobbes szam
set oratsz=
if %ora% gtr 1 (
set oratsz=s
)
set perctsz=
if %perc% gtr 1 (
set perctsz=s
)

::leallitas
shutdown -f -s -c "Shutdown in %ora% hour%oratsz%, %perc% minute%perctsz%" -t %mp%
:end
