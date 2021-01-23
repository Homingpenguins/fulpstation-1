// This file is ment to hold all objects used in the radio station

//defines

#define ACCESS_AWAY_RADIOSTATION 209

//presets tcomm machines for the operation of the station channel

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
	autolinkers = list("hub", "Rs_relay", "receiver", "broadcaster", "Radiostation", "allinone", "server", "Radiostation")

/obj/machinery/telecomms/processor/preset_radiostation
	id = "Processor"
	network = "radiostation"
	autolinkers = list("processor")

/obj/machinery/telecomms/receiver/preset_radiostation
	id = "Receiver"
	network = "radiostation"
	autolinkers = list("receiver", "Rs_relay")
	freq_listening = list(FREQ_RADIO_STATION)

/obj/machinery/telecomms/relay/preset/radiostation
	id = "Rs_relay"
	network = "radiostation"
	autolinkers = list("Rs_relay", "Reciever")

/obj/machinery/telecomms/server/presets/radiostation
	id = "Server"
	network = "radiostation"
	freq_listening = list(FREQ_RADIO_STATION)
	autolinkers = list("Radiostation")

//other objects, starting with the radio host's id

/obj/item/card/id/radiohost
	name = "Radio Host"
	assignment = "Radio Host"
	access = list(ACCESS_AWAY_RADIOSTATION, ACCESS_MAINT_TUNNELS)

//A radio and intercomm for the radio host

/obj/item/radio/intercom/radiostation
	name = "Radiostation intercom"
	anonymize = FALSE
	frequency = FREQ_RADIO_STATION
	broadcasting = FALSE
	listening = TRUE
	freqlock = TRUE
	canhear_range = 5

/obj/item/radio/headset/headset_radiostation
	name = "radio host's radio headset"
	desc = "A headset that is Special made specifically for the radio host, so he can talk to the listeners from the comfort of their own ear."
	icon = 'fulp_modules/radiostation/radiostation.dmi'
	icon_state = "rsh_headset"
	keyslot = new /obj/item/encryptionkey/headset_rs

/obj/item/encryptionkey/headset_rs
	name = "radio station encryption key"
	icon = 'fulp_modules/radiostation/radiostation.dmi'
	icon_state = "rsh_cypherkey"
	channels = list(RADIO_CHANNEL_RADIO_STATION = 1)

//Area stuff

area/ruin/powered/radiostation
	icon_state = "blue"

//Datum stuff

/datum/map_template/ruin/space/radiostation
	id = "radiostation"
	suffix = "radiostation.dmm"
	name = "radiostation"
	description = "A Nanotrasen approved and funded radio station that currently has its ears, and by extension half of the galexy's ears, on Space Station 13."
	always_place = TRUE
	cost = 0

/obj/effect/mob_spawn/human/Radiohost
    name = "Radio Host"
    roundstart = FALSE
    death = FALSE
    random = TRUE
    icon = 'fulp_modules/radiostation/radiostation.dmi'
    icon_state = "nearly_blank"
    short_desc = "You Host a radio talk show that the entire galexy watches."
    flavour_text = "You have been told about the locations of one of nanotrasens famous secret stations, Space Station 13, you have been given permission to talk about it due to it being a lost cause of a station. You can welcome crewmembers to your station at your own risk, it is reccommended that you wear a gas mask if you decide to do so. You have also been given clearence to release knoledge of anything on the station to the public, as long as you dont go into detail on how each of them work, and how to get ahold of them."
    important_info = "This is a RP based job, do not do what is not expected of a radio talk show host. Remember that you are technicly talking to the entire galexy as a famous radio host, and act accordingly"
    outfit = /datum/outfit/Radiohost

/datum/outfit/Radiohost
	name = "Radio Host"
	uniform = /obj/item/clothing/under/rank/civilian/lawyer/black
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/fingerless
	ears = /obj/item/radio/headset/headset_radiostation
	back = /obj/item/storage/backpack/duffelbag
	id = /obj/item/card/id/radiohost
