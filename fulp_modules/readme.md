This is a file to log any TG file changes that inevitably come up.

code\_DEFINES\radio.dm
	line 52-54
	line 63
		both are #DEFINES for radiostation, it cant go in the main dm because f comes after c in the alphabet

code\game\say.dm
    line 19
        "[FREQ_RADIO_STATION]" = "rsradio"

tgui\public\tgui-pannel.bundle.css
    somewhere in the 2 radio color defines
        .rsradio{color:#db2659}.
		.rsradio{color:#db2659}.theme-light
