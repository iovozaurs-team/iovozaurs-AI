@echo off
title iovozaur-AI Launcher
color 0b

echo [iovozaur-AI] Checking environment...

py -c "import aiogram" 2>nul
if %errorlevel% neq 0 (
    echo [SYSTEM] aiogram not found. Installing...
    pip install aiogram --quiet
)

py -c "import groq" 2>nul
if %errorlevel% neq 0 (
    echo [SYSTEM] groq not found. Installing...
    pip install groq --quiet
)

echo [iovozaur-AI] Libraries are ready!
echo [iovozaur-AI] Launching script...
echo -------------------------------------
start https://donatepay.eu/don/45846

cscript //nologo information.vbs
py "iovozaurs-ai.py"

if %errorlevel% neq 0 (
    echo [ERROR] Launch failed. Check if Python 3.12 is installed.
    pause
)
pause
