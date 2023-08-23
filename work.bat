@echo off
setlocal

set source=image1.png
set zipfile=output.zip

rem Check if 7-Zip is installed
set "zip7=C:\Program Files\7-Zip\7z.exe"
if not exist "%zip7%" (
    echo 7-Zip is not installed. Please install it or adjust the path.
    pause
    exit /b
)

rem Copy the file
echo Copying %source%...
copy "%source%" "%source%.copy"

rem Create the zip file
echo Creating %zipfile%...
"%zip7%" a -tzip "%zipfile%" "%source%.copy"

rem Clean up temporary copy
del "%source%.copy"

echo Done.
pause
