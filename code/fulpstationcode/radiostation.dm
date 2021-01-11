// This file is ment to hold all objects used in the radio station

//Defines neccessary for a functioning radio network
#define RADIO_CHANNEL_RADIO_STATION "RADIO_STATION"
#define RADIO_KEY_RADIO_STATION "r"
#define RADIO_TOKEN_RADIO_STATION ":r"
#define FREQ_RADIO_STATION 1219  // green?

//presets tcomm machines for the operation of the station channel
/obj/machinery/telecomms/broadcaster/preset_radiostation
	id = "Broadcaster A"
	network = "tcommsat"
	autolinkers = list("broadcasterA")

/obj/machinery/telecomms/server/presets/radiostation
	id = "Radio Station Server"
	freq_listening = list(FREQ_RADIO_STATION)
	autolinkers = list("radio_station")

/obj/machinery/telecomms/relay/preset/radiostation
	id = "Radio Station Relay"
	autolinkers = list("rs_relay")

/obj/machinery/telecomms/bus/preset_radiostation
	id = "Bus 1"
	network = "tcommsat"
	freq_listening = list(FREQ_RADIO_STATION)
	autolinkers = list("processor1", "radio_station")

/obj/machinery/telecomms/receiver/preset_radiostation
	id = "Receiver A"
	network = "tcommsat"
	autolinkers = list("receiverA") // link to relay
	freq_listening = list(FREQ_RADIO_STATION)

/obj/machinery/telecomms/processor/preset_radiostation
	id = "Processor 1"
	network = "tcommsat"
	autolinkers = list("processor1") // processors are sort of isolated; they don't need backward links

/obj/machinery/telecomms/hub/preset/radiostation
	id = "Hub"
	network = "tcommsat"
	autolinkers = list("hub", "rs_relay", "science", "medical",
	"supply", "service", "common", "command", "engineering", "security",
	"receiverA", "broadcasterA", "broadcasterB", "autorelay", "radio_station")

/obj/machinery/telecomms/allinone/radiostation

//A radio and intercomm for the radio host

/obj/item/radio/intercom/radiostation
	name = "Radiostation intercom"
	anonymize = TRUE
	frequency = 1219
	broadcasting = TRUE

/obj/item/radio/headset/headset_radiostation
	name = "radio host's radio headset"
	desc = "Special made specifically for the radio host, so he can talk to the entire crew from the comfort of his own ear."
	icon = 'icons/fulpicons/radiohost.dmi'
	icon_state = "rsh_headset"
	keyslot = new /obj/item/encryptionkey/headset_rs

/obj/item/encryptionkey/headset_rs
	name = "radio station encryption key"
	icon = 'icons/fulpicons/radiohost.dmi'
	icon_state = "rsh_cypherkey"
	channels = list(RADIO_CHANNEL_RADIO_STATION = 1)
