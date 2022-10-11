@echo off
title JO-KEN-PO
mode 60,30
color 09

:inicio
set /p nome= Digite seu nome: 
set /a vit= 0
set /a der= 0
set /a emp= 0
goto menu

:menu
cls
echo.
echo bem-vindo(a), %nome%!
echo ----------------------------------
echo             JO-KEN-PO             
echo ----------------------------------
echo  [1] pedra                       
echo  [2] papel                      
echo  [3] tesoura                    
echo  [4] largato                     
echo  [5] spock                      
echo ----------------------------------             
echo  [R] REGRAS                      
echo  [S] SAIR DO jogo                
echo ----------------------------------
echo.
set /a pc=(%random% %%5) + 1
set /p opc=Escolha uma opcao: 
echo.

if %opc%==1 (goto jogo)
if %opc%==2 (goto jogo)
if %opc%==3 (goto jogo)
if %opc%==4 (goto jogo)
if %opc%==5 (goto jogo)
if %opc% == r (goto:regras)
if %opc% == s (goto:sair) else (
   echo.
   echo -------------------
   echo   Opcao Invalida!
   echo -------------------
   pause > nul
   goto:menu )

:jogo
rem pedra vs ...
if %opc%==1 (
      if %pc%==1 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: pedra
            echo Computador escolheu: pedra
            echo.
            echo ==============================
            echo Empate!!!
            echo.
            set /a emp= %emp% + 1
            goto placar))

if %opc%==1 (
      if %pc%==2 (
            echo ============ VS ==============
            echo.
            echo %nome% escolheu: pedra
            echo Computador escolheu: papel
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))

if %opc%==1 (
      if %pc%==3 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: pedra
            echo Computador escolheu: tesoura
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==1 (
      if %pc%==4 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: pedra
            echo Computador escolheu: largato
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==1 (
      if %pc%==5 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: pedra
            echo Computador escolheu: spock
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))

rem papel vs ...
if %opc%==2 (
      if %pc%==1 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: papel
            echo Computador escolheu: pedra
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))

if %opc%==2 (
      if %pc%==2 (
            echo ============= VS ==============
            echo.
            echo %nome% escolheu: papel
            echo Computador escolheu: papel
            echo.
            echo ==============================
            echo Empate!!!
            echo.
            set /a emp= %emp% + 1
            goto placar))

if %opc%==2 (
      if %pc%==3 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: papel
            echo Computador escolheu: tesoura
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))

if %opc%==2 (
      if %pc%==4 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: papel
            echo Computador escolheu: largato
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))

if %opc%==2 (
      if %pc%==5 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: papel
            echo Computador escolheu: spock
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))


rem tesoura vs ...
if %opc%==3 (
      if %pc%==1 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: tesoura
            echo Computador escolheu: pedra
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))
if %opc%==3 (
      if %pc%==2 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: tesoura
            echo Computador escolheu: papel
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==3 (
      if %pc%==3 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: tesoura
            echo Computador escolheu: tesoura
            echo.
            echo ==============================
            echo Empate!!!
            echo.
            set /a emp= %emp% + 1
            goto placar))
if %opc%==3 (
      if %pc%==4 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: tesoura
            echo Computador escolheu: largato
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==3 (
      if %pc%==5 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: tesoura
            echo Computador escolheu: spock
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))

rem largato vs ...
if %opc%==4 (
      if %pc%==1 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: largato
            echo Computador escolheu: pedra
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))
if %opc%==4 (
      if %pc%==2 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: largato
            echo Computador escolheu: papel
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==4 (
      if %pc%==3 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: largato
            echo Computador escolheu: tesoura
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))
if %opc%==4 (
      if %pc%==4 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: largato
            echo Computador escolheu: largato
            echo.
            echo ==============================
            echo Empate!!!
            echo.
            set /a emp= %emp% + 1
            goto placar))
if %opc%==4 (
      if %pc%==5 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: largato
            echo Computador escolheu: spock
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))

rem spock vs ...
if %opc%==5 (
      if %pc%==1 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: spock
            echo Computador escolheu: pedra
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==5 (
      if %pc%==2 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: spock
            echo Computador escolheu: papel
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))
if %opc%==5 (
      if %pc%==3 (
            echo ============= VS ============
            echo.
            echo %nome% escolheu: spock
            echo Computador escolheu: tesoura
            echo.
            echo =============================
            echo Parabens... voce ganhou!!
            echo.
            set /a vit= %vit% + 1
            goto placar))
if %opc%==5 (
      if %pc%==4 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: spock
            echo Computador escolheu: largato
            echo.
            echo ==============================
            echo Sinto muito... voce perdeu.
            echo.
            set /a der= %der% + 1
            goto placar))
if %opc%==5 (
      if %pc%==5 (
            echo ============= VS =============
            echo.
            echo %nome% escolheu: spock
            echo Computador escolheu: spock
            echo.
            echo ==============================
            echo Empate!!!
            echo.
            set /a emp= %emp% + 1
            goto placar))

:placar
echo ----------- PLACAR -----------
echo VITORIAS: %vit%    
echo DERROTAS: %der%     
echo EMPATES: %emp%        
echo ------------------------------
echo.
echo pressione qualquer tecla para continuar...
pause > nul 
goto:menu

:regras
echo.    
echo ----------------------------------------------------
echo                    REGRAS
echo ----------------------------------------------------
echo PEDRA
echo Ganha: Esmagango o Largato;  Quebrando a tesoura.
echo Perde: Vapozado pelo Spock; Embrulhado pelo papel.
echo Empata: pedra vs pedra.
echo.
echo PAPEL
echo Ganha: Embrulhando a Pedra; Refutando o Spock.
echo Perde: Cortado pela tesoura; Comido pelo Largato.
echo Empata: papel vs papel.
echo.
echo TESOURA
echo Ganha: Rasgando o papel; Cortando o Largato.
echo Perde: Quebrado pela pedra; Quebrado pelo Spock.
echo Empata: tesoura vs tesoura.
echo.
echo LARGATO
echo Ganha: Comendo o papel; Envenenando o Spock.
echo Perde: Esmagado pela pedra; Cortado pela tesoura.
echo Empata: largato vs largato.
echo.
echo SPOCK
echo Ganha: Quebrando a tesoura; Vaporizando a pedra.
echo Perde: Refutado pelo papel; Envenenado pelo Largato.
echo Empata: spock vs spock.
echo -----------------------------------------------------------  
echo pressione qualquer tecla para continuar...
pause > nul 
goto:menu ) else (
goto:menu )

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% equ s (exit) else (goto:menu)
