; formats a string at wMovesString that lists the moves at wMoves
FormatMovesString:
	ld hl, wMoves
	ld de, wMovesString
	ld b, $0
.printMoveNameLoop
	ld a, [hli]
	and a ; end of move list?
	jr z, .printDashLoop ; print dashes when no moves are left
	push hl
	ld [wNameListIndex], a
	ld a, BANK(MoveNames)
	ld [wPredefBank], a
	ld a, MOVE_NAME
	ld [wNameListType], a
	call GetName
	ld hl, wNameBuffer
.copyNameLoop
	ld a, [hli]
	cp "@"
	jr z, .doneCopyingName
	ld [de], a
	inc de
	jr .copyNameLoop
.doneCopyingName
	ld a, b
	ld [wNumMovesMinusOne], a
	inc b
	ld a, "<NEXT>"
	ld [de], a
	inc de
	pop hl
	ld a, b
	cp NUM_MOVES
	jr z, .done
	jr .printMoveNameLoop
.printDashLoop
	ld a, "-"
	ld [de], a
	inc de
	inc b
	ld a, b
	cp NUM_MOVES
	jr z, .done
	ld a, "<NEXT>"
	ld [de], a
	inc de
	jr .printDashLoop
.done
	ld a, "@"
	ld [de], a
	ret

; XXX this is called in a few places, but it doesn't appear to do anything useful
InitList:
	ld a, [wInitListType]
	cp INIT_ENEMYOT_LIST
	jr nz, .notEnemy
	ld hl, wEnemyPartyCount
	ld de, wEnemyMonOT
	ld a, ENEMYOT_NAME
	jr .done
.notEnemy
	cp INIT_PLAYEROT_LIST
	jr nz, .notPlayer
	ld hl, wPartyCount
	ld de, wPartyMonOT
	ld a, PLAYEROT_NAME
	jr .done
.notPlayer
	cp INIT_MON_LIST
	jr nz, .notMonster
	ld hl, wItemList
	ld de, MonsterNames
	ld a, MONSTER_NAME
	jr .done
.notMonster
	cp INIT_BAG_ITEM_LIST
	jr nz, .notBag
	ld hl, wNumBagItems
	ld de, ItemNames
	ld a, ITEM_NAME
	jr .done
.notBag
	ld hl, wItemList
	ld de, ItemNames
	ld a, ITEM_NAME
.done
	ld [wNameListType], a
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	ld a, e
	ld [wUnusedNamePointer], a
	ld a, d
	ld [wUnusedNamePointer + 1], a
	ld bc, ItemPrices
	ld a, c
	ld [wItemPrices], a
	ld a, b
	ld [wItemPrices + 1], a
	ret

; get species of mon e in list [wMonDataLocation] for LoadMonData
GetMonSpecies:
	ld hl, wPartySpecies
	ld a, [wMonDataLocation]
	and a
	jr z, .getSpecies
	dec a
	jr z, .enemyParty
	ld hl, wBoxSpecies
	jr .getSpecies
.enemyParty
	ld hl, wEnemyPartySpecies
.getSpecies
	ld d, 0
	add hl, de
	ld a, [hl]
	ld [wCurPartySpecies], a
	ret


; Script from Extreme Yellow, thanks a lot!
RandomizeTeamForBattleFacilityTrainer::
	ld de, wBattleFacilityMonNumber1
	ld a, [wBattleFacilityWhichMonIsRandomized]
	inc a
	ld [wBattleFacilityWhichMonIsRandomized], a
	dec a
	cp 5
	jr nc, .continue ; we don't need to move the address next if we are treating already the 6th mon
.storeMonAddressLoop
	dec a
	cp $FF
	jr z, .continue
	inc de
	jr .storeMonAddressLoop
.continue
; depending on winning streak and which mon number, choose normal list or Megas' one
.RNGLoop
	ld hl, FullyEvolvedMons
; generate a random number between 0 and len(FullyEvolvedMons)-1, i.e. 0 and 83 included
	call Random
	cp 103
	jr nc, .RNGLoop
; a contains a valid number, now we need to access the a-th element of the list we decided about earlier
.uglyLoop
	dec a
	cp $FF
	jr z, .doneUglyLoop
	inc hl
	jr .uglyLoop
.doneUglyLoop
; finally, we need to check if the mon we just generated is the same as any of the previously generated ones
	ld a, [wBattleFacilityMonNumber1]
	cp [hl] ; hl points to the mon we are trying to generate
	jr z, .RNGLoop
	ld a, [wBattleFacilityMonNumber2]
	cp [hl] ; hl points to the mon we are trying to generate
	jr z, .RNGLoop
	ld a, [wBattleFacilityMonNumber3]
	cp [hl] ; hl points to the mon we are trying to generate
	jr z, .RNGLoop
	ld a, [wBattleFacilityMonNumber4]
	cp [hl] ; hl points to the mon we are trying to generate
	jr z, .RNGLoop
	ld a, [wBattleFacilityMonNumber5]
	cp [hl] ; hl points to the mon we are trying to generate
	jr z, .RNGLoop
	jr .doneOffset
.doneOffset
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld b, a
	ld a, [wBattleFacilityWhichMonIsRandomized]
	cp 6
	ret z ; if we're treating the 6th mon, we don't save anything in the non-existing wBattleFacilityMonNumber6, otherwise we mess up stuff
	ld a, b
	ld [de], a ; saves Mon in wBattleFacilityMonNumberN
	ret
FullyEvolvedMons: ; 0-103
	; weaks
	db BUTTERFREE
	db BEEDRILL
	db CLEFABLE
	db WIGGLYTUFF
	db PARASECT
	db VENOMOTH
	db GOLDUCK
	db DEWGONG
	db MUK
	db HYPNO
	db KINGLER
	db ELECTRODE
	db WEEZING
	db SEAKING
	db MIMMEO
	db LUXWAN
	db BALUMBA
	db MAGCARGO
	db DISTURBAN
	db CACTORMUS
	db HOUNDOOM
	db GAVILLAIN
	; average
	db PIDGEOT
	db RATICATE
	db FEAROW
	db ARBOK
	db SANDSLASH
	db NINETALES
	db CROBAT
	db VILEPLUME
	db BELLOSSOM
	db ARCANINE
	db POLIWRATH
	db POLITOED
	db GOLEM
	db RAPIDASH
	db DODRIO
	db HITMONLEE
	db HITMONCHAN
	db HITMONTOP
	db LICKILORD
	db KANGASKHAN
	db MR_MIME
	db OMASTAR
	db KABUTOPS
	db VICTREEBEL
	db TENTACRUEL
	db SLOWKING
	db CLOYSTER
	db JUNGELA
	db KLEAVOR
	db ELECTIVIRE
	db MAGMORTAR
	db AERODACTYL
	db PENDRAKEN
	db POLIWEALTH
	db HONCHKROW
	db TRAMPEL
	db SHARPOON
	db GOROTORA
	db BELLIGNAN
	db GAWARHED
	; strong
	db GUARDIA
	db VENUSAUR
	db CHARIZARD
	db BLASTOISE
	db TOTARTLE
	db NIDOQUEEN
	db NIDOKING
	db DUGTRIO
	db PERSIAN
	db ANNIHILAPE
	db ALAKAZAM
	db SLOWBRO
	db MAGNEZONE
	db GENGAR
	db STEELIX
	db EXEGGUTOR
	db RHYPERIOR
	db BLISSEY
	db KINGDRA
	db STARMIE
	db SCIZOR
	db TRICULES
	db JYNX
	db TAUROS
	db GYARADOS
	db LAPRAS
	db SNORLAX
	db DRAGONITE
	db VAPOREON
	db JOLTEON
	db FLAREON
	db ESPEON
	db LEAFEON
	db GLACEON
	db SYLVEON
	db PORYGON2
	db MACHAMP
	db OMEGADGE
	db CRYITHAN
	db GOROCHU
	db -1

RollForShiny::
    ldh a, [hRandomAdd]
    cp 42 ; can be any number, I just want a 1/256 chance here
    jr nz, .notShinyEncounter ; nz for real, z for testing purposes
    ld b, SHINY_CHARM
    call IsItemInBag
    jr nz, .shinyEncounter
    call CountHowManyBadges ; d contains the number of badges
    ld a, d ; a contains the number of badges
    call ConvertNumberOfBadgesIntoUpperLimit ; a contains the upper limit for the second random number
    ld b, a ; now it's b that holds the upper limit
    ldh a, [hRandomSub] ; a holds the random number
    cp b ; a-b, random-limit, c flag set if a is strictly lower than b, aka in b/256 cases, as 0 is included
    jr c, .shinyEncounter
.shinyEncounter
    ld a, 1 ; this is the "yes it is shiny" value
    ld [wOpponentMonShiny], a
; reset the non-shiny counter
    xor a
    ret
.notShinyEncounter
	xor a ; not shiny
	ld [wOpponentMonShiny], a
    ret

PlayShinyAnimationIfShinyPlayerMon:
    ld a, [wBattleMonCatchRate]
    cp 1
    ret nz
    xor a
	ld a, SHINY_ANIM
	ld [wAnimationID], a
	xor a
	ld [wAnimationType], a
	ldh [hWhoseTurn], a	
	predef MoveAnimation
    ret

PlayShinyAnimationIfShinyEnemyMon:
    ld a, [wIsTrainerBattle]
    and a
    jr z, .wildBattle
; trainer battle, do the checks
;    call CheckForTrainersShinyMons ; unnecessary, already calling this in engine/gfx/palettes.asm
    ld a, [wOpponentMonShiny]
    and a
    ret z
    jr .playShinyAnim
.wildBattle
    ld hl, wEnemyMonSpecies2
    ld a, [wOpponentMonShiny]
    cp 1
    ret nz
.playShinyAnim
    xor a
	ld a, SHINY_ANIM
	ld [wAnimationID], a
	xor a
	ld [wAnimationType], a
	ld a, $1
	ldh [hWhoseTurn], a	
	predef MoveAnimation
    ret

CountHowManyBadges:: ; returns in d the number of badges we own
    ld d, 0
    ld hl, wObtainedBadges
	bit BIT_EARTHBADGE, [hl]
	jr z, .next1
    inc d
.next1
	bit BIT_VOLCANOBADGE, [hl]
	jr z, .next2
    inc d
.next2
	bit BIT_MARSHBADGE, [hl]
	jr z, .next3
    inc d
.next3
	bit BIT_SOULBADGE, [hl]
	jr z, .next4
    inc d
.next4
	bit BIT_RAINBOWBADGE, [hl]
	jr z, .next5
    inc d
.next5
	bit BIT_THUNDERBADGE, [hl]
	jr z, .next6
    inc d
.next6
	bit BIT_CASCADEBADGE, [hl]
	jr z, .next7
    inc d
.next7
	bit BIT_BOULDERBADGE, [hl]
	jr z, .next8
    inc d
.next8
    ret

ConvertNumberOfBadgesIntoUpperLimit: ; returns in a the upper limit for the second random number; used for shiny probabilities
    cp 0
    jr z, .badges0
    cp 1
    jr z, .badges1
    cp 2
    jr z, .badges2
    cp 3
    jr z, .badges3
    cp 4
    jr z, .badges4
    cp 5
    jr z, .badges5
    cp 6
    jr z, .badges6
    cp 7
    jr z, .badges7
; badges8
    ld a, 66
    ret
.badges7
    ld a, 33
    ret
.badges6
    ld a, 22
    ret
.badges5
    ld a, 16
    ret
.badges4
    ld a, 13
    ret
.badges3
    ld a, 11
    ret
.badges2
    ld a, 9
    ret
.badges1
    ld a, 8
    ret
.badges0
    ld a, 7
    ret