DisplayItemDescription:: ; Unused
	ld a, [wCurItem]
	dec a
	cp a, HM01 - 1
	jr c, .ok
	sub HM01 - FLOOR_B2F
.ok
	ld hl, ItemDescriptionPointers
	ld bc, 5
	call AddNTimes
	jp PrintText

PrintItemDescriptionBlurb:: ; the problem child
	; Get item id.
	ld a, [wCurrentMenuItem]
	ld c, a
	ld a, [wListScrollOffset]
	add c
	ld c, a
	ld hl, wListPointer
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	inc de  ; de = pointer to list
	ld h, d
	ld l, e
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld d, a ; d = item id
	call PrintItemDescPart2
	ret

FlashItemDescriptionBlurb::
	ld a, [wCurrentMenuItem]
PrintItemDescPart2:
	cp $ff
	ld hl, EmptyDescription
	jr z, .doneAdding
	dec a
	cp a, HM01 - 1
	jr c, .ready
	sub HM01 - FLOOR_B2F
.ready
	ld hl,ItemDescriptionPointers
	ld bc, 5
.add
	and a
	jr z, .doneAdding
	dec a
	add hl, bc
	jr .add
.doneAdding
	push hl
	pop hl
	call PrintText
	ret

EmptyDescription:
	db ""
	db "@"

ItemDescriptionPointers:
	text_far _MasterBallDescription
	db "@"
	text_far _UltraBallDescription
	db "@"
	text_far _GreatBallDescription
	db "@"
	text_far _PokeBallDescription
	db "@"
	text_far _TownMapDescription
	db "@"
	text_far _BicycleDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _MoonStoneDescription
	db "@"
	text_far _AntidoteDescription
	db "@"
	text_far _BurnHealDescription
	db "@"
	text_far _IceHealDescription
	db "@"
	text_far _AwakeningDescription
	db "@"
	text_far _ParlyzHealDescription
	db "@"
	text_far _FullRestoreDescription
	db "@"
	text_far _MaxPotionDescription
	db "@"
	text_far _HyperPotionDescription
	db "@"
	text_far _SuperPotionDescription
	db "@"
	text_far _PotionDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _EscapeRopeDescription
	db "@"
	text_far _RepelDescription
	db "@"
	text_far _OldAmberDescription
	db "@"
	text_far _FireStoneDescription
	db "@"
	text_far _ThunderStoneDescription
	db "@"
	text_far _WaterStoneDescription
	db "@"
	text_far _HPUpDescription
	db "@"
	text_far _ProteinDescription
	db "@"
	text_far _IronDescription
	db "@"
	text_far _CarbosDescription
	db "@"
	text_far _CalciumDescription
	db "@"
	text_far _RareCandyDescription
	db "@"
	text_far _DomeFossilDescription
	db "@"
	text_far _HelixFossilDescription
	db "@"
	text_far _SecretKeyDescription
	db "@"
	text_far _SunStoneDescription
	db "@"
	text_far _BikeVoucherDescription
	db "@"
	text_far _XAccuracyDescription
	db "@"
	text_far _LeafStoneDescription
	db "@"
	text_far _CardKeyDescription
	db "@"
	text_far _NuggetDescription
	db "@"
	text_far _IceStoneDescription
	db "@"
	text_far _PokeDollDescription
	db "@"
	text_far _FullHealDescription
	db "@"
	text_far _ReviveDescription
	db "@"
	text_far _MaxReviveDescription
	db "@"
	text_far _GuardSpecDescription
	db "@"
	text_far _SuperRepelDescription
	db "@"
	text_far _MaxRepelDescription
	db "@"
	text_far _DireHitDescription
	db "@"
	text_far _UnusedItemDescription
	db "@"
	text_far _FreshWaterDescription
	db "@"
	text_far _SodaPopDescription
	db "@"
	text_far _LemonadeDescription
	db "@"
	text_far _SSTicketDescription
	db "@"
	text_far _GoldTeethDescription
	db "@"
	text_far _XAttackDescription
	db "@"
	text_far _XDefendDescription
	db "@"
	text_far _XSpeedDescription
	db "@"
	text_far _XSpecialDescription
	db "@"
	text_far _CoinCaseDescription
	db "@"
	text_far _OaksParcelDescription
	db "@"
	text_far _ItemfinderDescription
	db "@"
	text_far _SilphScopeDescription
	db "@"
	text_far _PokeFluteDescription
	db "@"
	text_far _LiftKeyDescription
	db "@"
	text_far _ExpAllDescription
	db "@"
	text_far _OldRodDescription
	db "@"
	text_far _GoodRodDescription
	db "@"
	text_far _SuperRodDescription
	db "@"
	text_far _PPUpDescription
	db "@"
	text_far _EtherDescription
	db "@"
	text_far _MaxEtherDescription
	db "@"
	text_far _ElixerDescription
	db "@"
	text_far _MaxElixerDescription
	db "@"
	text_far _MetalCoatDescription
	db "@"
	text_far _ProtectorDescription
	db "@"
	text_far _ElectirizerDescription
	db "@"
	text_far _MagmarizerDescription
	db "@"
	text_far _CandyJarDescription
	db "@"
	text_far _BottleCapDescription
	db "@"
	text_far _PewterCrunchDescription
	db "@"
	text_far _EverstoneDescription
	db "@"
	text_far _AmuletCoinDescription
	db "@"
	text_far _OrangeTicketDescription
	db "@"
	text_far _DragonScaleDescription
	db "@"
	text_far _KingsRockDescription
	db "@"
	text_far _DuskStoneDescription
	db "@"
	text_far _UpgradeDescription
	db "@"
	text_far _BlkAuguriteDescription
	db "@"
	text_far _ShinyCharmDescription
	db "@"
	text_far _OvalStoneDescription
	db "@"
	text_far _WingFossilDescription
	db "@"
	text_far _MysteryBoxDescription
	db "@"
	text_far _TinyMushroomDescription
	db "@"
	text_far _HM01Description
	db "@"
	text_far _HM02Description
	db "@"
	text_far _HM03Description
	db "@"
	text_far _HM04Description
	db "@"
	text_far _HM05Description
	db "@"
	text_far _HM06Description
	db "@"
	text_far _TM01Description
	db "@"
	text_far _TM02Description
	db "@"
	text_far _TM03Description
	db "@"
	text_far _TM04Description
	db "@"
	text_far _TM05Description
	db "@"
	text_far _TM06Description
	db "@"
	text_far _TM07Description
	db "@"
	text_far _TM08Description
	db "@"
	text_far _TM09Description
	db "@"
	text_far _TM10Description
	db "@"
	text_far _TM11Description
	db "@"
	text_far _TM12Description
	db "@"
	text_far _TM13Description
	db "@"
	text_far _TM14Description
	db "@"
	text_far _TM15Description
	db "@"
	text_far _TM16Description
	db "@"
	text_far _TM17Description
	db "@"
	text_far _TM18Description
	db "@"
	text_far _TM19Description
	db "@"
	text_far _TM20Description
	db "@"
	text_far _TM21Description
	db "@"
	text_far _TM22Description
	db "@"
	text_far _TM23Description
	db "@"
	text_far _TM24Description
	db "@"
	text_far _TM25Description
	db "@"
	text_far _TM26Description
	db "@"
	text_far _TM27Description
	db "@"
	text_far _TM28Description
	db "@"
	text_far _TM29Description
	db "@"
	text_far _TM30Description
	db "@"
	text_far _TM31Description
	db "@"
	text_far _TM32Description
	db "@"
	text_far _TM33Description
	db "@"
	text_far _TM34Description
	db "@"
	text_far _TM35Description
	db "@"
	text_far _TM36Description
	db "@"
	text_far _TM37Description
	db "@"
	text_far _TM38Description
	db "@"
	text_far _TM39Description
	db "@"
	text_far _TM40Description
	db "@"
	text_far _TM41Description
	db "@"
	text_far _TM42Description
	db "@"
	text_far _TM43Description
	db "@"
	text_far _TM44Description
	db "@"
	text_far _TM45Description
	db "@"
	text_far _TM46Description
	db "@"
	text_far _TM47Description
	db "@"
	text_far _TM48Description
	db "@"
	text_far _TM49Description
	db "@"
	text_far _TM50Description
	db "@"
	text_far _TM51Description
	db "@"
	text_far _TM52Description
	db "@"
	text_far _TM53Description
	db "@"
	text_far _TM54Description
	db "@"