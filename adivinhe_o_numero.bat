@echo off
title adivinhe o numero
mode 60,30
color 07

:inicio
set /a tent=5
set /a num=(%random% %%50) +1
goto menu

:menu
cls
echo ==========================
echo     ADIVINHE O NUMERO
echo           01-50
echo ==========================
echo  tentativas restantes: %tent%
echo ==========================
echo.

if %tent% == 0 (goto perdeu)

set /p resp= Digite um numero: 
echo.

if %resp% leq 50 (
   if %resp% gtr 0 (goto jogo))
if %resp% ==s (goto sair) else (
	echo -----------------------------
	echo      OPERCAO INVALIDA!!!
	echo    digite um numero entre:
	echo            01 - 50
	echo -----------------------------
	echo.
	echo pressione qualquer tecla para continuar...
	pause > null
	goto menu)

:jogo
if %resp% gtr %num% (
  	echo -----------------------------
	echo    digite um numero menor!!
	echo -----------------------------
	set /a tent=%tent% - 1
	echo.
	echo pressione qualquer tecla para continuar...
	pause > nul 
	goto menu)
if %resp% lss %num% (
  	echo -----------------------------
	echo    digite um numero maior!!
	echo -----------------------------
	set /a tent=%tent% - 1
	echo.
	echo pressione qualquer tecla para continuar...
	pause > nul 
	goto menu)
if %resp% == %num% (
  	echo -----------------------------
	echo   parabens... voce venceu!!
	echo -----------------------------
	set /a tent=%tent% - 1
	echo.
	echo pressione qualquer tecla para continuar...
	pause > nul 
	goto menu)

:perdeu
echo -----------------------------------------
echo   tentativas esgotadas... voce perdeu!!
echo -----------------------------------------
echo.
set /p resp= Deseja jogar novamente? [S/N]
if /i %resp% == n (exit) else (goto inicio)

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == s (exit) else (goto inicio)
