@echo off
title Enviando Landing Page para o GitHub...
echo ========================================================
echo   PUBLICANDO LANDING PAGE NO GITHUB
echo   Repositorio: https://github.com/andersnatanielferreira-bot/PROJ
echo ========================================================
echo.

set PATH=%LOCALAPPDATA%\Programs\Git\cmd;%PATH%

git status
echo.
echo Enviando branch main para o GitHub...
echo Se solicitado, autorize pelo navegador ou insira seu token.
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   SUCESSO! O SITE FOI PUBLICADO NO GITHUB COM EXITO!
    echo   Acesse: https://github.com/andersnatanielferreira-bot/PROJ
    echo ========================================================
) else (
    echo.
    echo Ocorreu um erro no envio. Verifique as permissoes da conta.
)

pause
