# MFAudioBatch
Simply running this batch is not enough to get your script to work. *You need to make the following changes relative to your system:*

You need the directory of your mfaudio.exe file with your own MFAUDIO_PATH= line. An example is provided.

You need to set your arguments for MFAudio accordingly. You can also call MFAudio.exe /? to get a list of arguments, or see the arguments below***.

You need to replace INPUT_DIR with your input directory. An example is provided.

You need to replace OUTPUT_DIR with your output directory. An example is provided.


# ***Valid argument line options for MFAudio:

/IFnnnnn	Input frequency

/ICn	Input channels

/IIxxxx	Input interleave (hex)

/IHxxxx	Input headerskip (hex)

/OTtttt	Output type (WAVU, VAGC,
	 SS2U, SS2C, RAWU, RAWC)
  
/OFnnnnn	Output frequency

/OCn	Output channels

/OIxxxx	Output interleave (hex)

"InputFile"	Input file to play/convert

"OutputFile"	Output file to convert to



# Relevant MFAudio readMe: 
"You can also use the utility from the command line (type 'MFAudio /?' for available options). This can be useful if you are creating a rip kit, for example, you can write a batch file that will run this utility to downsample all the music in the game."


An example command line call, that does not use this batch script, may look like this:

"G:\Games\NotSteamRelated\PS2\Antigrav\Tools\MFAudio.exe" /IC1 /IF20000 /OTWAVU "G:\Games\NotSteamRelated\PS2\Antigrav\ExtractionTry2\sound\samples\vo\compound\r_state0_9_alt.vgs" "G:\Games\NotSteamRelated\PS2\Antigrav\Tools\CubeMediaPlayer\sound\vo\compound\MF_Audio\output.wav"

