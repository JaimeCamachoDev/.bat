@echo off
setlocal EnableDelayedExpansion

echo ========================================
echo Crear nuevo repositorio desde plantilla
echo ========================================
set /p REPO_NAME=Nombre del nuevo repositorio (sin espacios): 
set /p REPO_DESC=Descripcion del repositorio:

cd /d E:\

gh repo create JaimeCamachoDev/!REPO_NAME! ^
  --template JaimeCamachoDev/Template_UnityProyect ^
  --public ^
  --description "!REPO_DESC!" ^
  --homepage "https://jaimecamachodev.github.io/" ^
  --clone

cd !REPO_NAME!

gh repo edit JaimeCamachoDev/!REPO_NAME! ^
  --add-topic unity6 ^
  --add-topic urp ^
  --add-topic vfx-graph ^
  --add-topic shader-graph ^
  --add-topic amplify-shader-editor ^
  --add-topic particle-system ^
  --add-topic unity-tools ^
  --add-topic unity-resources

start https://github.com/JaimeCamachoDev/!REPO_NAME!/settings

echo.
echo Repositorio creado y configurado: https://github.com/JaimeCamachoDev/!REPO_NAME!
pause
