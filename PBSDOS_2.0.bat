@echo off
title PBS-DOS (TM) 2.0
color 0A
setlocal enabledelayedexpansion

:: Interface inicial
cls
echo ========================================================================
echo                          PBS-DOS (TM) 2.0
echo    (C) PontoBat Sistemas (TM), 2025. Todos os direitos reservados.
echo ========================================================================
echo.
echo Digite "Ajuda" para ver os comandos disponiveis.
echo.

:Terminal
set /p Entrada=^> 
echo %date% %time% - %Entrada% >> Historico.txt

:: Comandos exclusivos
if /i "%Entrada%"=="Ajuda" goto Ajuda
if /i "%Entrada%"=="Info" goto Info
if /i "%Entrada%"=="Limpar" cls & goto Terminal
if /i "%Entrada%"=="Listar" dir /b & goto Terminal
if /i "%Entrada%"=="NovaPasta" goto NovaPasta
if /i "%Entrada%"=="NovoTexto" goto NovoTexto
if /i "%Entrada%"=="Renomear" goto Renomear
if /i "%Entrada%"=="Abrir" goto Abrir
if /i "%Entrada%"=="Historico" type Historico.txt & goto Terminal
if /i "%Entrada%"=="Sair" goto Encerrar

:: Comando inválido
echo Comando nao reconhecido.
goto Terminal

:Ajuda
echo COMANDOS DISPONIVEIS:
echo - Ajuda .......... Mostra esta lista
echo - Info ........... Informacoes do sistema
echo - Limpar ......... Limpa a tela
echo - Listar ......... Lista arquivos da pasta atual
echo - NovaPasta ...... Cria uma nova pasta
echo - NovoTexto ...... Cria um novo arquivo de texto
echo - Renomear ....... Renomeia arquivo ou pasta
echo - Abrir .......... Abre arquivo com programa padrao
echo - Historico ...... Mostra comandos digitados
echo - Sair ........... Encerra o PBS-DOS
goto Terminal

:Info
echo PBS-DOS (TM) 2.0
echo Desenvolvido por PontoBat Sistemas (TM)
echo Local atual: %cd%
goto Terminal

:NovaPasta
set /p NomePasta=Nome da nova pasta: 
mkdir "%NomePasta%"
echo Pasta "%NomePasta%" criada.
goto Terminal

:NovoTexto
set /p NomeArquivo=Nome do novo arquivo de texto: 
echo Arquivo criado pelo PBS-DOS > "%NomeArquivo%.txt"
echo Arquivo "%NomeArquivo%.txt" criado.
goto Terminal

:Renomear
set /p Antigo=Nome atual: 
set /p Novo=Novo nome: 
rename "%Antigo%" "%Novo%"
echo Renomeado com sucesso.
goto Terminal

:Abrir
set /p ArquivoAbrir=Nome do arquivo: 
start "" "%ArquivoAbrir%"
goto Terminal

:Encerrar
echo Encerrando PBS-DOS...
pause
exit
