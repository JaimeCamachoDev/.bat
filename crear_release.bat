@echo off
setlocal EnableDelayedExpansion

echo ===============================
echo Crear nueva version del repositorio
echo ===============================

set /p REPO_PATH=Ruta completa al repositorio local (ej. E:\MiRepo): 
cd /d !REPO_PATH!

git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo Esta carpeta no es un repositorio Git.
    pause
    exit /b
)

set /p VERSION=Introduce la nueva version (solo numeros, ej. 1.0.0): 
set VERSION_TAG=v!VERSION!

git tag !VERSION_TAG!
git push origin !VERSION_TAG!

echo.
echo Tag !VERSION_TAG! creado y enviado.
echo GitHub deberia generar la release automaticamente.
pause
