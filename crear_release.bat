@echo off
setlocal EnableDelayedExpansion

echo ===============================
echo 🚀 Crear nueva versión del repositorio
echo ===============================

:: ✅ Pedir ruta al repo
set /p REPO_PATH=Ruta completa al repositorio local (sin comillas): 
cd /d %REPO_PATH%

:: ✅ Verificar si es un repo válido
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo ❌ Esta carpeta no es un repositorio Git válido.
    pause
    exit /b
)

:: ✅ Pedir la versión
set /p VERSION=Introduce la nueva versión (ej. v1.0.0): 

:: ✅ Crear y subir el tag
git tag %VERSION%
git push origin %VERSION%

echo.
echo ✅ Tag %VERSION% creado y enviado. GitHub creará la release automáticamente.
pause
