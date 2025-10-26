@echo OFF

set BUILD_FILES=^
 GSGSNDA^
 PSGBGMM^
 PSGSND2^
 PSGSND5^
 PSGSNDA^
 SGBGM1^
 SGBGM2^
 SGBGM3^
 SGBGM4^
 SGBGM5^
 SGBGM6^
 SGBGM7^
 SGBGM8^
 SGBGM9^
 SGBGM10^
 SGBGM11^
 SGBGMA^
 SGBGMB^
 SGBGMC^
 SGBGMD^
 SGBGME^
 SGBGMF^
 SGBGMG^
 SGBGMH^
 SGBGMI^
 SGBGMJ^
 SGBGMK^
 SGBGML^
 SGBGMM^
 SGBGMN^
 SGBGMO^
 SGBGMP^
 SGSOUND0^
 SGSOUND1^
 SGSOUND2^
 SGSOUND3^
 SGSOUND4^
 SGSOUND5^
 SGSOUND6^
 SGSOUND7^
 SGSOUND8^
 SGSOUND9^
 SGSOUNDA^




call :BUILD_ALL
goto :EXIT





:BUILD_ALL

	set SFES_SND_DIR=%~dp0
	set t=%BUILD_FILES%
	:build_loop
		set curr_f=""
		for /f "tokens=1* delims= " %%a in ("%t%") do set curr_f=%%a&set t=%%b
		set curr_f=%curr_f:"=%
		call :BUILD_BIN %curr_f%
		
		if defined t goto :build_loop
exit /b


:BUILD_BIN
	set sound=%1
	
	echo [INFO] Building %sound%.BIN
	
	cd "DATA_FILES/%sound%"
	
	if exist "%~dp0%sound%".BIN (
	    del "%~dp0%sound%".BIN
	)

	"%~dp0asar" --symbols=nocash --no-title-check "%sound%".asm "%sound%".BIN
	

	IF ERRORLEVEL 1 (
		echo **ASAR ERROR**
		del "%sound%".BIN
	) ELSE (
		copy "%sound%".BIN "%~dp0%sound%".BIN > NUL
		rem fc "%~dp0%sound%".BIN "%~dp0%sound%".BIN.BAK
	)
	
	cd %~dp0
	
exit /b




:EXIT
pause
goto :EOF


