This is a file to log any TG file changes that inevitably come up.

//HomingPenguin's Radio Station TG changes. Have fun

code\_DEFINES\radio.dm
	line 52-54
	line 63
		both are #DEFINES for radiostation, it cant go in the main dm because f comes after c in the alphabet

code\game\say.dm
    line 19
        "[FREQ_RADIO_STATION]" = "rsradio"

code\game\communications.dm
	line 107
		RADIO_CHANNEL_RADIO_STATION = FREQ_RADIO_STATION
	line 124
		"[FREQ_RADIO_STATION]" = RADIO_CHANNEL_RADIO_STATION

code\modules\mob\living\living_say.dm
	line 29
			RADIO_KEY_RADIO_STATION = RADIO_CHANNEL_RADIO_STATION //Radiostation channel, fulp only

interface\stylesheat.dm
	line 55
		.rsradio                {color: #db2659;}

tgui\packages\tgui\constants.js
	line 61 (very end)
		,	.rsradio'

tgui\packages\tgui-panel\styles\goon\chat-dark.scss
	line 385 - 387
		.rsradio {
 		 color: #db2659;
		}

tgui\packages\tgui-panel\styles\goon\chat-light.scss
	line 407 - 409
		.rsradio {
 		 color: #db2659;
		}

tgui\public\tgui-common.chunk.js
	somewhere in the radio section
		,{name:"Radio Station",freq:1339,color:"#db2659"}

tgui\public\tgui-pannel.bundle.css
    somewhere in the 2 radio color defines, exact lines werent given to me
        .rsradio{color:#db2659}.
		.rsradio{color:#db2659}.theme-light

tgui\public\tgui-pannel.bundle.js
	look for all the other radio stuff, still no exact lines
		.rsradio
