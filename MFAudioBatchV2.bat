@echo off
setlocal enabledelayedexpansion



REM Check if MFAudio.exe is in the current directory; if so, use it
if exist "%~dp0MFAudio.exe" (
    set "MFAUDIO_PATH=%~dp0MFAudio.exe"
) else (

	REM next line example:
	REM     set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"

    set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"
)

REM available arguments in ReadME, or by calling "MFAudio.exe /?"
set "ARGS=/IC1 /IF28800 /OTWAVU"

REM Ensure the output directory exists
if not exist "%~dp0output" mkdir "%~dp0output"

REM Loop through each .vgs file (change extension as necessary) in current working directory
for %%F in ("%~dp0*.vgs") do (
    REM Get filename without the path
    set "FILENAME=%%~nF"

    set "INPUT_FILE=%%F"
    set "OUTPUT_FILE=%~dp0output\!FILENAME!_MFConvert.wav"

    REM Run MFAudio with specified arguments and input/output paths
    echo Processing: "!INPUT_FILE!"
    "%MFAUDIO_PATH%" %ARGS% "!INPUT_FILE!" "!OUTPUT_FILE!"
)

echo All files processed.
endlocal
pause
