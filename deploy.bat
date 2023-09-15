@echo off

rem debug

rem set BUILD_NUMBER=123

rem set destFolder1=\\ma1\Gamybos_padalinys\Gamybos_planavimo_skyrius\Automatinis grafiko planavimas 2-3 linija\test\

rem set destFileName1=Planas 2-3 linija 37 sav DERINIMUI

rem set destBackupFolder1=\\ma1\Gamybos_padalinys\Gamybos_planavimo_skyrius\Automatinis grafiko planavimas 2-3 linija\test\backup\

rem set srcFileName1=Planas 2-3 linija 37 sav DERINIMUI TEST

rem print variables

echo BUILD_NUMBER %BUILD_NUMBER%
echo.
echo destFolder1 %destFolder1%
echo.
echo destFileName1 %destFileName1%
echo.
echo destBackupFolder1 %destBackupFolder1%
echo.
echo srcFileName1 %srcFileName1%
echo.
echo.
echo deploy:
echo.

rem backup

xcopy /y /f "%destFolder1%%destFileName1%.xlsm" "%destBackupFolder1%%destFileName1%.%BUILD_NUMBER%.xlsm*"

if %errorlevel% neq 0 (
	echo %errorlevel%
	exit 100
)

rem copy

xcopy /y /f "%srcFileName1%.xlsm" "%destFolder1%%destFileName1%.xlsm"

if %errorlevel% neq 0 (
	echo %errorlevel%
	exit 100
)

rem pause
