@echo off
title Realtime Object Detection Dashboard
cd /d "%~dp0"
echo ========================================================
echo   Starting Realtime Object Detection Dashboard
echo ========================================================
echo Activating virtual environment...
call .\venv\Scripts\activate.bat
echo Starting server on http://127.0.0.1:5000 ...
start "" http://127.0.0.1:5000
python backend\app.py
pause
