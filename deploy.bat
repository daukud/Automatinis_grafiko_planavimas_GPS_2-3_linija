rem backup

xcopy /y /f %destFolder1%%destFileName1%.xlsm %destBackupFolder1%%destFileName1%.%BUILD_NUMBER%.xlsm

rem copy

xcopy /y /f %srcFileName1% %destFolder1%%destFileName1%.xlsm
