; super rod encounters
SuperRodData:
	; map, fishing group
	dbw PALLET_TOWN,         .Group1
	dbw VIRIDIAN_CITY,       .Group1
	dbw CERULEAN_CITY,       .Group3
	dbw VERMILION_CITY,      .Group4
	dbw CELADON_CITY,        .Group5
	dbw FUCHSIA_CITY,        .Group10
	dbw CINNABAR_ISLAND,     .Group8
	dbw CITRINE_ISLAND,      .Group8
	dbw ROUTE_4,             .Group3
	dbw ROUTE_6,             .Group4
	dbw ROUTE_10,            .Group5
	dbw ROUTE_11,            .Group4
	dbw ROUTE_12,            .Group7
	dbw ROUTE_13,            .Group7
	dbw ROUTE_17,            .Group7
	dbw ROUTE_18,            .Group7
	dbw ROUTE_19,            .Group8
	dbw ROUTE_20,            .Group8
	dbw ROUTE_21,            .Group8
	dbw ROUTE_22,            .Group2
	dbw ROUTE_23,            .Group9
	dbw ROUTE_24,            .Group3
	dbw ROUTE_25,            .Group3
	dbw ROUTE_28,			 .Group9
	dbw MT_SILVER_FRONT,	 .Group6
	dbw CERULEAN_GYM,        .Group3
	dbw VERMILION_DOCK,      .Group8
	dbw SEAFOAM_ISLANDS_B3F, .Group8
	dbw SEAFOAM_ISLANDS_B4F, .Group8
	dbw SAFARI_ZONE_EAST,    .Group6
	dbw SAFARI_ZONE_NORTH,   .Group6
	dbw SAFARI_ZONE_WEST,    .Group6
	dbw SAFARI_ZONE_CENTER,  .Group6
	dbw CERULEAN_CAVE_2F,    .Group9
	dbw CERULEAN_CAVE_B1F,   .Group9
	dbw CERULEAN_CAVE_1F,    .Group9
	dbw MT_SILVER_F1,		 .Group6
	dbw MT_SILVER_F2,		 .Group6
	dbw BILLS_GARDEN,		 .Group11
	dbw SAFARI_ZONE_EXPANSION, .Group6
	db -1 ; end

; fishing groups
; number of monsters, followed by level/monster pairs

.Group1:
	db 2
	dbw 30, TENTACOOL
	dbw 30, POLIWAG

.Group2:
	db 2
	dbw 30, GOLDEEN
	dbw 30, POLIWAG

.Group3:
	db 3
	dbw 30, PSYDUCK
	dbw 30, GOLDEEN
	dbw 30, KRABBY

.Group4:
	db 2
	dbw 30, KRABBY
	dbw 30, SHELLDER
	dbw 30, BLOTTLE

.Group5:
	db 2
	dbw 32, POLIWHIRL
	dbw 30, SLOWPOKE

.Group6:
	db 4
	dbw 30, DRATINI
	dbw 30, KRABBY
	dbw 30, WEIRDUCK
	dbw 30, SLOWPOKE

.Group7:
	db 4
	dbw 25, TENTACOOL
	dbw 30, KRABBY
	dbw 30, GOLDEEN
	dbw 30, MAGIKARP

.Group8:
	db 4
	dbw 30, STARYU
	dbw 30, HORSEA
	dbw 30, SHELLDER
	dbw 30, CHEEP

.Group9:
	db 4
	dbw 32, SLOWBRO
	dbw 32, SEAKING
	dbw 32, KINGLER
	dbw 32, SEADRA

.Group10:
	db 4
	dbw 32, SEAKING
	dbw 30, BLOTTLE
	dbw 30, GOLDEEN
	dbw 30, MAGIKARP

.Group11:
	db 4
	dbw 30, SKIMPER
	dbw 30, KRABBY
	dbw 30, WEIRDUCK
	dbw 30, SLOWPOKE