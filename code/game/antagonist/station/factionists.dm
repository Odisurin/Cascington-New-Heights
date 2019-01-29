var/datum/antagonist/faction/factionists

/datum/antagonist/faction
	role_text = "Worker's Unionist"
	role_text_plural = "Worker's Unionists"
	var/role_desc = "A member of a faction organization."
	id = MODE_FACTIONS
	role_type = BE_FACTION
	bantype = "renegade"
	antag_text = "Your goals are the goals of the faction you work for,\
	communicate with your other factions and decide together on how you'll achieve\
	your goals. Find your allies, and plot together what you'll do."

	antaghud_indicator = "faction_wu"
	antag_indicator = "faction_wu"

	hard_cap = 5
	hard_cap_round = 6
	initial_spawn_req = 3
	initial_spawn_target = 6

	flags = ANTAG_IMPLANT_IMMUNE | ANTAG_VOTABLE
	can_use_aooc = TRUE

	restricted_jobs = list()
	var/starting_funds = 3000
	var/deepweb_website = list()


/datum/antagonist/faction/can_become_antag(var/datum/mind/player)
	if(!..())
		return 0
	for(var/obj/item/weapon/implant/loyalty/L in player.current)
		if(L && (L.imp_in == player.current))
			return 0
	return 1


/datum/antagonist/faction/trust_fund
	role_text = "Trust Funder"
	role_text_plural = "The Trust Funders"
	role_desc = "Rich assholes."
	starting_funds = 10000
	id =  MODE_FACTIONS_TF
	disallowed_classes = list("Working Class")

	antaghud_indicator = "faction_tf"
	antag_indicator = "faction_tf"

/datum/antagonist/faction/libreoracle
	role_text = "Libre Oracle"
	role_text_plural = "Libre Oracles"
	role_desc = "A group of hackers who are into that 4chan shit when it comes to  \
	hacking and trying to get NT's secrets."
	id =  MODE_FACTIONS_FI
	starting_funds = 5000
	antaghud_indicator = "faction_lo"
	antag_indicator = "faction_lo"

/datum/antagonist/faction/cartel
	role_text = "Blue Moon Cartelist"
	role_text_plural = "Blue Moon Cartelists"
	role_desc = "'An underground organization built through deals with the police and double-agents within the government. Sells firearms, influences politicians, controls crime lords."
	id =  MODE_FACTIONS_BC
	starting_funds = 8000

	antaghud_indicator = "faction_bc"
	antag_indicator = "faction_bc"

/datum/antagonist/faction/coalation
	role_text = "Coalition against Detection Follower"
	role_text_plural = "Coalition against Detection followers"
	role_desc = "Basically flat earthers."
	id =  MODE_FACTIONS_CD
	starting_funds = 4000
	antaghud_indicator = "faction_cd"
	antag_indicator = "faction_cd"