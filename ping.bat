@echo off
title JavawPing 1.2.0 (Startup)
echo Connection Optimizations are starting...

if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
echo By DarkJester and Ieatballslots
echo For best results regarding connection speeds, use Cloudflare WARP
pause
cls

color 01
title JavawPing 1.2.0 (Stage 1/5)
echo Stage 1/5
echo Currently setting service priority to "idle"
timeout 2
wmic process where name="svchost.exe" CALL setpriority "idle"
echo Stage 1/5 has finished
timeout 2
cls

color 2
title JavawPing 1.2.0 (Stage 2/5)
echo Stage 2/5
echo Currently pinging 126.0.0.1
timeout 2
ping 127.0.0.1 -n 5 >nul
echo Stage 2/5 has finished
timeout 2
cls

color 3
title JavawPing 1.2.0 (Stage 3/5)
echo Stage 3/5
echo Currently setting network priority to "javaw.exe" (Java Minecraft and other Java programs)
timeout 2
wmic process where name="javaw.exe" CALL setpriority "high priority"
wmic process where name="javaw.exe" CALL setpriority "high priority"
echo Stage 3/5 has finished
timeout 2
cls

color 4
title JavawPing 1.2.0 (Stage 4/5)
echo Stage 4/5
echo Currently flushing DNS Queries to optimize connection speeds
timeout 2
ipconfig /flushdns
echo Stage 4/5 has finished
timeout 2
cls

color 5
title JavawPing 1.2.0 (Stage 5/5)
echo Stage 5/5
echo Currently cecking that Optimizations are working correctly
timeout 2
sc start BITS
echo Stage 5/5 has finished
timeout 2

goto LOGO
:LOGO
cls
color 03
echo Your connection has been successfully improved
echo If possible, please use this program with 1.1.1.1 WARP
echo Script by IeatBallsLots and DarkJester
pause
