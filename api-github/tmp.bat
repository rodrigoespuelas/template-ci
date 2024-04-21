@echo off

:: Establecer el token de acceso personal de GitHub
set GITHUB_TOKEN=

:: Establecer el nombre del nuevo repositorio
set REPO_NAME=template-ci

:: Establecer si el nuevo repositorio será privado (opcional)
set REPO_PRIVATE=true

:: Crear el nuevo repositorio utilizando la API de GitHub
curl -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer %GITHUB_TOKEN%" -H "X-GitHub-Api-Version: 2022-11-28" -d "{\"name\":\"%REPO_NAME%\", \"private\": %REPO_PRIVATE%}" https://api.github.com/user/repos

pause