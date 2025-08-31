@echo off
title Bootloader - PBS-DOS
color 0A
cls
setlocal
echo [BOOTLOADER] Iniciando PBS-DOS (TM)...
echo Verificando integridade do sistema...
timeout /t 2 >nul
echo Carregando Kernel...
call Kernel.bat
endlocal
