; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2, EvosMovesPointerTable
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw CrobatEvosMoves
	dw GelaniaEvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw AnnihilapeEvosMoves
	dw MagmarEvosMoves
	dw ElectivireEvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MagmortarEvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw SteelixEvosMoves
	dw GuardiaEvosMoves
	dw BellossomEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw EspeonEvosMoves
	dw UmbreonEvosMoves
	dw LeafeonEvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw GlaceonEvosMoves
	dw MadameEvosMoves
	dw BellignantEvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw PolitoedEvosMoves
	dw HappiEvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw KingdraEvosMoves
	dw RhyperiorEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw HoundourEvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw HoundoomEvosMoves
	dw ScizorEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw PluxEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw AnimonEvosMoves
	dw DecillaEvosMoves
	dw MukEvosMoves
	dw GyaoonEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw SlowkingEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw CrockyEvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw KotoraEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw RaitoraEvosMoves
	dw DiaaEvosMoves
	dw GorochuEvosMoves
	dw GorillaimoEvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw KokanaEvosMoves
	dw MagnemiteEvosMoves
	dw KasanagiEvosMoves
	dw KokaroachEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw LickilordEvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	dw Porygon2EvosMoves
	dw TurbannEvosMoves
	dw MagnezoneEvosMoves
	dw MurkrowEvosMoves
	dw HonchkrowEvosMoves
	dw SkimperEvosMoves
	dw BawliguaEvosMoves
	dw CryithanEvosMoves
	dw KleavorEvosMoves
	dw MeltanEvosMoves
	dw MelmetalEvosMoves
	dw BlastykeEvosMoves
	dw TotartleEvosMoves
	dw PoliwealthEvosMoves
	dw HitmontopEvosMoves
	dw BaloondaEvosMoves
	dw BuuEvosMoves
	dw TrampelEvosMoves
	dw GorotoraEvosMoves
	dw JaggEvosMoves
	dw StacktusEvosMoves
	dw CheepEvosMoves
	dw JabettaEvosMoves
	dw BlottleEvosMoves
	dw PendrakenEvosMoves
	dw OhmegaEvosMoves
	dw MarillEvosMoves
	dw AzumarillEvosMoves
	dw SlugmaEvosMoves
	dw MagcargoEvosMoves
	dw SylveonEvosMoves
	dw QuadragonEvosMoves
	dw SkulkrakenEvosMoves
	dw NidoreignEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db EVOLVE_ITEM, PROTECTOR, 1, RHYPERIOR
	db 0
; Learnset
	db 30, STOMP
	db 35, TAIL_WHIP
	db 40, FURY_ATTACK
	db 48, HORN_DRILL
	db 55, LEER
	db 64, TAKE_DOWN
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 26, BITE
	db 31, TAIL_WHIP
	db 36, MEGA_PUNCH
	db 41, LEER
	db 46, DIZZY_PUNCH
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 21, FOCUS_ENERGY
	db 29, FURY_ATTACK
	db 36, HORN_DRILL
	db 43, DOUBLE_KICK
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 9, FAIRY_WIND
	db 13, SING
	db 18, DOUBLESLAP
	db 24, MINIMIZE
	db 31, METRONOME
	db 39, DEFENSE_CURL
	db 46, MOONBLAST
	db 48, LIGHT_SCREEN
	db 51, BAIBAI_PUNCH
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 22, MIRROR_MOVE
	db 29, DRILL_PECK
	db 36, AGILITY
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 17, SONICBOOM
	db 22, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 36, SWIFT
	db 43, EXPLOSION
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 23, THRASH
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, DISABLE
	db 22, HEADBUTT
	db 27, GROWL
	db 33, WATER_GUN
	db 37, WITHDRAW
	db 44, AMNESIA
	db 55, PSYCHIC_M
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 22, POISONPOWDER
	db 30, RAZOR_LEAF
	db 38, GROWTH
	db 46, SLEEP_POWDER
	db 54, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, STOMP
	db 0

LickitungEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, LICKILORD
	db 0
; Learnset
	db 7, STOMP
	db 15, DISABLE
	db 23, DEFENSE_CURL
	db 31, SLAM
	db 39, SCREECH
	db 55, BAIBAI_PUNCH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 25, REFLECT
	db 28, LEECH_SEED
	db 32, STUN_SPORE
	db 37, POISONPOWDER
	db 42, SOLARBEAM
	db 48, SLEEP_POWDER
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 30, POISON_GAS
	db 33, MINIMIZE
	db 37, SLUDGE
	db 42, HARDEN
	db 48, SCREECH
	db 55, ACID_ARMOR
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 29, HYPNOSIS
	db 38, DREAM_EATER
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 8, SCRATCH
	db 14, POISON_STING
	db 21, TAIL_WHIP
	db 29, BITE
	db 36, FURY_SWIPES
	db 43, DOUBLE_KICK
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SCRATCH
	db 14, POISON_STING
	db 23, BODY_SLAM
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 25, LEER
	db 31, FOCUS_ENERGY
	db 38, THRASH
	db 41, BONE_RUSH
	db 43, BONEMERANG
	db 46, RAGE
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 30, STOMP
	db 35, TAIL_WHIP
	db 40, FURY_ATTACK
	db 45, HORN_DRILL
	db 50, LEER
	db 55, TAKE_DOWN
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SING
	db 20, MIST
	db 25, BODY_SLAM
	db 31, CONFUSE_RAY
	db 38, ICE_BEAM
	db 46, HYDRO_PUMP
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, EXTREMESPEED
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HI_JUMP_KICK
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BITE
	db 25, DRAGON_RAGE
	db 32, LEER
	db 41, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, ICE_STONE, 1, CLOYSTER
	db EVOLVE_ITEM, WATER_STONE, 1, TURBANN
	db 0
; Learnset
	db 13, ICICLE_SPEAR
	db 18, SUPERSONIC
	db 23, CLAMP
	db 30, AURORA_BEAM
	db 39, LEER
	db 50, ICE_BEAM
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 7, SUPERSONIC
	db 13, WRAP
	db 18, POISON_STING
	db 22, WATER_GUN
	db 27, CONSTRICT
	db 33, BARRIER
	db 40, SCREECH
	db 48, HYDRO_PUMP
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 27, HYPNOSIS
	db 35, DREAM_EATER
	db 0

ScytherEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, SCIZOR
	db EVOLVE_ITEM, NUGGET, 1, KLEAVOR
	db 0
; Learnset
	db 17, LEER
	db 20, FOCUS_ENERGY
	db 24, DOUBLE_TEAM
	db 29, SLASH
	db 35, SWORDS_DANCE
	db 42, AGILITY
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 17, WATER_GUN
	db 22, HARDEN
	db 27, RECOVER
	db 32, SWIFT
	db 36, STAR_FREEZE
	db 37, MINIMIZE
	db 42, LIGHT_SCREEN
	db 47, HYDRO_PUMP
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 24, BITE
	db 31, WITHDRAW
	db 42, SKULL_BASH
	db 52, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, PLUX
	db 0
; Learnset
	db 25, SEISMIC_TOSS
	db 30, GUILLOTINE
	db 36, FOCUS_ENERGY
	db 43, HARDEN
	db 49, SLASH
	db 54, SWORDS_DANCE
	db 0

TangelaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 44, GELANIA
	db 0
; Learnset
	db 29, ABSORB
	db 32, POISONPOWDER
	db 36, STUN_SPORE
	db 39, SLEEP_POWDER
	db 45, SLAM
	db 49, GROWTH
	db 0

CrobatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SUPERSONIC
	db 15, BITE
	db 21, CONFUSE_RAY
	db 33, WING_ATTACK
	db 44, HAZE
	db 55, SLUDGE
	db 0

GelaniaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, CONSTRICT
	db 29, ABSORB
	db 32, POISONPOWDER
	db 36, STUN_SPORE
	db 39, SLEEP_POWDER
	db 44, MEGA_DRAIN
	db 45, SLAM
	db 49, GROWTH
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 18, EMBER
	db 23, LEER
	db 30, TAKE_DOWN
	db 39, AGILITY
	db 50, FLAMETHROWER
	db 0

OnixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, STEELIX
	db 0
; Learnset
	db 15, BIND
	db 19, ROCK_THROW
	db 25, RAGE
	db 33, SLAM
	db 43, HARDEN
	db 45, IRON_TAIL
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 25, MIRROR_MOVE
	db 34, DRILL_PECK
	db 43, AGILITY
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 19, WHIRLWIND
	db 28, WING_ATTACK
	db 33, FEATHERDANCE
	db 36, AGILITY
	db 44, MIRROR_MOVE
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, 1, SLOWKING
	db 0
; Learnset
	db 18, DISABLE
	db 22, HEADBUTT
	db 27, GROWL
	db 33, WATER_GUN
	db 40, AMNESIA
	db 48, PSYCHIC_M
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, ALAKAZAM
	db 0
; Learnset
	db 16, CONFUSION
	db 18, KINESIS
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOLEM
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 29, HARDEN
	db 36, EARTHQUAKE
	db 43, EXPLOSION
	db 0

ChanseyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 45, HAPPI
	db 0
; Learnset
	db 6, FAIRY_WIND
	db 12, SOFTBOILED
	db 24, SING
	db 30, GROWL
	db 35, EGG_BOMB
	db 38, MINIMIZE
	db 44, DEFENSE_CURL
	db 48, LIGHT_SCREEN
	db 54, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, MACHAMP
	db 0
; Learnset
	db 12, UPPERCUT
	db 20, LOW_KICK
	db 25, LEER
	db 34, VITAL_THROW
	db 36, FOCUS_ENERGY
	db 44, SEISMIC_TOSS
	db 52, SUBMISSION
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, CONFUSION
	db 23, LIGHT_SCREEN
	db 31, DOUBLESLAP
	db 39, MEDITATE
	db 47, SUBSTITUTE
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, ROLLING_KICK
	db 38, JUMP_KICK
	db 43, FOCUS_ENERGY
	db 48, HI_JUMP_KICK
	db 53, MEGA_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 32, MACH_PUNCH
	db 33, FIRE_PUNCH
	db 38, ICE_PUNCH
	db 43, THUNDERPUNCH
	db 48, MEGA_PUNCH
	db 53, COUNTER
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, POISON_STING
	db 17, BITE
	db 27, GLARE
	db 36, SCREECH
	db 47, ACID
	db 49, CRUNCH
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, LEECH_LIFE
	db 30, SPORE
	db 39, SLASH
	db 48, GROWTH
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 28, TAIL_WHIP
	db 31, DISABLE
	db 36, CONFUSION
	db 43, FURY_SWIPES
	db 52, HYDRO_PUMP
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 29, POISON_GAS
	db 32, PSYCHIC_M
	db 37, MEDITATE
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 29, HARDEN
	db 36, EARTHQUAKE
	db 43, EXPLOSION
	db 0

AnnihilapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 37, SEISMIC_TOSS
	db 44, RAGE_FIST
	db 46, THRASH
	db 0

MagmarEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MAGMARIZER, 1, MAGMORTAR
	db 0
; Learnset
	db 36, LEER
	db 39, CONFUSE_RAY
	db 43, FIRE_PUNCH
	db 48, SMOKESCREEN
	db 52, SMOG
	db 55, FLAMETHROWER
	db 0

ElectivireEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, THUNDERSHOCK
	db 37, SCREECH
	db 42, THUNDERPUNCH
	db 49, LIGHT_SCREEN
	db 54, THUNDER
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db EVOLVE_ITEM, ELECTIRIZER, 1, ELECTIVIRE
	db 0
; Learnset
	db 34, THUNDERSHOCK
	db 37, SCREECH
	db 42, THUNDERPUNCH
	db 49, LIGHT_SCREEN
	db 54, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, MAGNEZONE
	db 0
; Learnset
	db 21, SONICBOOM
	db 25, THUNDERSHOCK
	db 29, SUPERSONIC
	db 38, THUNDER_WAVE
	db 46, SWIFT
	db 54, SCREECH
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 32, SLUDGE
	db 37, SMOKESCREEN
	db 40, SELFDESTRUCT
	db 45, HAZE
	db 48, EXPLOSION
	db 0

MagmortarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 36, LEER
	db 39, CONFUSE_RAY
	db 43, FIRE_PUNCH
	db 48, SMOKESCREEN
	db 52, SMOG
	db 55, FLAMETHROWER
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, THRASH
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 30, GROWL
	db 35, AURORA_BEAM
	db 40, REST
	db 45, TAKE_DOWN
	db 50, ICE_BEAM
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, SAND_ATTACK
	db 31, SLASH
	db 40, EARTHQUAKE
	db 49, FISSURE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, STOMP
	db 28, TAIL_WHIP
	db 35, LEER
	db 44, RAGE
	db 51, TAKE_DOWN
	db 0

SteelixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, BIND
	db 19, ROCK_THROW
	db 25, RAGE
	db 33, SLAM
	db 43, HARDEN
	db 45, IRON_TAIL
	db 49, CRUNCH
	db 0

GuardiaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, LEER
	db 33, FOCUS_ENERGY
	db 41, THRASH
	db 48, BONEMERANG
	db 55, RAGE
	db 57, BONE_RUSH
	db 0

BellossomEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, ABSORB
	db 18, STUN_SPORE
	db 55, SOLARBEAM
	db 0

FarfetchdEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, MADAME
	db 0
; Learnset
	db 7, LEER
	db 15, FURY_ATTACK
	db 23, SWORDS_DANCE
	db 31, AGILITY
	db 39, SLASH
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 24, POISONPOWDER
	db 27, LEECH_LIFE
	db 30, STUN_SPORE
	db 35, PSYBEAM
	db 38, SLEEP_POWDER
	db 43, PSYCHIC_M
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 35, SLAM
	db 45, DRAGON_RAGE
	db 60, HYPER_BEAM
	db 0

EspeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, CONFUSION
	db 37, TAIL_WHIP
	db 40, SWIFT
	db 42, LEER
	db 44, PSYBEAM
	db 48, PSYCHIC_M
	db 54, RECOVER
	db 0

UmbreonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, CONFUSE_RAY
	db 36, FEINT_ATTACK
	db 37, TAIL_WHIP
	db 42, LEER
	db 48, SCREECH
	db 54, RECOVER
	db 0

LeafeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, ABSORB
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, LEER
	db 44, RAZOR_LEAF
	db 48, SWORDS_DANCE
	db 54, SOLARBEAM
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 36, RAGE
	db 40, TRI_ATTACK
	db 44, AGILITY
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 25, DOUBLESLAP
	db 31, BODY_SLAM
	db 38, AMNESIA
	db 45, HYDRO_PUMP
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, LICK
	db 23, DOUBLESLAP
	db 31, ICE_PUNCH
	db 39, BODY_SLAM
	db 47, THRASH
	db 58, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, LEER
	db 55, AGILITY
	db 60, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, BLIZZARD
	db 55, AGILITY
	db 60, MIST
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, THUNDER
	db 55, AGILITY
	db 60, LIGHT_SCREEN
	db 0

DittoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, METAL_COAT, 1, ANIMON
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 24, SCREECH
	db 28, FEINT_ATTACK
	db 33, FURY_SWIPES
	db 44, SLASH
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 20, VICEGRIP
	db 21, METAL_CLAW
	db 25, GUILLOTINE
	db 30, STOMP
	db 35, CRABHAMMER
	db 40, HARDEN
	db 0

GlaceonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, MIST
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, AURORA_BEAM
	db 44, ICE_BEAM
	db 48, BARRIER
	db 54, BLIZZARD
	db 0

MadameEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEER
	db 15, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 33, AGILITY
	db 41, SLASH
	db 45, DRILL_PECK
	db 0

BellignantEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 40, LOVELY_KISS
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 16, QUICK_ATTACK
	db 21, ROAR
	db 28, CONFUSE_RAY
	db 35, FLAMETHROWER
	db 42, FIRE_SPIN
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 9, THUNDER_WAVE
	db 16, QUICK_ATTACK
	db 26, SWIFT
	db 33, AGILITY
	db 43, THUNDER
	db 52, VOLT_TACKLE
	db 0

RaichuEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOROCHU
	db 0
; Learnset
	db 0

PolitoedEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 0

HappiEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, FAIRY_WIND
	db 12, SOFTBOILED
	db 24, SING
	db 30, GROWL
	db 35, EGG_BOMB
	db 38, MINIMIZE
	db 44, DEFENSE_CURL
	db 50, LIGHT_SCREEN
	db 56, DOUBLE_EDGE
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 30, SLAM
	db 40, DRAGON_RAGE
	db 50, HYPER_BEAM
	db 52, EXTREMESPEED
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 35, SLAM
	db 45, DRAGON_RAGE
	db 55, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 34, ABSORB
	db 39, SLASH
	db 44, LEER
	db 49, HYDRO_PUMP
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, ABSORB
	db 39, SLASH
	db 46, LEER
	db 53, HYDRO_PUMP
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 19, SMOKESCREEN
	db 24, LEER
	db 30, WATER_GUN
	db 34, INK_SPRAY
	db 37, AGILITY
	db 45, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db EVOLVE_ITEM, DRAGON_SCALE, 1, KINGDRA
	db 0
; Learnset
	db 19, SMOKESCREEN
	db 24, LEER
	db 30, WATER_GUN
	db 36, INK_SPRAY
	db 41, AGILITY
	db 52, HYDRO_PUMP
	db 0

KingdraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, SMOKESCREEN
	db 24, LEER
	db 30, WATER_GUN
	db 36, INK_SPRAY
	db 41, AGILITY
	db 52, HYDRO_PUMP
	db 0

RhyperiorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, STOMP
	db 35, TAIL_WHIP
	db 40, FURY_ATTACK
	db 48, HORN_DRILL
	db 55, LEER
	db 64, TAKE_DOWN
	db 69, ROCK_WRECKER
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 10, SAND_ATTACK
	db 17, SLASH
	db 24, POISON_STING
	db 31, SWIFT
	db 38, FURY_SWIPES
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SAND_ATTACK
	db 17, SLASH
	db 27, POISON_STING
	db 36, SWIFT
	db 47, FURY_SWIPES
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 34, HORN_ATTACK
	db 39, LEER
	db 46, SPIKE_CANNON
	db 53, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, HORN_ATTACK
	db 39, LEER
	db 44, SPIKE_CANNON
	db 49, HYDRO_PUMP
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 9, POUND
	db 12, FAIRY_WIND
	db 14, DISABLE
	db 19, DEFENSE_CURL
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 49, BAIBAI_PUNCH
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db EVOLVE_ITEM, SUN_STONE, 1, ESPEON
	db EVOLVE_ITEM, MOON_STONE, 1, UMBREON
	db EVOLVE_ITEM, LEAF_STONE, 1, LEAFEON
	db EVOLVE_ITEM, ICE_STONE, 1, GLACEON
	db EVOLVE_ITEM, NUGGET, 1, SYLVEON
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, TAIL_WHIP
	db 37, BITE
	db 45, TAKE_DOWN
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, EMBER
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, LEER
	db 44, FIRE_SPIN
	db 48, RAGE
	db 54, FLAMETHROWER
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, THUNDERSHOCK
	db 37, TAIL_WHIP
	db 40, THUNDER_WAVE
	db 42, DOUBLE_KICK
	db 44, AGILITY
	db 48, PIN_MISSILE
	db 54, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, WATER_GUN
	db 37, TAIL_WHIP
	db 40, BITE
	db 42, ACID_ARMOR
	db 44, HAZE
	db 48, MIST
	db 54, HYDRO_PUMP
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 12, UPPERCUT
	db 20, LOW_KICK
	db 25, LEER
	db 31, VITAL_THROW
	db 32, FOCUS_ENERGY
	db 39, SEISMIC_TOSS
	db 46, SUBMISSION
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 10, SUPERSONIC
	db 15, BITE
	db 21, CONFUSE_RAY
	db 28, WING_ATTACK
	db 36, HAZE
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 10, POISON_STING
	db 17, BITE
	db 24, GLARE
	db 31, SCREECH
	db 38, ACID
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, LEECH_LIFE
	db 27, SPORE
	db 34, SLASH
	db 41, GROWTH
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, NUGGET, 1, POLIWEALTH
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db EVOLVE_TRADE, 1, POLITOED
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 26, DOUBLESLAP
	db 33, BODY_SLAM
	db 41, AMNESIA
	db 49, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, FURY_ATTACK
	db 16, FOCUS_ENERGY
	db 20, TWINEEDLE
	db 25, RAGE
	db 30, PIN_MISSILE
	db 35, AGILITY
	db 0

HoundourEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0
; Learnset
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FEINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 39, RAGE
	db 45, TRI_ATTACK
	db 51, AGILITY
	db 0

PrimeapeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 44, ANNIHILAPE
	db 0
; Learnset
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 37, SEISMIC_TOSS
	db 44, RAGE_FIST
	db 46, THRASH
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, SAND_ATTACK
	db 35, SLASH
	db 47, EARTHQUAKE
	db 61, FISSURE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, POISONPOWDER
	db 27, LEECH_LIFE
	db 30, STUN_SPORE
	db 38, PSYBEAM
	db 43, SLEEP_POWDER
	db 50, PSYCHIC_M
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, GROWL
	db 35, AURORA_BEAM
	db 44, REST
	db 50, TAKE_DOWN
	db 56, ICE_BEAM
	db 0

HoundoomEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FEINT_ATTACK
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 0

ScizorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, LEER
	db 20, FOCUS_ENERGY
	db 24, DOUBLE_TEAM
	db 29, SLASH
	db 30, METAL_CLAW
	db 35, SWORDS_DANCE
	db 42, AGILITY
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, CONFUSION
	db 15, POISONPOWDER
	db 16, STUN_SPORE
	db 17, SLEEP_POWDER
	db 21, SUPERSONIC
	db 26, WHIRLWIND
	db 32, PSYBEAM
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, UPPERCUT
	db 20, LOW_KICK
	db 25, LEER
	db 34, VITAL_THROW
	db 36, FOCUS_ENERGY
	db 44, SEISMIC_TOSS
	db 52, SUBMISSION
	db 0

PluxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, SEISMIC_TOSS
	db 30, GUILLOTINE
	db 32, METAL_CLAW
	db 36, FOCUS_ENERGY
	db 43, HARDEN
	db 49, SLASH
	db 52, CROSS_CUTTER
	db 54, SWORDS_DANCE
	db 77, GUILLOTINE
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, TAIL_WHIP
	db 31, DISABLE
	db 39, CONFUSION
	db 48, FURY_SWIPES
	db 59, HYDRO_PUMP
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 33, POISON_GAS
	db 37, PSYCHIC_M
	db 43, MEDITATE
	db 0

GolbatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 44, CROBAT
	db 0
; Learnset
	db 10, SUPERSONIC
	db 15, BITE
	db 21, CONFUSE_RAY
	db 32, WING_ATTACK
	db 43, HAZE
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 63, BARRIER
	db 66, PSYCHIC_M
	db 70, RECOVER
	db 75, MIST
	db 81, AMNESIA
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 35, BODY_SLAM
	db 41, HARDEN
	db 48, DOUBLE_EDGE
	db 56, HYPER_BEAM
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_ITEM, DRAGON_SCALE, 1, GYARADOS
	db EVOLVE_LEVEL, 20, SKULKRAKEN
	db 0
; Learnset
	db 15, TACKLE
	db 0

AnimonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, MIST
	db 40, LIGHT_SCREEN
	db 50, REFLECT
	db 0

DecillaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, GYAOON
	db 0
; Learnset
	db 18, SUPERSONIC
	db 25, DRAGON_RAGE
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 40, ROAR
	db 45, THRASH
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, POISON_GAS
	db 33, MINIMIZE
	db 37, SLUDGE
	db 45, HARDEN
	db 53, SCREECH
	db 60, ACID_ARMOR
	db 0

GyaoonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, SUPERSONIC
	db 25, DRAGON_RAGE
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 40, ROAR
	db 48, THRASH
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, VICEGRIP
	db 21, METAL_CLAW
	db 25, GUILLOTINE
	db 34, STOMP
	db 42, CRABHAMMER
	db 49, HARDEN
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, SPIKE_CANNON
	db 0

SlowkingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, DISABLE
	db 22, HEADBUTT
	db 27, GROWL
	db 33, WATER_GUN
	db 37, WITHDRAW
	db 44, AMNESIA
	db 55, PSYCHIC_M
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, SONICBOOM
	db 22, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 40, SWIFT
	db 50, EXPLOSION
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 32, SLUDGE
	db 39, SMOKESCREEN
	db 43, SELFDESTRUCT
	db 49, HAZE
	db 53, EXPLOSION
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 24, SCREECH
	db 29, FEINT_ATTACK
	db 37, FURY_SWIPES
	db 51, SLASH
	db 0

MarowakEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 46, GUARDIA
	db 0
; Learnset
	db 25, LEER
	db 33, FOCUS_ENERGY
	db 41, THRASH
	db 48, BONEMERANG
	db 53, BONE_RUSH
	db 55, RAGE
	db 0

CrockyEvosMoves:
; Evolutions
	db 0
; Learnset
    db 14, VINE_WHIP
	db 18, WATER_GUN
	db 20, FURY_ATTACK
	db 26, RAGE
	db 32, SCREECH
	db 38, RAZOR_LEAF
	db 42, DRAGON_RAGE
	db 48, THRASH
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GENGAR
	db 0
; Learnset
	db 29, HYPNOSIS
	db 38, DREAM_EATER
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, CONFUSION
	db 18, KINESIS
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 31, WING_ATTACK
	db 34, FEATHERDANCE
	db 40, AGILITY
	db 49, MIRROR_MOVE
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 31, WING_ATTACK
	db 34, FEATHERDANCE
	db 44, AGILITY
	db 54, MIRROR_MOVE
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 20, POISONPOWDER
	db 27, RAZOR_LEAF
	db 34, GROWTH
	db 41, SLEEP_POWDER
	db 48, SOLARBEAM
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 22, POISONPOWDER
	db 30, RAZOR_LEAF
	db 43, GROWTH
	db 55, SLEEP_POWDER
	db 65, SOLARBEAM
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, SUPERSONIC
	db 13, WRAP
	db 18, POISON_STING
	db 22, WATER_GUN
	db 27, CONSTRICT
	db 35, BARRIER
	db 43, SCREECH
	db 50, HYDRO_PUMP
	db 0

KotoraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, RAITORA
	db 0
; Learnset
	db 6, LEER
	db 11, ROAR
	db 23, BITE
	db 37, THUNDER
	db 45, AGILITY
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 19, SUPERSONIC
	db 24, HORN_ATTACK
	db 30, FURY_ATTACK
	db 37, WATERFALL
	db 45, HORN_DRILL
	db 54, AGILITY
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, SUPERSONIC
	db 24, HORN_ATTACK
	db 30, FURY_ATTACK
	db 39, WATERFALL
	db 48, HORN_DRILL
	db 54, AGILITY
	db 0

RaitoraEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, GOROTORA
	db 0
; Learnset
	db 6, LEER
	db 11, ROAR
	db 23, BITE
	db 40, THUNDER
	db 48, AGILITY
	db 0

DiaaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 14, SAND_ATTACK
	db 16, JUMP_KICK
	db 25, METAL_CLAW
	db 39, AGILITY
	db 45, THRASH
	db 49, IRON_TAIL
	db 0

GorochuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 52, IRON_TAIL
	db 60, HORN_DRILL
	db 0

GorillaimoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, ROAR
	db 15, BITE
	db 22, COUNTER
	db 29, SEISMIC_TOSS
	db 35, BODY_SLAM
	db 39, AMNESIA
	db 49, SUBMISSION
	db 52, MEGA_PUNCH
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 30, TAIL_WHIP
	db 32, STOMP
	db 35, GROWL
	db 39, FIRE_SPIN
	db 43, TAKE_DOWN
	db 48, AGILITY
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, TAIL_WHIP
	db 32, STOMP
	db 35, GROWL
	db 39, FIRE_SPIN
	db 47, TAKE_DOWN
	db 55, AGILITY
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, HYPER_FANG
	db 23, FOCUS_ENERGY
	db 34, SUPER_FANG
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, HYPER_FANG
	db 27, FOCUS_ENERGY
	db 41, SUPER_FANG
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db EVOLVE_ITEM, SUN_STONE, 1, NIDOREIGN
	db 0
; Learnset
	db 8, HORN_ATTACK
	db 14, POISON_STING
	db 23, FOCUS_ENERGY
	db 32, FURY_ATTACK
	db 41, HORN_DRILL
	db 50, DOUBLE_KICK
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db EVOLVE_ITEM, SUN_STONE, 1, NIDOREIGN
	db 0
; Learnset
	db 8, SCRATCH
	db 14, POISON_STING
	db 23, TAIL_WHIP
	db 32, BITE
	db 41, FURY_SWIPES
	db 50, DOUBLE_KICK
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 0

PorygonEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, PORYGON2
	db 0
; Learnset
	db 23, PSYBEAM
	db 28, RECOVER
	db 35, AGILITY
	db 42, TRI_ATTACK
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, SUPERSONIC
	db 38, BITE
	db 45, TAKE_DOWN
	db 54, HYPER_BEAM
	db 0

KokanaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KASANAGI
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 21, SONICBOOM
	db 25, THUNDERSHOCK
	db 29, SUPERSONIC
	db 35, THUNDER_WAVE
	db 41, SWIFT
	db 47, SCREECH
	db 0

KasanagiEvosMoves:
; Evolutions
	db EVOLVE_LEVEL,10, KOKAROACH
	db 0
; Learnset
	db 7, HARDEN
	db 8, HARDEN
	db 9, HARDEN
	db 0

KokaroachEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, UPPERCUT
	db 12, COMET_PUNCH
	db 16, PIN_MISSILE
	db 20, DEFENSE_CURL
	db 25, SWIFT
	db 30, MEGA_PUNCH
	db 35, SUBSTITUTE
	db 40, SEISMIC_TOSS
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 22, RAGE
	db 30, SLASH
	db 38, FLAMETHROWER
	db 46, FIRE_SPIN
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 22, BITE
	db 28, WITHDRAW
	db 35, SKULL_BASH
	db 42, HYDRO_PUMP
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 24, RAGE
	db 33, SLASH
	db 42, FLAMETHROWER
	db 56, FIRE_SPIN
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, TOTARTLE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 24, BITE
	db 31, WITHDRAW
	db 39, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 24, RAGE
	db 36, SLASH
	db 46, FLAMETHROWER
	db 55, FIRE_SPIN
	db 0

LickilordEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, STOMP
	db 15, DISABLE
	db 23, DEFENSE_CURL
	db 31, SLAM
	db 42, SCREECH
	db 58, BAIBAI_PUNCH
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 24, ACID
	db 33, PETAL_DANCE
	db 43, MOONBLAST
	db 46, SOLARBEAM
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, 1, BELLOSSOM
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 28, ACID
	db 38, PETAL_DANCE
	db 45, MOONBLAST
	db 52, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 19, SLEEP_POWDER
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 21, STUN_SPORE
	db 26, ACID
	db 33, RAZOR_LEAF
	db 42, SLAM
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db EVOLVE_ITEM, SUN_STONE, 1, BELLIGNANT
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 23, STUN_SPORE
	db 29, ACID
	db 38, RAZOR_LEAF
	db 49, SLAM
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, SLEEP_POWDER
	db 0

Porygon2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 23, PSYBEAM
	db 28, RECOVER
	db 35, AGILITY
	db 42, TRI_ATTACK
	db 0

TurbannEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, POISON_GAS
	db 0

MagnezoneEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, SONICBOOM
	db 28, THUNDERSHOCK
	db 31, SUPERSONIC
	db 40, THUNDER_WAVE
	db 48, SWIFT
	db 56, SCREECH
	db 0

MurkrowEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, HONCHKROW
	db 0
; Learnset
	db 12, QUICK_ATTACK
	db 16, HAZE
	db 21, WHIRLWIND
	db 26, NIGHT_SHADE
	db 31, FEINT_ATTACK
	db 34, DRILL_PECK

HonchkrowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, QUICK_ATTACK
	db 20, HAZE
	db 25, WHIRLWIND
	db 30, NIGHT_SHADE
	db 35, FEINT_ATTACK
	db 41, AMNESIA
	db 45, DRILL_PECK

SkimperEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, BAWLIGUA
	db 0
; Learnset
	db 10, LEER
	db 15, WATER_GUN
	db 20, BITE
	db 30, DRAGON_RAGE
	db 45, HYDRO_PUMP

BawliguaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, CRYITHAN
	db 0
; Learnset
	db 10, LEER
	db 15, WATER_GUN
	db 20, BITE
	db 30, DRAGON_RAGE
	db 45, SLASH
	db 60, HYDRO_PUMP

CryithanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, LEER
	db 15, WATER_GUN
	db 20, BITE
	db 30, DRAGON_RAGE
	db 45, SLASH
	db 60, IRON_TAIL
	db 65, HYDRO_PUMP

KleavorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, LEER
	db 20, FOCUS_ENERGY
	db 24, DOUBLE_TEAM
	db 29, SLASH
	db 30, STONE_AXE
	db 35, SWORDS_DANCE
	db 42, AGILITY
	db 0

MeltanEvosMoves:
; Evolutions
	db EVOLVE_ITEM, CANDY_JAR, 1, MELMETAL
	db 0
; Learnset
	db 9, TAIL_WHIP
	db 18, THUNDER_WAVE
	db 27, THUNDERSHOCK
	db 36, ACID_ARMOR
	db 0

MelmetalEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, TAIL_WHIP
	db 18, THUNDER_WAVE
	db 27, THUNDERSHOCK
	db 36, ACID_ARMOR
	db 54, MEGA_PUNCH
	db 63, IRON_BASH
	db 72, HYPER_BEAM
	db 0
	
BlastykeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 22, BITE
	db 28, WITHDRAW
	db 35, SKULL_BASH
	db 42, HYDRO_PUMP
	db 0

TotartleEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 24, BITE
	db 31, WITHDRAW
	db 42, SKULL_BASH
	db 53, HYDRO_PUMP
	db 60, BLIZZARD
	db 0

PoliwealthEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 0

HitmontopEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, FOCUS_ENERGY
	db 33, QUICK_ATTACK
	db 38, COUNTER
	db 43, AGILITY
	db 49, TRIPLE_KICK
	db 0

BaloondaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, FAIRY_WIND
	db 18, MIMIC
	db 22, SONICBOOM
	db 25, CONSTRICT
	db 30, WHIRLWIND
	db 33, RAZOR_WIND
	db 40, AGILITY
	db 49, FLY
	db 0

BuuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, MIST
	db 37, DISABLE
	db 42, ICE_PUNCH
	db 49, HAZE
	db 54, BLIZZARD
	db 0

TrampelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, STOMP
	db 23, RAGE
	db 30, FURY_ATTACK
	db 38, BODY_SLAM
	db 44, LEER
	db 50, ROAR
	db 56, EARTHQUAKE
	db 0

GorotoraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 55, THUNDER
	db 0

JaggEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, SCREECH
	db 24, HORN_ATTACK
	db 29, QUICK_ATTACK
	db 32, FEINT_ATTACK
	db 38, FURY_ATTACK
	db 42, CRUNCH
	db 49, HYDRO_PUMP
	db 55, HORN_DRILL
	db 0

StacktusEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, VINE_WHIP
	db 17, HORN_ATTACK
	db 21, GROWTH
	db 25, PIN_MISSILE
	db 31, FURY_ATTACK
	db 39, FEINT_ATTACK
	db 45, SPIKE_CANNON
	db 50, EXPLOSION
	db 0

CheepEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, JABETTA
	db 0
; Learnset
	db 17, COUNTER
	db 21, BUBBLEBEAM
	db 25, LOW_KICK
	db 30, JUMP_KICK
	db 40, HI_JUMP_KICK
	db 44, HYDRO_PUMP
	db 48, DRILL_PECK
	db 0

JabettaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 17, COUNTER
	db 21, BUBBLEBEAM
	db 25, LOW_KICK
	db 30, JUMP_KICK
	db 46, HI_JUMP_KICK
	db 50, HYDRO_PUMP
	db 52, DRILL_PECK
	db 0

BlottleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, PENDRAKEN
	db 0
; Learnset
	db 8, BUBBLE
	db 13, WRAP
	db 19, POISON_GAS
	db 23, HYPNOSIS
	db 27, SUPERSONIC
	db 30, INK_SPRAY
	db 31, SLUDGE
	db 38, HAZE
	db 40, HYDRO_PUMP
	db 0

PendrakenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, BUBBLE
	db 13, WRAP
	db 19, POISON_GAS
	db 23, HYPNOSIS
	db 27, SUPERSONIC
	db 30, INK_SPRAY
	db 33, SLUDGE
	db 38, FEINT_ATTACK
	db 42, HAZE
	db 47, HYDRO_PUMP
	db 0

OhmegaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, THUNDER_WAVE
	db 35, BODY_SLAM
	db 48, SLAM
	db 50, IRON_TAIL
	db 0

MarillEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0
; Learnset
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 0

AzumarillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 0

SlugmaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0
; Learnset
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, BODY_SLAM
	db 0

MagcargoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, BODY_SLAM
	db 0

SylveonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, FAIRY_WIND
	db 37, TAIL_WHIP
	db 40, SWIFT
	db 42, LIGHT_SCREEN
	db 44, REFLECT
	db 48, PSYBEAM
	db 54, MOONBLAST
	db 0

QuadragonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TAIL_WHIP
	db 25, SLASH
	db 28, WING_ATTACK
	db 30, DRAGON_RAGE
	db 36, DRAGON_RAGE
	db 43, FLAMETHROWER
	db 54, HYPER_BEAM
	db 0

SkulkrakenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BITE
	db 25, CONSTRICT
	db 30, SCREECH
	db 40, HYDRO_PUMP
	db 50, CRUNCH
	db 0

NidoreignEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, SCRATCH
	db 14, HORN_ATTACK
	db 16, POISON_STING
	db 32, BODY_SLAM
	db 40, THRASH
	db 0