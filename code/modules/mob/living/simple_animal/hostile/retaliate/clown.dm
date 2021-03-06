/mob/living/simple_animal/hostile/retaliate/clown
	name = "Clown"
	desc = "A denizen of clown planet."
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "clown"
	icon_living = "clown"
	icon_dead = "clown_dead"
	icon_gib = "clown_gib"
	mob_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "gently pushes aside"
	response_harm = "robusts"
	speak = list("HONK", "Honk!", "Welcome to clown planet!")
	emote_see = list("honks", "squeaks")
	speak_chance = 1
	a_intent = INTENT_HARM
	maxHealth = 75
	health = 75
	speed = 1
	harm_intent_damage = 8
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "attacks"
	attack_sound = 'sound/items/bikehorn.ogg'
	obj_damage = 0
	environment_smash = ENVIRONMENT_SMASH_NONE
	del_on_death = 1
	loot = list(/obj/effect/mob_spawn/human/clown/corpse)

	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = 370
	unsuitable_atmos_damage = 10

/mob/living/simple_animal/hostile/retaliate/clown/handle_temperature_damage()
	if(bodytemperature < minbodytemp)
		adjustBruteLoss(10)
	else if(bodytemperature > maxbodytemp)
		adjustBruteLoss(15)

/mob/living/simple_animal/hostile/retaliate/clown/attack_hand(mob/living/carbon/human/M)
	..()
	playsound(src.loc, 'sound/items/bikehorn.ogg', 50, 1)

/mob/living/simple_animal/hostile/retaliate/cluwne
	name = "Cluwne"
	desc = "A sad creature, truly pathetic."
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "cluwne"
	icon_living = "cluwne"
	icon_dead = "cluwe_dead"
	icon_gib = "clown_gib"
	mob_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "gently pushes aside"
	response_harm = "robusts"
	speak = list("Honk...","Honnkk...","K-Kill m-me...")
	emote_see = list("honks", "squeaks")
	speak_chance = 1
	a_intent = INTENT_HARM
	maxHealth = 75
	health = 75
	speed = 1
	harm_intent_damage = 0
	melee_damage_lower = 0
	melee_damage_upper = 0
	attacktext = "bops"
	attack_sound = 'sound/items/bikehorn.ogg'
	obj_damage = 0
	environment_smash = ENVIRONMENT_SMASH_NONE
	del_on_death = 0
	loot = list(/obj/effect/mob_spawn/human/clown/corpse)

	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = 370
	unsuitable_atmos_damage = 10

/mob/living/simple_animal/hostile/retaliate/cluwne/handle_temperature_damage()
	if(bodytemperature < minbodytemp)
		adjustBruteLoss(10)
	else if(bodytemperature > maxbodytemp)
		adjustBruteLoss(15)

/mob/living/simple_animal/hostile/retaliate/cluwne/attack_hand(mob/living/carbon/human/M)
	..()
	playsound(src.loc, 'sound/items/bikehorn.ogg', 50, 1)
