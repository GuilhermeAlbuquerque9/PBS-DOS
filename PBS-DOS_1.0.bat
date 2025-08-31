@echo off
title PBS-DOS 1.0
color 0A
:menu
cls
echo =====================================
echo         PBS-DOS (TM) 1.0 - Menu          
echo =====================================
echo.
echo 1 - Ajuda
echo 2 - Info do sistema
echo 3 - Limpar tela
echo 4 - Listar arquivos
echo 5 - Criar nova pasta
echo 6 - Criar novo texto
echo 7 - Reiniciar PBS-DOS
echo 8 - Sair
echo.
set /p opcao=Digite o numero do comando: 

if "%opcao%"=="1" goto ajuda
if "%opcao%"=="2" goto info
if "%opcao%"=="3" goto limpar
if "%opcao%"=="4" goto listar
if "%opcao%"=="5" goto novapasta
if "%opcao%"=="6" goto novotexto
if "%opcao%"=="7" goto reiniciar
if "%opcao%"=="8" exit
goto menu

:ajuda
cls
echo Comandos disponiveis:
echo - Ajuda: mostra esta lista
echo - Info: mostra informações do sistema
echo - Limpar: limpa a tela
echo - Listar: mostra arquivos da pasta atual
echo - NovaPasta: cria uma nova pasta
echo - NovoTexto: cria um novo arquivo .txt
echo - Reiniciar: reinicia o PBS-DOS™
echo - Sair: encerra o sistema
pause
goto menu

:info
cls
echo PBS-DOS (TM) v1.0
echo Desenvolvido por: PontoBat Sistemas (TM)
echo Sistema operacional tipo DOS em script .bat
echo Local atual: %cd%
pause
goto menu

:limpar
cls
goto menu

:listar
cls
echo Arquivos na pasta atual:
dir /b
pause
goto menu

:novapasta
cls
set /p nomepasta=Digite o nome da nova pasta: 
mkdir "%nomepasta%"
echo Pasta "%nomepasta%" criada com sucesso!
pause
goto menu

:novotexto
cls
set /p nomearquivo=Digite o nome do novo arquivo .txt: 
echo Este e um arquivo criado pelo PBS-DOS > "%nomearquivo%.txt"
echo Arquivo "%nomearquivo%.txt" criado com sucesso!
pause
goto menu

:reiniciar
cls
echo Reiniciando PBS-DOS...
timeout /t 2 >nul
call PBS-DOS.bat
exit
