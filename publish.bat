@echo off
setlocal enabledelayedexpansion
echo ========================================
echo  Bridgeframe Toolkit - Publish to GitHub
echo ========================================
echo.

cd /d "%~dp0"

set "SOURCE=%~dp0"
set "GDRIVE_DEST=G:\My Drive\Intersect_Collaborations_LLC\04_projects\Bridgeframe-Toolkit"

REM Get timestamp using PowerShell
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmm"') do set "TIMESTAMP=%%i"

set "ZIP_NAME=Bridgeframe-Toolkit_%TIMESTAMP%.zip"
set "ZIP_PATH=%TEMP%\%ZIP_NAME%"
set "FINAL_PATH=%GDRIVE_DEST%\%ZIP_NAME%"

echo [1/3] Backing up project to Google Drive...
echo.
echo Timestamp: %TIMESTAMP%
echo Source: %SOURCE%
echo Destination: %GDRIVE_DEST%
echo ZIP File: %ZIP_NAME%
echo.

if not exist "%GDRIVE_DEST%" (
    echo ERROR: Google Drive destination does not exist: %GDRIVE_DEST%
    echo Please ensure Google Drive is mounted and the folder exists.
    pause
    exit /b 1
)

if exist "%ZIP_PATH%" del "%ZIP_PATH%"

echo Creating ZIP archive...
echo This may take a few minutes...
echo.

REM Use git to list tracked and untracked files respecting .gitignore, then zip them
REM This includes communications/ (which is in .gitignore but we want it backed up)
pushd "%SOURCE%" >nul
powershell -NoProfile -Command "(git ls-files --cached --others --exclude-standard) + (Get-ChildItem -Path 'communications' -Recurse -File -ErrorAction SilentlyContinue | Resolve-Path -Relative | ForEach-Object { $_ -replace '^\.\\','' }) | Sort-Object -Unique | Where-Object { $_ -and (Test-Path -LiteralPath $_) } | tar.exe -a -c -f '%ZIP_PATH%' -T -"
popd >nul

if not exist "%ZIP_PATH%" (
    echo ERROR: ZIP file was not created.
    pause
    exit /b 1
)

for %%A in ("%ZIP_PATH%") do set "ZIP_SIZE=%%~zA"
set /a ZIP_SIZE_MB=%ZIP_SIZE%/1048576
echo ZIP file size: %ZIP_SIZE_MB% MB
echo.

echo Copying to Google Drive...
copy /Y "%ZIP_PATH%" "%FINAL_PATH%"
if %ERRORLEVEL% neq 0 (
    echo.
    echo ERROR: Backup to Google Drive failed!
    pause
    exit /b 1
)
del "%ZIP_PATH%"
echo Backup complete: %FINAL_PATH%

echo.
echo [2/3] Rendering the book...
quarto render
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Quarto render failed!
    pause
    exit /b 1
)

echo.
echo [3/3] Publishing to GitHub Pages...
quarto publish gh-pages --no-prompt
if %errorlevel% neq 0 (
    echo.
    echo ERROR: GitHub publish failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo  Success! Book published to GitHub Pages
echo  Backup saved to Google Drive
echo ========================================
echo.
pause
