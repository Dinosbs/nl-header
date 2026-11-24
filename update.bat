@echo off
setlocal
title Logo-Platzierer aktualisieren
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
  echo [FEHLER] Git ist nicht installiert oder nicht im PATH.
  echo Bitte "Git for Windows" installieren: https://git-scm.com/download/win
  goto ende
)

if not exist ".git" (
  echo [FEHLER] Dieser Ordner ist kein Git-Repository.
  echo Bitte das Repository einmalig per "git clone" herunterladen, nicht als ZIP.
  goto ende
)

echo Aktualisiere: %CD%
echo.
git fetch origin
if errorlevel 1 (
  echo.
  echo [FEHLER] GitHub nicht erreichbar. Internetverbindung pruefen.
  goto ende
)

rem Immer auf dem Branch "main" arbeiten
git checkout -q main
if errorlevel 1 (
  echo.
  echo [FEHLER] Konnte nicht auf "main" wechseln.
  echo Haeufigste Ursache: Dateien im Ordner wurden lokal geaendert.
  echo Mit "git status" pruefen, was geaendert wurde.
  goto ende
)

git pull --ff-only origin main
if errorlevel 1 (
  echo.
  echo [FEHLER] Aktualisierung fehlgeschlagen.
  echo Haeufigste Ursache: Dateien im Ordner wurden lokal geaendert.
  echo Mit "git status" pruefen, was geaendert wurde.
  goto ende
)

echo.
echo Fertig - alles ist auf dem neuesten Stand.

:ende
echo.
pause
endlocal
