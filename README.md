# 🛠️ GitHub Automation Scripts (.bat)

Este repositorio contiene scripts `.bat` que automatizan tareas comunes al trabajar con repositorios de GitHub desde Windows usando GitHub CLI.

## 📦 Scripts incluidos

### `crear_repo.bat`
Crea un nuevo repositorio a partir de una plantilla de GitHub y lo clona localmente en `E:\`.

- Pide:
  - Nombre del nuevo repositorio
  - Descripción
- Automatiza:
  - Clonado desde plantilla
  - Asignación de topics
  - Apertura directa de la página de configuración en GitHub

### `crear_release.bat`
Crea y sube un tag (`vX.Y.Z`) al repositorio actual. Este tag activa un workflow que crea automáticamente una GitHub Release.

- Pregunta la versión (solo escribe `1.0.0`, el script añade la `v`)
- Verifica que estás dentro de un repositorio Git válido
- Hace push del tag

## 🔧 Requisitos

- Tener instalada [GitHub CLI](https://cli.github.com/)
- Haber ejecutado `gh auth login` al menos una vez
- Tener configurado `git` en tu equipo

## 🚀 Recomendado

- Guarda estos scripts en una carpeta accesible como `E:\GitHubTools`
- Asegúrate de tener permisos de escritura en `E:\`
- Personalízalos si trabajas con múltiples cuentas u organizaciones

