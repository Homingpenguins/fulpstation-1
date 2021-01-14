// This file is ment to hold all objects used in the radio station

//presets tcomm machines for the operation of the station channel
/obj/machinery/telecomms/allinone/radiostation
	id = "allinone"
	network = "radiostation"

/obj/machinery/telecomms/broadcaster/preset_radiostation
	id = "Broadcaster"
	network = "radiostation"
	autolinkers = list("broadcaster")

/obj/machinery/telecomms/bus/preset_radiostation
	id = "Bus"
	network = "radiostation"
	freq_listening = list(FREQ_RADIO_STATION)
	autolinkers = list("processor", "Radiostation")

/obj/machinery/telecomms/hub/preset/radiostation
	id = "Hub"
	network = "radiostation"
	autolinkers = list("hub", "rs_relay", "receiver", "broadcaster", "Radiostation", "allinone", "server")

/obj/machinery/telecomms/processor/preset_radiostation
	id = "Processor"
	network = "radiostation"
	autolinkers = list("processor")

/obj/machinery/telecomms/receiver/preset_radiostation
	id = "Receiver"
	network = "radiostation"
	autolinkers = list("receiver", "rs_relay")
	freq_listening = list(FREQ_RADIO_STATION)

/obj/machinery/telecomms/relay/preset/radiostation
	id = "rs_relay"
	network = "radiostation"
	autolinkers = list("rs_relay")

/obj/machinery/telecomms/server/presets/radiostation
	id = "Server"
	network = "radiostation"
	freq_listening = list(FREQ_RADIO_STATION)
	autolinkers = list("Radiostation")

//A radio and intercomm for the radio host

/obj/item/radio/intercom/radiostation
	name = "Radiostation intercom"
	anonymize = TRUE
	frequency = FREQ_RADIO_STATION
	broadcasting = TRUE
	listening = TRUE
	freqlock = TRUE

/obj/item/radio/headset/headset_radiostation
	name = "radio host's radio headset"
	desc = "A headset that is Special made specifically for the radio host, so he can talk to the listeners from the comfort of their own ear."
	icon = 'icons/fulpicons/radiohost.dmi'
	icon_state = "rsh_headset"
	keyslot = new /obj/item/encryptionkey/headset_rs

/obj/item/encryptionkey/headset_rs
	name = "radio station encryption key"
	icon = 'icons/fulpicons/radiohost.dmi'
	icon_state = "rsh_cypherkey"
	channels = list(RADIO_CHANNEL_RADIO_STATION = 1)

//Area stuff

area/ruin/powered/radiostation
	icon_state = "blue"

//Datum stuff

/datum/map_template/ruin/space/radiostation
	id = "radiostation"
	suffix = "radiostation.dmm"
	name = "Nanotrasen Radio Station"
	description = "A Nanotrasen approved and funded radio station that currently has its ears, and by extension half of the galexy's ears, on Space Station 13."
