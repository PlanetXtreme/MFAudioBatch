@echo off
setlocal enabledelayedexpansion

REM next line example:
REM set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"

set "MFAUDIO_PATH=C:\Tools\MFAudio.exe"

REM available arguments in ReadME, or by calling "MFAudio.exe /?"
set "ARGS=/IC1 /IF48000 /OTWAVU"

REM Input directory contains input audio file(s). Output is output.
REM next line(s) example
REM set "INPUT_DIR=C:\Users\you\downloads\input"
REM "INPUT_DIR=C:\Users\you\downloads\output"

set "INPUT_DIR=C:\Users\you\downloads\input"
set "OUTPUT_DIR=C:\Users\you\downloads\output"

REM Ensure the output directory exists
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

REM Loop through each SPECIFIC FILETYPE IN DIRECTORY. LABEL THIS AS NECESSARY.
for %%F in ("%INPUT_DIR%\*.vgs") do (
    REM filename without path
    set "FILENAME=%%~nF"

    set "INPUT_FILE=%%F"
    set "OUTPUT_FILE=%OUTPUT_DIR%\!FILENAME!_MFConvert.wav"

    REM Run MFAudio with arguments and input/output
    echo Processing: "!INPUT_FILE!"
    "%MFAUDIO_PATH%" %ARGS% "!INPUT_FILE!" "!OUTPUT_FILE!"
)

echo All files processed.
endlocal
pause
