@echo off
setlocal

:: ✅ Solicitar datos del usuario
set /p REPO_NAME=Nombredelnuevorepositorio: 
set /p REPO_DESC=Descripcion del repositorio:

:: ✅ Crear repositorio desde plantilla y clonarlo
gh repo create JaimeCamachoDev/%REPO_NAME% ^
  --template JaimeCamachoDev/Template_UnityProyect ^
  --public ^
  --description "%REPO_DESC%" ^
  --homepage "https://jaimecamachodev.github.io/" ^
  --clone

:: ✅ Entrar en el nuevo directorio
cd %REPO_NAME%

:: ✅ Añadir topics
gh repo edit JaimeCamachoDev/%REPO_NAME% ^
  --add-topic unity6 ^
  --add-topic urp ^
  --add-topic vfx-graph ^
  --add-topic shader-graph ^
  --add-topic amplify-shader-editor ^
  --add-topic particle-system ^
  --add-topic unity-tools ^
  --add-topic unity-resources

:: ✅ Abrir la página de Settings para ajustes manuales
start https://github.com/JaimeCamachoDev/%REPO_NAME%/settings

echo.
echo 🚀 Repositorio creado y configurado: https://github.com/JaimeCamachoDev/%REPO_NAME%
echo 🛠 Abriendo configuración para desactivar Packages y Deployments.
pause
