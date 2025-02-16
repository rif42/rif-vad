@echo off
echo Starting local server for VAD...
echo Access the page at http://localhost:8000/vad.html
start /b npx http-server -p 8000
timeout /t 2 /nobreak >nul
start http://localhost:8000/vad.html
pause 