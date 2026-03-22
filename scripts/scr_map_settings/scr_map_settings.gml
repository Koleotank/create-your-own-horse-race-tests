function scr_map_settings(argument0)
{
	func_switchmusic(sfx_null) //switches the music for this map
	global.COUNTDOWN_SKIPTO = 0 //which frame to skip to in the coundtown
	global.FASTER_COUNTDOWN = false //experimental, makes the countdown twice as fast
	global.ANTI_COLLISION_MEASURE = "cheap" //what anti collision measure you want to use when a horse is stuck in a wall
	//cheap: pushes the horse backwards in one direction until it finds a suitable position.
	//will only use positions in the opposite direction of it's targetangle and might be buggy, but it's cheaper on performance
	//expensive: actively looks for positions relative to the horse's position. runs way more loops than the cheap option,
	//potentially having a more significant impact on performance (before v1.1, this was the default option)
	//nothing: does nothing. is the cheapest on performance, but horses will stay stuck if they clip into a wall
	global.OUT_OF_BOUNDS_MEASURE = "respawn" //how you want all horses to behave upon exiting the room's boundaries
	//respawn: forces horses to respawn at their start position
	//wrap: makes horses reappear at the opposite side of the room
	//nothing: does nothing, use if leaving the room boundaries is intended behavior
	global.MUSIC_DELAY = 30 //how many frames the map music is initially delayed for
	global.REMAINING_WIN_SLOTS = 1 //how many horses can win the race. doesn't apply for paradise fishing or basketball
	global.SHOW_TIMER = true //displays the timer if enabled
	
	switch argument0
	{
		case rm_maptemplate:
		{
			func_switchmusic(choose(sfx_mu_race1,sfx_mu_race2,sfx_mu_race3))
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_mapclassic1:
		{
			func_switchmusic(sfx_mu_race1remake)
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_mapclassic2:
		{
			func_switchmusic(sfx_mu_race2remake)
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_mapclassic3:
		{
			func_switchmusic(sfx_mu_race3remake)
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_mapclassic4:
		{
			//func_switchmusic(sfx_mu_race4remake)
			global.COUNTDOWN_SKIPTO = 419
		}
		break
		case rm_mapclassic5:
		{
			//func_switchmusic(sfx_mu_race5)
			func_switchmusic(sfx_mu_race4remake)
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_mapclassic6:
		{
			func_switchmusic(sfx_mu_race6remake)
			//func_switchmusic(sfx_mu_horsestambourineremake)
			if instance_exists(obj_announcer)
			{
				obj_announcer.announcertype = "spooky"
			}
		}
		break
		case rm_mapclassic7:
		{
			func_switchmusic(sfx_mu_race7)
			global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 3
			if instance_exists(obj_announcer)
			{
				obj_announcer.announcertype = "spooky"
			}
		}
		break
		case rm_open:
		{
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_mapexample:
		{
			func_switchmusic(sfx_mu_paradise)
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_map3:
		{
			func_switchmusic(sfx_mu_racesanctuary)
			global.COUNTDOWN_SKIPTO = 419
			global.MUSIC_DELAY = 0
		}
		break
		case rm_map4:
		{
			func_switchmusic(choose(sfx_mu_racepinball1,sfx_mu_racepinball2))
			global.COUNTDOWN_SKIPTO = 419
			global.REMAINING_WIN_SLOTS = 3
		}
		break
		case rm_map5:
		{
			func_switchmusic(sfx_mu_race5)
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
		}
		break
		case rm_mapnightmare1:
		{
			func_switchmusic(sfx_mu_racewind)
			if instance_exists(obj_announcer)
			{
				obj_announcer.announcertype = "spooky"
			}
		}
		break
		case rm_pond:
		{
			global.SHOW_TIMER = false
		}
		break
		case rm_pondfinal:
		{
			func_switchmusic(sfx_mu_paradise)
			global.OUT_OF_BOUNDS_MEASURE = "nothing"
			global.SHOW_TIMER = false
		}
		break
		case rm_roadcutscene:
		{
			func_switchmusic(sfx_mu_sirens)
			global.SHOW_TIMER = false
		}
		break
		case rm_mapmutant1:
		{
			func_switchmusic(sfx_mu_mutant)
			global.COUNTDOWN_SKIPTO = 419
			if instance_exists(obj_announcer)
			{
				obj_announcer.announcertype = "weird"
			}
		}
		break
		case rm_mapprison:
		{
			global.COUNTDOWN_SKIPTO = 419
		}
		break
		case rm_hell:
		{
			func_switchmusic(sfx_mu_hell)
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.MUSIC_DELAY = 240
			global.SHOW_TIMER = false
		}
		break
		case rm_litmus1:
		{
			func_switchmusic(stage_theme_3)
			global.COUNTDOWN_SKIPTO = 419
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.MUSIC_DELAY = 0
			global.SHOW_TIMER = false
		}
		break
		case rm_litmus2:
		{
			func_switchmusic(stage_theme_3)
			global.COUNTDOWN_SKIPTO = 419
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.MUSIC_DELAY = 0
			global.SHOW_TIMER = false
		}
		break
		case rm_gijinka1:
		{
			func_switchmusic(sfx_mu_lufia2battle2)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka2:
		{
			func_switchmusic(sfx_mu_gradiusheavyblow)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka3:
		{
			func_switchmusic(sfx_mu_earthboundhippie)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka4:
		{
			func_switchmusic(sfx_mu_rs3thebattle)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka5:
		{
			func_switchmusic(sfx_mu_rs1coupdegrace)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka6:
		{
			func_switchmusic(sfx_mu_lufia2summer)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka7:
		{
			func_switchmusic(sfx_mu_earthboundzombie)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka8:
		{
			func_switchmusic(sfx_mu_ffvgilgamesh)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka9:
		{
			func_switchmusic(sfx_mu_earthboundhippie)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka10:
		{
			func_switchmusic(sfx_mu_vvvvvvpushingonwards)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka11:
		{
			func_switchmusic(sfx_mu_themeofpuyopuyo)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka11b:
		{
			func_switchmusic(sfx_mu_stickerofpuyopuyo)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka12:
		{
			func_switchmusic(sfx_mu_tfivdownrightattack)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka13:
		{
			func_switchmusic(sfx_mu_mm2wily1)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka14:
		{
			func_switchmusic(sfx_mu_hardcorpssimon1994rd)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka15:
		{
			func_switchmusic(sfx_mu_rs3thebattle)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka16:
		{
			func_switchmusic(sfx_mu_zerorangersea)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka17:
		{
			func_switchmusic(sfx_mu_neverballtrack3)
			global.SHOW_TIMER = false
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka18:
		{
			func_switchmusic(sfx_mu_neverballtrack3)
			global.SHOW_TIMER = false
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka19:
		{
			func_switchmusic(sfx_mu_wicked18tutorial)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka20:
		{
			func_switchmusic(sfx_mu_rs3fournobledevils2)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka21:
		{
			func_switchmusic(sfx_mu_wicked18tutorial)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka22:
		{
			func_switchmusic(sfx_mu_lufia2battle3)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka23:
		{
			func_switchmusic(sfx_mu_tfivairraid)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka23b:
		{
			func_switchmusic(sfx_mu_gradiusheavyblow)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka24:
		{
			func_switchmusic(sfx_mu_wicked18volcano)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka25:
		{
			func_switchmusic(sfx_mu_wicked18volcano)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka26:
		{
			func_switchmusic(sfx_mu_wicked18ocean)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka27:
		{
			func_switchmusic(sfx_mu_mineswplusfinalboss10)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka28:
		{
			func_switchmusic(sfx_mu_vortexmagmemo)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka29:
		{
			func_switchmusic(sfx_mu_sct2cuddlehotel)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka30:
		{
			func_switchmusic(sfx_mu_earthboundfourside)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka31:
		{
			func_switchmusic(sfx_mu_tokimekiferriswheel)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka32:
		{
			func_switchmusic(sfx_mu_mkrainbowroad)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka33:
		{
			func_switchmusic(sfx_mu_lufia2battle2)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka34:
		{
			func_switchmusic(sfx_mu_fortress2bluetheprofound)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka35:
		{
			func_switchmusic(sfx_mu_jogeiraddiction)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka36:
		{
			func_switchmusic(sfx_mu_jogeiraddiction)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka36b:
		{
			func_switchmusic(sfx_mu_jogeiraddiction)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka37:
		{
			func_switchmusic(sfx_mu_mineswplusfinalboss10)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka38:
		{
			func_switchmusic(sfx_mu_rayforcevision)
			global.SHOW_TIMER = false
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka39:
		{
			func_switchmusic(sfx_mu_sbustamovemetal)
			global.SHOW_TIMER = false
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka40:
		{
			func_switchmusic(sfx_mu_sbustamovebubblemission)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka41:
		{
			func_switchmusic(sfx_mu_mamorukunwillforce)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka42:
		{
			func_switchmusic(sfx_mu_neverballtrack1)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka43:
		{
			func_switchmusic(sfx_mu_famicommodore)
			global.SHOW_TIMER = false
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka44:
		{
			func_switchmusic(sfx_mu_kirakiraconfeito)
			global.SHOW_TIMER = false
			//global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka45:
		{
			func_switchmusic(sfx_mu_ynmartian)
			global.SHOW_TIMER = false
			//global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka46:
		{
			func_switchmusic(sfx_mu_tfivomake4)
			global.SHOW_TIMER = false
			//global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka47:
		{
			func_switchmusic(sfx_mu_exceed3rdcapitalpunishment)
			global.SHOW_TIMER = false
			//global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka48:
		{
			func_switchmusic(sfx_mu_auro_onion)
			global.SHOW_TIMER = false
			//global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka49:
		{
			func_switchmusic(sfx_mu_exceed3rdcapitalpunishment)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka50:
		{
			func_switchmusic(sfx_mu_vvvvvvpushingonwards)
			global.SHOW_TIMER = false
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka51:
		{
			func_switchmusic(sfx_mu_nm68baseballnews)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka52:
		{
			func_switchmusic(sfx_mu_kccdrawcia)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka53:
		{
			func_switchmusic(sfx_mu_crs68kpleasuretrip)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka54:
		{
			func_switchmusic(sfx_mu_sioniiamount)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka55:
		{
			func_switchmusic(sfx_mu_grounseedret2)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka56:
		{
			func_switchmusic(sfx_mu_gareggamarginal)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka57:
		{
			func_switchmusic(sfx_mu_cailloushucks)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka58:
		{
			func_switchmusic(sfx_mu_wind)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka59:
		{
			func_switchmusic(sfx_mu_sor2wave131)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka60:
		{
			func_switchmusic(sfx_mu_mmbn2virusbust)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
		case rm_gijinka61:
		{
			func_switchmusic(sfx_mu_mmbn6battle)
			global.SHOW_TIMER = false
			global.ANTI_COLLISION_MEASURE = "expensive"
			global.OUT_OF_BOUNDS_MEASURE = "wrap"
			//global.COUNTDOWN_SKIPTO = 419
			//global.REMAINING_WIN_SLOTS = 75
		}
		break
	}
}