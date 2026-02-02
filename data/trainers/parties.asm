TrainerDataPointers:
	table_width 2, TrainerDataPointers
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw ImakuniData
	dw FisherData
	dw SwimmerMData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	dw MinaData
	dw HitechJackData
	dw ArcherData
	dw KyleData
	dw KoichiData
	dw SwimmerFData
	assert_table_length NUM_TRAINERS

MACRO dparty
	; if first byte != $FF, then
	db \1 ; first byte is level (of all pokemon on this team)
	SHIFT
	dw \# ; all the next bytes are pokemon species
	dw 0 ; null-terminated
ENDM

MACRO dparty2
	; if first byte == $FF, then
	db $FF ; first byte is $FF (obviously)
	REPT _NARG / 2
		dbw \1, \2 ; every next two bytes are a level and species
		shift 2
	ENDR
	dw 0 ; null-terminated
ENDM

YoungsterData:
; Route 3
	dparty 11, RATTATA, EKANS
	dparty 14, SPEAROW
; Mt. Moon 1F
	dparty 10, COINPUR, RATTATA, BITTYBAT
; Route 24
	dparty 14, RATTATA, EKANS, ZUBAT
; Route 25
	dparty 15, COINPUR, SPEAROW
	dparty 17, SLOWPOKE
	dparty 14, EKANS, SANDSHREW
; SS Anne 1F Rooms
	dparty 21, NIDORAN_M
; Route 11
	dparty 21, EKANS
	dparty 19, SANDSHREW, ZUBAT
	dparty 17, RATTATA, RATTATA, RATICATE
	dparty 18, NIDORAN_M, NIDORINO
; Route 1
	dparty 3, RATTATA

BugCatcherData:
; Viridian Forest
	dparty 6, WEEDLE, CATERPIE
	dparty 7, WEEDLE, KAKUNA, WEEDLE
	dparty 9, WEEDLE
; Route 3
	dparty 10, CATERPIE, WEEDLE, KOKANA
	dparty 9, WEEDLE, KAKUNA, CATERPIE, METAPOD
	dparty 11, KOKANA, PUPAL
; Mt. Moon 1F
	dparty 11, WEEDLE, KAKUNA
	dparty 10, CATERPIE, METAPOD, CATERPIE
; Route 24
	dparty 14, CATERPIE, WEEDLE
; Route 6
	dparty 16, WEEDLE, CATERPIE, KOKANA
	dparty 20, BUTTERFREE
; Unused
	dparty 18, METAPOD, CATERPIE, VENONAT
; Route 9
	dparty 19, BEEDRILL, CARAPTHOR
	dparty 20, CATERPIE, WEEDLE, VENONAT
; Viridian Forest, again
	dparty 8, KOKANA, PUPAL

LassData:
; Route 3
	dparty 9, PIDGEY, PIDGEY
	dparty 10, COINPUR, NIDORAN_M
	dparty 14, JIGGLYPUFF
; Route 4
	dparty 31, PARASPOR, PARAS, PARASECT
; Mt. Moon 1F
	dparty 11, ODDISH, BELLSPROUT
	dparty 14, CLEFAIRY
; Route 24
	dparty 16, PIDGEY, NIDORAN_F
	dparty 14, PIDGEY, NIDORAN_F
; Route 25
	dparty 15, NIDORAN_M, NIDORAN_F
	dparty 13, ODDISH, PIDGEY, VULPIII
; SS Anne 1F Rooms
	dparty 18, PIDGEY, NIDORAN_F
; SS Anne 2F Rooms
	dparty 18, RATTATA, PIKACHU
; Route 8
	dparty 23, NIDORAN_F, NIDORINA
	dparty 24, MEOWTH, MEOWTH, MEOWTH
	dparty 19, PIDGEY, RATTATA, NIDORAN_M, MEOWTH, PIKACHU
	dparty 22, CLEFAIRY, CLEFABLE
; Celadon Gym
	dparty 23, BELLSPROUT, WEEPINBELL
	dparty 23, ODDISH, GLOOM
; Viridian Forest
	dparty 8, PIKACHU

SailorData:
; SS Anne Stern
	dparty 18, MACHOP, SHELLDER
	dparty 17, MACHOP, TENTACOOL
; SS Anne B1F Rooms
	dparty 21, SHELLDER
	dparty 17, HORSEA, SHELLDER, TENTACOOL
	dparty 18, TENTACOOL, STARYU
	dparty 17, HORSEA, GOLDEEN, POLIWAG
	dparty 20, MACHOP
; Vermilion Gym
	dparty 21, PICHU, PIKACHU

JrTrainerMData:
; Pewter Gym
	dparty 11, DIGLETT, SANDSHREW
; Route 24/Route 25
	dparty 14, RATTATA, EKANS
; Route 24
	dparty 18, MANKEY
; Route 6
	dparty 20, SQUIRTLE
	dparty 16, SPEAROW, RATICATE
; Unused
	dparty 18, DIGLETT, DIGLETT, SANDSHREW
; Route 9
	dparty 21, GROWLITHE, CHARMANDER
	dparty 19, RATTATA, DIGLETT, EKANS, SANDSHREW
; Route 12
	dparty 29, NIDORAN_M, NIDORINO

JrTrainerFData:
; Cerulean Gym
	dparty 19, GOLDEEN
; Route 6
	dparty 16, RATTATA, PIKACHU
	dparty 16, PIDGEY, PIDGEY, PIDGEY
; Unused
	dparty 22, BULBASAUR
; Route 9
	dparty 18, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT
	dparty 23, MEOWTH
; Route 10
	dparty 20, KOTORA, CLEFAIRY
	dparty 21, PIDGEY, PIDGEOTTO
; Rock Tunnel B1F
	dparty 21, JIGGLYPUFF, PIDGEY, MEOWTH
	dparty 22, ODDISH, BULBASAUR
; Celadon Gym
	dparty 24, BULBASAUR, IVYSAUR
; Route 13
	dparty 24, PIDGEY, MEOWTH, RATTATA, PIKACHU, MEOWTH
	dparty 30, POLIWAG, POLIWAG
	dparty 27, PIDGEY, MEOWTH, PIDGEY, PIDGEOTTO
	dparty 28, GOLDEEN, POLIWAG, HORSEA
; Route 20
	dparty 31, GOLDEEN, SEAKING
; Rock Tunnel 1F
	dparty 22, CLEFFA, CLEFAIRY
	dparty 20, MEOWTH, ODDISH, PIDGEY
	dparty 19, PIDGEY, RATTATA, RATTATA, BELLSPROUT
; Route 15
	dparty 28, GLOOM, ODDISH, ODDISH
	dparty 30, ELECTABUZZ
	dparty 33, CLEFAIRY, BALUMBA
	dparty 29, BURGELA, TANGELA
; Route 20
	dparty 30, BLOTTLE, HORSEA, SEEL

PokemaniacData:
; Route 10
	dparty 30, RHYHORN, LICKITUNG
	dparty 20, CUBONE, SLOWPOKE
; Rock Tunnel B1F
	dparty 20, SLOWPOKE, SLOWPOKE, SLOWPOKE
	dparty 22, CHARMANDER, CUBONE
	dparty 25, SLOWPOKE
; Victory Road 2F
	dparty 40, MAGCARGO, LAPRAS, LICKILORD
; Rock Tunnel 1F
	dparty 23, CUBONE, SLOWPOKE

SuperNerdData:
; Mt. Moon 1F
	dparty 11, MAGNEMITE, VOLTORB
; Mt. Moon B2F
	dparty 12, SMUJJ, VOLTORB, KOFFING
; Route 8
	dparty 20, VOLTORB, KOFFING, VOLTORB, MAGNEMITE
	dparty 22, SMUJJ, GRIMER, MUK
	dparty 26, KOFFING
; Unused
	dparty 22, KOFFING, MAGNEMITE, WEEZING
	dparty 20, MAGNEMITE, MAGNEMITE, KOFFING, MAGNETITE
	dparty 24, MAGNEMITE, VOLTORB
; Cinnabar Gym
	dparty 36, SLUGMA, VULPIX, NINETALES
	dparty 34, PONYTA, CHARMANDER, VULPIX, GROWLITHE
	dparty 41, RAPIDASH
	dparty 37, GROWLITHE, VULPIX

HikerData:
; Mt. Moon 1F
	dparty 10, GEODUDE, GEODUDE, ONIX
; Route 25
	dparty 15, MACHOP, GEODUDE
	dparty 13, GEODUDE, GEODUDE, MACHOP, GEODUDE
	dparty 17, ONIX
; Route 9
	dparty 21, GEODUDE, ONIX
	dparty 20, GEODUDE, MACHOP, GEODUDE
; Route 10
	dparty 21, GEODUDE, ONIX
	dparty 19, ONIX, GRAVELER
; Rock Tunnel B1F
	dparty 21, GEODUDE, GEODUDE, GRAVELER
	dparty 25, NAGAASP
; Route 9/Rock Tunnel B1F
	dparty 20, MANKEY, ONIX
; Rock Tunnel 1F
	dparty 19, GEODUDE, MACHOP, GEODUDE, GEODUDE
	dparty 20, ONIX, ONIX, GEODUDE
	dparty 21, GEODUDE, GRAVELER

BikerData:
; Route 13
	dparty 28, KOFFING, KOFFING, KOFFING
; Route 14
	dparty 29, KOFFING, GRIMER
; Route 15
	dparty 25, KOFFING, KOFFING, WEEZING, KOFFING, GRIMER
	dparty 28, KOFFING, GRIMER, WEEZING
; Route 16
	dparty 29, GRIMER, KOFFING
	dparty 33, WEEZING
	dparty 26, SMUJJ, SMUJJ, GRIMER, GRIMER
; Route 17
	; From https://www.smogon.com/smog/issue27/glitch:
	; 0E:5FC2 is offset of the ending 0 for this first Biker on Route 17.
	; BaseStats + (BASE_DATA_SIZE) * (000 - 1) = $5FC2;
	; that's the formula from GetMonHeader for the base stats of mon #000.
	; (BaseStats = $43DE and BANK(BaseStats) = $0E.)
	; Finally, PokedexOrder lists 0 as the dex ID for every MissingNo.
	; The result is that this data gets interpreted as the base stats
	; for MissingNo: 0, 33, MUK, 29, VOLTORB, VOLTORB, ..., 28, GRIMER, GRIMER.
	dparty 28, WEEZING, KOFFING, WEEZING
	dparty 33, MUK
	dparty 29, VOLTORB, VOLTORB
	dparty 29, WEEZING, MUK
	dparty 25, KOFFING, WEEZING, KOFFING, KOFFING, WEEZING
; Route 14
	dparty 26, KOFFING, KOFFING, GRIMER, KOFFING
	dparty 28, GRIMER, GRIMER, KOFFING
	dparty 29, KOFFING, MUK

BurglarData:
; Unused
	dparty 29, GROWLITHE, VULPIX
	dparty 33, GROWLITHE
	dparty 28, VULPIX, CHARMANDER, PONYTA
; Cinnabar Gym
	dparty 36, GROWLITHE, VULPIX, NINETALES
	dparty 41, PONYTA
	dparty 37, VULPIX, GROWLITHE
; Mansion 2F
	dparty 34, CHARMANDER, MAGMAR
; Mansion 3F
	dparty 38, NINETALES
; Mansion B1F
	dparty 34, SLUGMA, PONYTA

EngineerData:
; Unused
	dparty 21, VOLTORB, MAGNEMITE
; Route 11
	dparty 21, MAGNEMITE
	dparty 18, MAGNEMITE, MAGNETITE, MAGNETON

UnusedJugglerData:
; none

FisherData:
; SS Anne 2F Rooms
	dparty 17, ORFRY, TENTACOOL, GOLDEEN
; SS Anne B1F Rooms
	dparty 17, TENTACOOL, STARYU, SHELLDER
; Route 12
	dparty 22, GOLDEEN, POLIWAG, GOLDEEN
	dparty 24, TENTACOOL, GOLDEEN
	dparty 27, ORFRY, GOLDEEN
	dparty 21, POLIWAG, SHELLDER, GOLDEEN, HORSEA
; Route 21
	dparty 28, SEAKING, GOLDEEN, SEAKING, SEAKING
	dparty 31, SHELLDER, CLOYSTER
	dparty 27, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP
	dparty 33, ORFRY, GOLDEEN, SEAKING
; Route 12
	dparty 24, CHEEP, CHEEP

SwimmerMData:
; Cerulean Gym
	dparty 16, HORSEA, SHELLDER
; Route 19
	dparty 30, TENTACOOL, SHELLDER
	dparty 29, GOLDEEN, HORSEA, STARYU
	dparty 30, POLIWAG, POLIWHIRL
	dparty 27, HORSEA, TENTACOOL, TENTACOOL, GOLDEEN
	dparty 29, GOLDEEN, SHELLDER, SEAKING
	dparty 30, PSYDUCK, WEIRDUCK
	dparty 27, TENTACOOL, TENTACOOL, STARYU, HORSEA, TENTACRUEL
; Route 20
	dparty 31, SHELLDER, DISTURBAN
	dparty 35, STARYU
	dparty 28, HORSEA, HORSEA, SEADRA, HORSEA
; Route 21
	dparty 33, SEADRA, SHARPOON
	dparty 37, STARMIE
	dparty 33, STARYU, BLASTYKE
	dparty 34, POLIWHIRL, POLITOED

CueBallData:
; Route 16
	dparty 28, MACHOP, MANKEY, MACHOP
	dparty 29, MANKEY, MACHOP
	dparty 33, GAVILLAIN
; Route 17
	dparty 29, MANKEY, PRIMEAPE
	dparty 29, MACHOP, MACHOKE
	dparty 33, MACHOKE
	dparty 26, MANKEY, MANKEY, MACHOKE, MACHOP
	dparty 29, PRIMEAPE, MACHOKE
; Route 21
	dparty 31, TENTACOOL, BLOTTLE, TENTACRUEL

GamblerData:
; Route 11
	dparty 18, POLIWAG, HORSEA
	dparty 18, BELLSPROUT, ODDISH
	dparty 18, VOLTORB, MAGNEMITE
	dparty 18, GROWLITHE, VULPIX
; Route 8
	dparty 22, POLIWAG, POLIWAG, POLIWHIRL
; Unused
	dparty 22, ONIX, GEODUDE, GRAVELER
; Route 8
	dparty 24, GROWLITHE, VULPIX

BeautyData:
; Celadon Gym
	dparty 21, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT
	dparty 24, BELLSPROUT, CACTORMUS
	dparty 26, EXEGGCUTE
; Route 13
	dparty 27, RATTATA, PIKACHU, RATTATA
	dparty 29, CLEFAIRY, MEOWTH
; Route 15
	dparty 29, PIDGEOTTO, WIGGLYTUFF
	dparty 29, BULBASAUR, IVYSAUR
; Unused
	dparty 33, WEEPINBELL, BELLSPROUT, WEEPINBELL
	
SwimmerFData:
; Route 19
	dparty 27, POLIWAG, GOLDEEN, SEAKING, GOLDEEN, POLIWAG
	dparty 30, ORFRY, GOLDEEN, SEAKING
	dparty 29, STARYU, STARYU, STARYU
; Route 20
	dparty 35, PENDRAKEN, 0
	dparty 30, CHEEP, CHEEP, JABETTA, 0
	dparty 31, POLIWAG, SEAKING, 0
	dparty 30, SEADRA, HORSEA, SEADRA, 0
	dparty 30, SEADRA, HORSEA, SEADRA

PsychicData:
; Saffron Gym
	dparty 31, KADABRA, SLOWPOKE, MR_MIME, KADABRA
	dparty 34, MR_MIME, KADABRA
	dparty 33, SLOWPOKE, SLOWPOKE, SLOWBRO
	dparty 38, SLOWBRO

RockerData:
; Vermilion Gym
	dparty 20, VOLTORB, MAGNEMITE, VOLTORB
; Route 12
	dparty 29, VOLTORB, ELECTRODE

JugglerData:
; Silph Co. 5F
	dparty 29, KADABRA, MR_MIME
; Victory Road 2F
	dparty 41, DROWZEE, HYPNO, KADABRA, MR_MIME
; Fuchsia Gym
	dparty 31, DROWZEE, DROWZEE, KADABRA, DROWZEE
	dparty 34, DROWZEE, HYPNO
; Victory Road 2F
	dparty 48, MR_MIME
; Unused
	dparty 33, HYPNO
; Fuchsia Gym
	dparty 38, SMOGRUB
	dparty 34, DROWZEE, KADABRA

TamerData:
; Fuchsia Gym
	dparty 34, EKANS, NAGAASP
	dparty 33, ARBOK, SANDSLASH, ARBOK
; Viridian Gym
	dparty 43, RHYDON
	dparty 39, ARBOK, TAUROS
; Victory Road 2F
	dparty 44, RAMOOSE, GOLDUCK, QUADRAGON
; Unused
	dparty 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS

BirdKeeperData:
; Route 13
	dparty 29, PIDGEY, PIDGEOTTO
	dparty 25, SPEAROW, PIDGEY, PIDGEY, SPEAROW, SPEAROW
	dparty 26, PIDGEY, PIDGEOTTO, SPEAROW, FEAROW
; Route 14
	dparty 33, LUXWAN
	dparty 29, SPEAROW, FEAROW
; Route 15
	dparty 26, PIDGEOTTO, FARFETCHD, DODUO, PIDGEY
	dparty 28, DODAERIE, DODUO, DODRIO
; Route 18
	dparty 29, FARFETCHD, LUXWAN
	dparty 34, DODRIO
	dparty 26, SPEAROW, SPEAROW, FEAROW, SPEAROW
; Route 20
	dparty 30, FEAROW, FEAROW, PIDGEOTTO
; Unused
	dparty 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO
	dparty 42, FARFETCHD, FEAROW
; Route 14
	dparty 28, PIDGEY, DODUO, PIDGEOTTO
	dparty 26, PIDGEY, SPEAROW, PIDGEY, FEAROW
	dparty 29, PIDGEOTTO, FEAROW
	dparty 28, SPEAROW, DODUO, FEAROW

BlackbeltData:
; Fighting Dojo
	dparty 31, MANKEY, MANKEY, PRIMEAPE
	dparty 32, MACHOP, MACHOKE
	dparty 36, PRIMEAPE
	dparty 31, MACHOP, MANKEY, PRIMEAPE
; Viridian Gym
	dparty 40, MACHOP, MACHOKE
	dparty 43, MACHOKE
	dparty 38, MACHOKE, MACHOP, MACHOKE
; Victory Road 2F
	dparty 43, MACHOKE, MACHOP, MACHOKE

KoichiData:
	dparty 37, HITMONLEE, HITMONCHAN, HITMONTOP
	dparty $FF, 63, MACHAMP, 64, ANNIHILAPE, 64, HITMONLEE, 65, HITMONCHAN, 66, HITMONTOP ; Rematch

Green1Data:
	dparty 5, SQUIRTLE
	dparty 5, BULBASAUR
	dparty 5, CHARMANDER
; Route 22
	dparty $FF, 9, PIDGEY, 8, SQUIRTLE
	dparty $FF, 9, PIDGEY, 8, BULBASAUR
	dparty $FF, 9, PIDGEY, 8, CHARMANDER
; Cerulean City
	dparty $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, SQUIRTLE
	dparty $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, BULBASAUR
	dparty $FF, 18, PIDGEOTTO, 15, ABRA, 15, RATTATA, 17, CHARMANDER

ProfOakData:
; Mt Silver Summit
	dparty $FF, 80, TAUROS, 82, GYARADOS,  82, ARCANINE,  84, VENUSAUR,  86, ESPEON, 88, GOROCHU
	dparty $FF, 80, TAUROS, 82, EXEGGUTOR, 82, GYARADOS,  84, CHARIZARD, 86, ESPEON, 88, GOROCHU
	dparty $FF, 80, TAUROS, 82, ARCANINE,  82, EXEGGUTOR, 84, TOTARTLE,  86, ESPEON, 88, GOROCHU

ChiefData:
; none

ScientistData:
; Unused
	dparty 34, KOFFING, VOLTORB
; Silph Co. 2F
	dparty 26, GRIMER, WEEZING, KOFFING, WEEZING
	dparty 28, MAGNETITE, VOLTORB, MAGNETON
; Silph Co. 3F/Mansion 1F
	dparty 29, ELECTRODE, WEEZING
; Silph Co. 4F
	dparty 33, ELECTRODE
; Silph Co. 5F
	dparty 26, MAGNETON, KOFFING, WEEZING, MAGNETITE
; Silph Co. 6F
	dparty 25, VOLTORB, KOFFING, MAGNETON, MAGNETITE, KOFFING
; Silph Co. 7F
	dparty 29, ELECTRODE, MUK
; Silph Co. 8F
	dparty 29, GRIMER, ELECTRODE
; Silph Co. 9F
	dparty 28, VOLTORB, KOFFING, MAGNETON
; Silph Co. 10F
	dparty 29, MAGNEMITE, KOFFING
; Mansion 3F
	dparty 33, MAGNETITE, MAGNETON, VOLTORB
; Mansion B1F
	dparty 34, MAGNETITE, ELECTRODE

GiovanniData:
; Rocket Hideout B4F
	dparty $FF, 23, MURKROW, 25, ONIX, 24, RHYHORN, 29, PERSIAN
; Silph Co. 11F
	dparty $FF, 37, NIDORINO, 35, RHYHORN, 37, PERSIAN, 38, HONCHKROW, 41, NIDOQUEEN
; Viridian Gym
	dparty $FF, 42, DUGTRIO, 44, NIDOQUEEN, 45, NIDOKING, 46, GUARDIA, 50, RHYPERIOR

RocketData:
; Mt. Moon B2F
	dparty 13, RATTATA, ZUBAT
	dparty 11, SANDSHREW, RATTATA, ZUBAT
	dparty 12, ZUBAT, EKANS
	dparty 16, RATICATE
; Cerulean City
	dparty 17, MACHOP, DROWZEE
; Route 24
	dparty 15, EKANS, ZUBAT
; Game Corner
	dparty 20, RATICATE, ZUBAT
; Rocket Hideout B1F
	dparty 21, DROWZEE, MACHOP
	dparty 21, RATICATE, RATICATE
	dparty 20, GRIMER, KOFFING, KOFFING
	dparty 19, RATTATA, RATICATE, RATICATE, RATTATA
	dparty 22, GRIMER, KOFFING
; Rocket Hideout B2F
	dparty 18, ZUBAT, KOFFING, GRIMER, ZUBAT, RATICATE
; Rocket Hideout B3F
	dparty 20, RATTATA, RATICATE, DROWZEE
	dparty 21, MACHOP, MACHOP
; Rocket Hideout B4F
	dparty 23, SANDSHREW, EKANS, SANDSLASH
	dparty 23, EKANS, SANDSHREW, ARBOK
	dparty 21, KOFFING, ZUBAT
; Pokémon Tower 7F
	dparty 25, BITTYBAT, ZUBAT, GOLBAT
	dparty 26, KOFFING, DROWZEE
	dparty 23, ZUBAT, RATTATA, RATICATE, GOLBAT
; Unused
	dparty 26, DROWZEE, KOFFING
; Silph Co. 2F
	dparty 29, CUBONE, ZUBAT
	dparty 25, GOLBAT, ZUBAT, ZUBAT, RATICATE, ZUBAT
; Silph Co. 3F
	dparty 28, RATICATE, HYPNO, RATICATE
; Silph Co. 4F
	dparty 29, MACHOP, DROWZEE
	dparty 28, EKANS, ZUBAT, CUBONE
; Silph Co. 5F
	dparty 33, ARBOK
	dparty 33, HYPNO
; Silph Co. 6F
	dparty 29, MACHOP, MACHOKE
	dparty 28, BITTYBAT, ZUBAT, GOLBAT
; Silph Co. 7F
	dparty 26, RATICATE, ARBOK, KOFFING, GOLBAT
	dparty 29, CUBONE, CUBONE
	dparty 29, SANDSHREW, SANDSLASH
; Silph Co. 8F
	dparty 26, RATICATE, ZUBAT, GOLBAT, RATTATA
	dparty 28, WEEZING, GOLBAT, KOFFING
; Silph Co. 9F
	dparty 28, DROWZEE, GRIMER, MACHOP
	dparty 28, GOLBAT, DROWZEE, HYPNO
; Silph Co. 10F
	dparty 33, MACHOKE
; Silph Co. 11F
	dparty 25, RATTATA, RATTATA, ZUBAT, RATTATA, EKANS
	dparty 32, CUBONE, DROWZEE, MAROWAK

CooltrainerMData:
; Viridian Gym
	dparty 39, NIDORINO, NIDOKING
; Victory Road 3F
	dparty 43, EXEGGUTOR, DISTURBAN, ARCANINE
	dparty 43, KINGLER, PENDRAKEN, BLASTOISE
; League HQ B1F
	dparty 45, KINGLER, JABETTA
; Victory Road 1F
	dparty 42, IVYSAUR, WARTORTLE, CHARMELEON, CHARIZARD
; League HQ B7F
	dparty 44, IVYSAUR, WARTORTLE, CHARMELEON
; League HQ B8F
	dparty 49, NIDOREIGN
; League HQ B3F Rooms
	dparty 44, KINGDRA, POLIWEALTH
; Viridian Gym
	dparty 39, SANDSLASH, DUGTRIO
	dparty 43, RHYHORN

CooltrainerFData:
; Celadon Gym
	dparty 24, WEEPINBELL, GLOOM, IVYSAUR
; Victory Road 3F
	dparty 43, BELLIGNAN, VICTREEBEL
	dparty 43, PARASECT, DEWGONG, BLISSEY
; League HQ B1F
	dparty 46, VILEPLUME, BUTTERFREE
; Victory Road 1F
	dparty 44, PERSIAN, NINETALES
; Unused
	dparty 45, IVYSAUR, VENUSAUR
; League HQ B8F
	dparty 45, NIDORINA, NIDOQUEEN
; League H1 B3F Rooms
	dparty 43, PERSIAN, NINETALES, RAICHU

BrunoData:
	dparty $FF, 53, POLIWRATH, 55, HITMONCHAN, 55, HITMONLEE, 56, STEELIX, 58, MACHAMP
	dparty $FF, 65, POLIWRATH, 65, HITMONCHAN, 65, HITMONLEE, 66, STEELIX, 68, MACHAMP ; Rematch

BrockData:
	dparty $FF, 12, GEODUDE, 14, ONIX
	dparty $FF, 63, GOLEM, 64, OMASTAR, 64, KLEAVOR, 65, RHYPERIOR, 66, STEELIX ; Rematch

MistyData:
	dparty $FF, 18, PSYDUCK, 21, STARMIE
	dparty $FF, 63, GOLDUCK, 64, SHARPOON, 64, POLIWEALTH, 65, KINGDRA, 66, STARMIE ; Rematch

LtSurgeData:
	dparty $FF, 21, VOLTORB, 18, PIKACHU, 24, RAICHU
	dparty $FF, 63, ELECTRODE, 64, JOLTEON, 64, ELECTIVIRE, 65, MAGNEZONE, 66, GOROCHU ; Rematch

ErikaData:
	dparty $FF, 29, VICTREEBEL, 24, TANGELA, 29, BELLOSSOM
	dparty $FF, 63, JUNGELA, 64, EXEGGUTOR, 64, PARASECT, 65, BELLIGNAN, 66, BELLOSSOM ; Rematch

KogaData:
	dparty $FF, 37, WEEZING, 39, MUK, 37, GOLBAT, 44, VENOMOTH
	dparty $FF, 63, PENDRAKEN, 64, WEEZING, 64, MUK, 65, CROBAT, 66, VENOMOTH ; Rematch

BlaineData:
	dparty $FF, 42, NINETALES, 40, RAPIDASH, 42, ARCANINE, 47, MAGMORTAR
	dparty $FF, 63, NINETALES, 64, RAPIDASH, 64, ARCANINE, 65, MAGCARGO, 66, MAGMORTAR ; Rematch

SabrinaData:
	dparty $FF, 42, MR_MIME, 40, SLOWBRO, 42, ESPEON, 43, ALAKAZAM
	dparty $FF, 63, MR_MIME, 64, ESPEON, 64, SLOWKING, 65, HYPNO, 66, ALAKAZAM ; Rematch

GentlemanData:
; SS Anne 1F Rooms
	dparty 18, PUPPERON, GROWLITHE
	dparty 19, NIDORAN_M, NIDORAN_F
; SS Anne 2F Rooms/Vermilion Gym
	dparty 23, PIKACHU
; League HQ B3F Rooms
	dparty 48, ANNIHILAPE
; SS Anne 2F Rooms
	dparty 17, GROWLITHE, PONYTA

Green2Data:
; SS Anne 2F
	dparty $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, WARTORTLE
	dparty $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, IVYSAUR
	dparty $FF, 19, PIDGEOTTO, 16, RATICATE, 18, KADABRA, 20, CHARMELEON
; Pokémon Tower 2F
	dparty $FF, 25, PIDGEOTTO, 23, GROWLITHE, 22, EXEGGCUTE, 20, KADABRA, 25, WARTORTLE
	dparty $FF, 25, PIDGEOTTO, 23, SKULKRAKEN, 22, GROWLITHE, 20, KADABRA, 25, IVYSAUR
	dparty $FF, 25, PIDGEOTTO, 23, EXEGGCUTE, 22, SKULKRAKEN, 20, KADABRA, 25, CHARMELEON
; Silph Co. 7F
	dparty $FF, 37, PIDGEOT, 38, GROWLITHE, 35, EXEGGCUTE, 35, ALAKAZAM, 40, TOTARTLE
	dparty $FF, 37, PIDGEOT, 38, SKULKRAKEN, 35, GROWLITHE, 35, ALAKAZAM, 40, VENUSAUR
	dparty $FF, 37, PIDGEOT, 38, EXEGGCUTE, 35, SKULKRAKEN, 35, ALAKAZAM, 40, CHARIZARD
; Route 22
	dparty $FF, 47, PIDGEOT, 45, RHYDON, 45, GROWLITHE, 47, EXEGGCUTE, 50, ALAKAZAM, 53, TOTARTLE
	dparty $FF, 47, PIDGEOT, 45, RHYDON, 45, SKULKRAKEN, 47, GROWLITHE, 50, ALAKAZAM, 53, VENUSAUR
	dparty $FF, 47, PIDGEOT, 45, RHYDON, 45, EXEGGCUTE, 47, SKULKRAKEN, 50, ALAKAZAM, 53, CHARIZARD

Green3Data:
	dparty $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYPERIOR, 61, ARCANINE, 63, EXEGGUTOR, 65, TOTARTLE
	dparty $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYPERIOR, 61, SKULKRAKEN, 63, ARCANINE, 65, VENUSAUR
	dparty $FF, 61, PIDGEOT, 59, ALAKAZAM, 61, RHYPERIOR, 61, EXEGGUTOR, 63, SKULKRAKEN, 65, CHARIZARD
; Rematch
	dparty $FF, 72, TRICULES, 73, ALAKAZAM, 72, GODZILANTE, 73, ARCANINE, 73, EXEGGUTOR, 75, TOTARTLE
	dparty $FF, 72, TRICULES, 73, ALAKAZAM, 72, GODZILANTE, 73, SKULKRAKEN, 73, ARCANINE, 75, VENUSAUR
	dparty $FF, 72, TRICULES, 73, ALAKAZAM, 72, GODZILANTE, 73, EXEGGUTOR, 73, SKULKRAKEN, 75, CHARIZARD

LoreleiData:
	dparty $FF, 54, DEWGONG, 53, CLOYSTER, 54, FREEZETI, 56, JYNX, 56, LAPRAS
	dparty $FF, 64, DEWGONG, 63, CLOYSTER, 63, FREEZETI, 66, JYNX, 66, LAPRAS ; Rematch

ChannelerData:
; Unused
	dparty 22, GASTLY
	dparty 24, GASTLY
	dparty 23, GASTLY, GASTLY
	dparty 24, GASTLY
; Pokémon Tower 3F
	dparty 23, GASTLY
	dparty 24, DROWZEE
; Unused
	dparty 24, HAUNTER
; Pokémon Tower 3F
	dparty 22, WISPURR
; Pokémon Tower 4F
	dparty 24, GASTLY
	dparty 23, GASTLY, KADABRA
; Unused
	dparty 24, GASTLY
; Pokémon Tower 4F
	dparty 22, WISPURR
; Unused
	dparty 24, GASTLY
; Pokémon Tower 5F
	dparty 23, HAUNTER
; Unused
	dparty 24, GASTLY
; Pokémon Tower 5F
	dparty 22, GASTLY
	dparty 24, HAUNTER
	dparty 22, MR_MIME, HAUNTER
; Pokémon Tower 6F
	dparty 22, EKANS, DROWZEE, GASTLY
	dparty 24, GASTLY
	dparty 24, WISPURR
; Saffron Gym
	dparty 34, GASTLY, HAUNTER
	dparty 38, HAUNTER
	dparty 33, GRIMER, GASTLY, HAUNTER

AgathaData:
	dparty $FF, 55, WISPURR, 56, CROBAT, 56, ANNIHILAPE, 58, ARBOK, 60, GENGAR
	dparty $FF, 66, WISPURR, 66, CROBAT, 65, ANNIHILAPE, 68, ARBOK, 70, GENGAR ; Rematch

LanceData:
	dparty $FF, 58, GYARADOS, 56, AERODACTYL, 56, CRYITHAN, 60, GAWARHED, 62, DRAGONITE
	dparty $FF, 68, GYARADOS, 66, AERODACTYL, 66, CRYITHAN, 70, GAWARHED, 72, DRAGONITE ; Rematch

MinaData:
	dparty $FF, 21, JIGGLYPUFF, 22, MR_MIME
	dparty $FF, 63, MR_MIME, 64, BALUMBA, 64, PERITOP, 65, NINETALES, 66, WIGGLYTUFF ; Post-Game
	
HitechJackData:
	dparty $FF, 35, PORYGON, 36, MAGNETON, 37, ELECTRODE 
	dparty $FF, 50, DITTO, 50, DITTO, 50, DITTO, 50, DITTO ; Placeholder team for the battle facility
	
ArcherData:
; Rocket Hideout
	dparty $FF, 24,HOUNDOUR, 25,KOFFING, 28,GOLBAT
; Silph Co.
	dparty $FF, 37, WEEZING, 38, GOLBAT, 39, HOUNDOOM

KyleData:
	dparty $FF, 13, MEOWTH, 15, LICKITUNG
	dparty $FF, 63, SNORLAX, 64, GORILLAIMO, 64, BLISSEY, 65, PERSIAN, 66, LICKILORD ; Post-Game
	
ImakuniData:
	dparty $FF, 25, SLOWPOKE, 26, WEIRDUCK, 27, FARFETCHD, 28, HYPNO
	dparty $FF, 60, SLOWBRO, 61, GOLDUCK, 62, LUXWAN, 63, POLITOED, 64, HYPNO	; Post-Game
	