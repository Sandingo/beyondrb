RedsHouse1F_Script:
	jp EnableAutoTextBoxDrawing

RedsHouse1F_TextPointers:
	def_text_pointers
	dw_const RedsHouse1FMomText, TEXT_REDSHOUSE1F_MOM
	dw_const RedsHouse1FMrMimeText,		   TEXT_REDSHOUSE1F_MR_MIME
	dw_const RedsHouse1FTVText,  TEXT_REDSHOUSE1F_TV

RedsHouse1FMomText:
	text_asm
	ld a, [wStatusFlags4]
	bit BIT_GOT_STARTER, a
	jr nz, .heal
	ld hl, .WakeUpText
	call PrintText
	jr .done
.heal
	call RedsHouse1FMomHealScript
.done
	jp TextScriptEnd

.WakeUpText:
	text_far _RedsHouse1FMomWakeUpText
	text_end

RedsHouse1FMomHealScript:
	ld hl, RedsHouse1FMomYouShouldRestText
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
<<<<<<< Updated upstream
	ld [wNewSoundID], a
	call PlaySound
.next
	ld a, [wChannelSoundIDs]
	cp MUSIC_PKMN_HEALED
	jr z, .next
	ld a, [wMapMusicSoundID]
	ld [wNewSoundID], a
	call PlaySound
=======
;	call PlaySound
	call PlayMusic

	call WaitForSongToFinish
;.next
;	ld a, [wChannelSoundIDs]
;	cp MUSIC_PKMN_HEALED
;	jr z, .next

	ld a, [wMapMusicSoundID]
;	call PlaySound
	call PlayMusic
>>>>>>> Stashed changes
	call GBFadeInFromWhite
	ld hl, RedsHouse1FMomLookingGreatText
	jp PrintText

RedsHouse1FMomYouShouldRestText:
	text_far _RedsHouse1FMomYouShouldRestText
	text_end
RedsHouse1FMomLookingGreatText:
	text_far _RedsHouse1FMomLookingGreatText
	text_end

RedsHouse1FTVText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ld hl, .WrongSideText
	jr nz, .got_text
	ld a, [wGameStage] ; Check if player has beat the game
	and a
	jr z, .og_text
	ld hl, .CeladonMartAdText
	jr .got_text
.og_text	
	ld hl, .StandByMeMovieText
.got_text
	call PrintText
	jp TextScriptEnd

.StandByMeMovieText:
	text_far _RedsHouse1FTVStandByMeMovieText
	text_end

.CeladonMartAdText:
	text_far _RedsHouse1FCeladonMartAdText
	text_end

.WrongSideText:
	text_far _RedsHouse1FTVWrongSideText
	text_end

RedsHouse1FMrMimeText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, MR_MIME
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

RedsHouse1FMrMimeText.Text:
	text_far _RedsHouse1FMrMimeText
	text_end