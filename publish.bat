@echo off
echo ========================================
echo  Bridgeframe Toolkit - Publish to GitHub
echo ========================================
echo.

cd /d "%~dp0"

echo [1/2] Rendering the book...
quarto render
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Quarto render failed!
    pause
    exit /b 1
)

echo.
echo [2/2] Publishing to GitHub Pages...
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
echo ========================================
echo.
pause
