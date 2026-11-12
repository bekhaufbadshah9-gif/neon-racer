@echo off
title Neon Racer - Car Racing Game
cd /d "%~dp0"

:: Try Chrome first, then Edge, then default browser
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --app="file:///%~dp0car-racing-game.html"
    goto :end
)
if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app="file:///%~dp0car-racing-game.html"
    goto :end
)
if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files\Microsoft\Edge\Application\msedge.exe" --app="file:///%~dp0car-racing-game.html"
    goto :end
)
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --app="file:///%~dp0car-racing-game.html"
    goto :end
)

:: Fallback to default browser
start "" "car-racing-game.html"

:end