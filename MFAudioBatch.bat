@echo off
setlocal enabledelayedexpansion

REM next line example:
REM set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"

set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"

REM available arguments in ReadME, or by calling "MFAudio.exe /?"
set "ARGS=/IC1 /IF28800 /OTWAVU"

REM Input directory contains input audio file(s). Output is output.
REM next line(s) example
REM set "INPUT_DIR=C:\Users\you\downloads\input"
REM "INPUT_DIR=C:\Users\you\downloads\output"

set "INPUT_DIR=C:\Users\you\downloads\input"
set "OUTPUT_DIR=C:\Users\you\downloads\output"

REM Ensure the output directory exists
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

REM Loop through each .vgs file in the input directory
for %%F in ("%INPUT_DIR%\*.vgs") do (
    REM Get the filename without the path
    set "FILENAME=%%~nF"

    REM Define input and output paths with delayed expansion
    set "INPUT_FILE=%%F"
    set "OUTPUT_FILE=%OUTPUT_DIR%\!FILENAME!_MFConvert.wav"

    REM Run MFAudio with specified arguments and input/output paths
    echo Processing: "!INPUT_FILE!"
    "%MFAUDIO_PATH%" %ARGS% "!INPUT_FILE!" "!OUTPUT_FILE!"
)

echo All files processed.
endlocal
pause
