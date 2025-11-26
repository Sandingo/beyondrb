; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
	db BROCK, 1
	db 2, 3, BIND
	db 2, 4, BIDE
	db 0
	
	db BROCK, 2 ; Post-Game Rematch
	db 1, 1, MEGA_PUNCH
	db 1, 2, ROCK_SLIDE
	db 2, 2, ICE_BEAM
	db 4, 1, ROCK_WRECKER
	db 4, 4, EARTHQUAKE
	db 5, 2, EARTHQUAKE
	db 0

	db KYLE, 1
	db 2, 1, TAKE_DOWN
	db 0
	
	db KYLE, 2 ; Post-Game Rematch
	db 1, 1, AMNESIA
	db 1, 2, ICE_BEAM
	db 1, 3, THUNDERBOLT
	db 3, 2, SOFTBOILED
	db 3, 3, SEISMIC_TOSS
	db 3, 4, FLAMETHROWER
	db 4, 1, THUNDERBOLT
	db 4, 3, BODY_SLAM
	db 5, 1, SURF
	db 5, 2, BODY_SLAM
	db 5, 3, FIRE_BLAST
	db 0

	db MISTY, 1
	db 2, 4, BUBBLEBEAM
	db 0

	db MISTY, 2 ; Post-Game Rematch
	db 1, 2, PSYCHIC_M
	db 1, 3, ICE_BEAM
	db 3, 1, SEISMIC_TOSS
	db 3, 2, ICE_BEAM
	db 4, 1, BLIZZARD
	db 5, 1, THUNDERBOLT
	db 5, 2, PSYCHIC_M
	db 5, 3, SURF
	db 5, 4, STAR_FREEZE
	db 0

	db LT_SURGE, 1
	db 3, 1, THUNDERBOLT
	db 3, 2, MEGA_PUNCH
	db 3, 3, MEGA_KICK
	db 3, 4, GROWL
	db 0
	
	db LT_SURGE, 2 ; Post-Game Rematch
	db 3, 1, SEISMIC_TOSS
	db 3, 2, STRENGTH
	db 4, 3, THUNDERBOLT
	db 4,4, TRI_ATTACK
	db 0

	db ERIKA, 1
	db 1, 3, MEGA_DRAIN
	db 2, 1, RAZOR_LEAF
	db 3, 1, PETAL_DANCE
	db 0

	db ERIKA, 2  ; Post-Game Rematch
	db 1, 4, SOLARBEAM
	db 2, 1, PSYCHIC_M
	db 2, 4, MEGA_DRAIN
	db 3, 1, MEGA_DRAIN
	db 4, 1, MEGA_DRAIN
	db 4, 2, REFLECT
	db 4, 3, REST
	db 5, 2, MEGA_DRAIN
	db 5, 3, SLEEP_POWDER
	db 0

	db KOGA, 1
	db 1, 1, TOXIC
	db 1, 2, TACKLE
	db 2, 1, TOXIC
	db 2, 2, DOUBLE_EDGE
	db 3, 1, TOXIC
	db 3, 3, SUPERSONIC
	db 4, 1, LEECH_LIFE
	db 4, 2, DOUBLE_TEAM
	db 4, 3, PSYCHIC_M
	db 4, 4, TOXIC
	db 0
	
	db KOGA, 2  ; Post-Game Rematch
	db 2, 1, TOXIC
	db 2, 2, THUNDERBOLT
	db 3, 2, FLAMETHROWER
	db 3, 4, TOXIC
	db 4, 1, TOXIC
	db 4, 2, FLY
	db 5, 1, DOUBLE_TEAM
	db 5, 2, TOXIC
	db 5, 3, MEGA_DRAIN
	db 0

	db BLAINE, 1
	db 1, 1, FLAMETHROWER
	db 1, 4, CONFUSE_RAY
	db 3, 1, FLAMETHROWER
	db 3, 2, FIRE_BLAST
	db 3, 3, REFLECT
	db 0
	
	db BLAINE, 2 ; Post-Game Rematch
	db 1, 1, FLAMETHROWER
	db 1, 2, DIG
	db 1, 4, CONFUSE_RAY
	db 2, 1, FLAMETHROWER
	db 2, 3, DOUBLE_EDGE
	db 3, 1, FLAMETHROWER
	db 3, 2, DIG
	db 3, 3, BITE
	db 5, 2, PSYCHIC_M
	db 5, 3, SEISMIC_TOSS
	db 0

	db SABRINA, 1
	db 1, 1, FLASH
	db 2, 4, PSYWAVE
	db 3, 1, LIGHT_SCREEN
	db 0
	
	db SABRINA, 2 ; Post-Game Rematch
	db 1, 1, REFLECT
	db 1, 2, PSYCHIC_M
	db 1, 3, DAZZLINGLEAM
	db 2, 1, DAZZLINGLEAM
	db 2, 3, DOUBLE_TEAM
	db 3, 1, SURF
	db 3, 2, ICE_BEAM
	db 4, 1, SEISMIC_TOSS
	db 4, 2, TOXIC
	db 5, 1, TRI_ATTACK
	db 0

	db KOICHI, 2 ; Post-Game Rematch
	db 1, 1, EARTHQUAKE
	db 1, 2, BODY_SLAM
	db 1, 3, HYPER_BEAM
	db 2, 1, THUNDERBOLT
	db 3, 1, COUNTER
	db 3, 2, BODY_SLAM
	db 5, 1, MEGA_KICK
	db 0

	db GIOVANNI, 3
	db 1, 3, FISSURE
	db 2, 2, DOUBLE_TEAM
	db 3, 1, EARTHQUAKE
	db 3, 3, THUNDER
	db 4, 1, EARTHQUAKE
	db 4, 2, LEER
	db 4, 3, THUNDER
	db 5, 1, ROCK_SLIDE
	db 5, 4, EARTHQUAKE
	db 0

	db LORELEI, 1
	db 1, 1, BUBBLEBEAM
	db 2, 3, ICE_BEAM
	db 3, 2, SURF
	db 4, 1, PSYCHIC_M
	db 4, 3, LOVELY_KISS
	db 5, 3, BLIZZARD
	db 0
	
	db LORELEI, 2
	db 1, 1, SURF
	db 1, 2, DOUBLE_TEAM
	db 2, 2, SURF
	db 2, 3, ICE_BEAM
	db 3, 1, SEISMIC_TOSS
	db 3, 2, SURF
	db 4, 1, PSYCHIC_M
	db 4, 2, ICE_BEAM
	db 4, 3, LOVELY_KISS
	db 5, 1, PSYCHIC_M
	db 5, 2, THUNDER
	db 0

	db BRUNO, 1
	db 1, 1, SURF
	db 1, 2, SCREECH
	db 1, 4, MEGA_PUNCH
	db 2, 3, FIRE_PUNCH
	db 2, 4, DOUBLE_TEAM
	db 3, 1, DOUBLE_KICK
	db 3, 2, MEGA_KICK
	db 3, 4, DOUBLE_TEAM
	db 4, 1, ROCK_SLIDE
	db 4, 2, SCREECH
	db 4, 4, EARTHQUAKE
	db 5, 2, KARATE_CHOP
	db 5, 3, STRENGTH
	db 0

	db BRUNO, 2
	db 1, 1, SURF
	db 1, 2, SEISMIC_TOSS
	db 1, 3, EARTHQUAKE
	db 2, 3, FIRE_PUNCH
	db 2, 4, DOUBLE_TEAM
	db 3, 1, EARTHQUAKE
	db 3, 2, ROCK_SLIDE
	db 4, 2, EARTHQUAKE
	db 5, 2, EARTHQUAKE
	db 5, 4, ROCK_SLIDE
	db 0

	db AGATHA, 1
	db 1, 2, SUBSTITUTE
	db 1, 3, LICK
	db 1, 4, MEGA_DRAIN
	db 2, 2, TOXIC
	db 2, 4, LEECH_LIFE
	db 3, 1, THUNDERBOLT
	db 4, 1, WRAP
	db 5, 2, PSYCHIC_M
	db 0
	
	db AGATHA, 2
	db 1, 2, DAZZLINGLEAM
	db 1, 3, PSYCHIC_M
	db 2, 2, FLY
	db 2, 3, STEEL_WING
	db 3, 1, THUNDERBOLT
	db 4, 2, EARTHQUAKE
	db 4, 3, MEGA_DRAIN
	db 5, 1, PSYCHIC_M
	db 5, 3, DAZZLINGLEAM
	db 5, 4, THUNDERBOLT
	db 0

	db LANCE, 1
	db 1, 1, DRAGON_RAGE
	db 2, 1, THUNDER_WAVE
	db 2, 3, THUNDERBOLT
	db 3, 1, BUBBLEBEAM
	db 3, 2, TAKE_DOWN
	db 3, 3, ICE_BEAM
	db 4, 1, SUBSTITUTE
	db 4, 2, SCREECH
	db 4, 3, EARTHQUAKE
	db 5, 1, BLIZZARD
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db 0
	
	db LANCE, 2
	db 1, 1, EARTHQUAKE
	db 1, 2, THUNDERBOLT
	db 2, 1, FLY
	db 2, 2, EARTHQUAKE
	db 2, 3, FLAMETHROWER
	db 3, 1, HYPER_BEAM
	db 3, 3, ICE_BEAM
	db 4, 1, HYPER_BEAM
	db 4, 2, FLAMETHROWER
	db 4, 3, FISSURE
	db 5, 1, BLIZZARD
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db 0

	db RIVAL3, 1
	db 1, 3, FLY
	db 2, 4, KINESIS
	db 3, 4, ROCK_SLIDE
	db 4, 1, FLAMETHROWER
	db 5, 1, EGG_BOMB
	db 5, 4, MEGA_DRAIN
	db 6, 1, REFLECT
	db 0

	db RIVAL3, 2
	db 1, 3, FLY
	db 2, 4, KINESIS
	db 3, 4, ROCK_SLIDE
	db 4, 1, ICE_BEAM
	db 5, 1, FLAMETHROWER
	db 6, 2, MEGA_DRAIN
	db 6, 3, POISONPOWDER
	db 0

	db RIVAL3, 3
	db 1, 3, FLY
	db 2, 4, KINESIS
	db 3, 4, ROCK_SLIDE
	db 4, 1, EGG_BOMB
	db 4, 4, MEGA_DRAIN
	db 5, 1, ICE_BEAM
	db 6, 1, FLY
	db 0

	db RIVAL3, 4
	db 1, 1, COUNTER
	db 1, 2, EARTHQUAKE
	db 2, 1, DAZZLINGLEAM
	db 3, 3, THUNDERBOLT
	db 4, 1, FLAMETHROWER
	db 4, 2, DIG
	db 4, 3, DOUBLE_TEAM
	db 5, 1, EGG_BOMB
	db 5, 2, PSYCHIC_M
	db 5, 4, MEGA_DRAIN
	db 6, 1, EARTHQUAKE
	db 0
	
	db RIVAL3, 5
	db 1, 1, COUNTER
	db 1, 2, EARTHQUAKE
	db 2, 1, DAZZLINGLEAM
	db 3, 3, THUNDERBOLT
	db 4, 1, ICE_BEAM
	db 5, 1, FLAMETHROWER
	db 5, 2, DIG
	db 5, 3, DOUBLE_TEAM
	db 6, 2, MEGA_DRAIN
	db 6, 3, POISONPOWDER
	db 0

	db RIVAL3, 6
	db 1, 1, COUNTER
	db 1, 2, EARTHQUAKE
	db 2, 1, DAZZLINGLEAM
	db 3, 3, THUNDERBOLT
	db 4, 1, EGG_BOMB
	db 4, 2, PSYCHIC_M
	db 4, 4, MEGA_DRAIN
	db 5, 1, ICE_BEAM
	db 6, 1, FLY
	db 0
	
	db PROF_OAK, 1
	db 1, 1, BODY_SLAM
	db 1, 2, HYPER_BEAM
	db 1, 3, ICE_BEAM
	db 1, 4, EARTHQUAKE
	db 2, 1, BLIZZARD
    db 2, 2, THUNDERBOLT
	db 3, 1, FIRE_BLAST
	db 3, 2, REST
	db 3, 3, HYPER_BEAM
	db 4, 2, MEGA_DRAIN
	db 4, 3, POISONPOWDER
	db 5, 1, DAZZLINGLEAM
	db 5, 2, REFLECT
	db 6, 2, THUNDER
	db 0

	db PROF_OAK, 2
	db 1, 1, BODY_SLAM
	db 1, 2, HYPER_BEAM
	db 1, 3, ICE_BEAM
	db 1, 4, EARTHQUAKE
	db 2, 1, EGG_BOMB
	db 2, 2, PSYCHIC_M
	db 2, 4, MEGA_DRAIN
	db 3, 1, BLIZZARD
    db 3, 2, THUNDERBOLT
	db 4, 1, FLY
	db 5, 1, DAZZLINGLEAM
	db 5, 2, REFLECT
	db 6, 2, THUNDER
	db 0

	db PROF_OAK, 3
	db 1, 1, BODY_SLAM
	db 1, 2, HYPER_BEAM
	db 1, 3, ICE_BEAM
	db 1, 4, EARTHQUAKE
	db 2, 1, FIRE_BLAST
	db 2, 2, REST
	db 2, 3, HYPER_BEAM
	db 2, 4, MEGA_DRAIN
	db 3, 1, EGG_BOMB
	db 3, 2, PSYCHIC_M
	db 3, 4, MEGA_DRAIN
	db 4, 1, EARTHQUAKE
	db 5, 1, DAZZLINGLEAM
	db 5, 2, REFLECT
	db 6, 2, THUNDER
	db 0
	
	db -1 ; end
