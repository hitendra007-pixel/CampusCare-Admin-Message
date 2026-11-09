@echo off
cd /d "%~dp0"
title CampusCare Java Server
echo =====================================
echo       CAMPUSCARE JAVA SERVER
echo =====================================
echo.
where javac >nul 2>nul
if errorlevel 1 (
  echo ERROR: JDK not found. Install JDK and add its bin folder to PATH.
  pause
  exit /b 1
)
echo Compiling Java source...
javac CampusComplaintSystem.java
if errorlevel 1 (
  echo.
  echo ERROR: Java compilation failed.
  pause
  exit /b 1
)
echo.
echo Starting Java server on port 8090...
echo Opening CampusCare in your browser...
echo Keep this window open while using CampusCare.
echo.
java CampusComplaintSystem
echo.
echo CampusCare server stopped.
pause
