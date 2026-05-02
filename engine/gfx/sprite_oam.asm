PrepareOAMData::
; Determine OAM data for currently visible
; sprites and write it to wShadowOAM.

	ld a, [wUpdateSpritesEnabled]
	dec a
	jr z, .updateEnabled

	cp -1
	ret nz
	ld [wUpdateSpritesEnabled], a
	jp HideSprites

.updateEnabled
	xor a
	ldh [hOAMBufferOffset], a

.spriteLoop
	ldh [hSpriteOffset2], a

	ld d, HIGH(wSpriteStateData1)
	ldh a, [hSpriteOffset2]
	ld e, a
	ld a, [de] ; [x#SPRITESTATEDATA1_PICTUREID]
	and a
	jp z, .nextSprite

	inc e
	inc e
	ld a, [de] ; [x#SPRITESTATEDATA1_IMAGEINDEX]
	ld [wSavedSpriteImageIndex], a
	cp $ff ; off-screen (don't draw)
	jr nz, .visible

	call GetSpriteScreenXY
	jr .nextSprite

.visible
	cp $a0 ; is the sprite unchanging like an item ball or boulder?
	jr c, .usefacing

; unchanging
	and $f
	add $10 ; skip to the second half of the table which doesn't account for facing direction
	jr .next

.usefacing
	and $f

.next
	ld l, a

; get sprite priority
	push de
	inc d
	ld a, e
	add $5
	ld e, a
	ld a, [de] ; [x#SPRITESTATEDATA2_GRASSPRIORITY]
	and $80
	ldh [hSpritePriority], a ; temp store sprite priority
	pop de

; read the entry from the table
	ld h, 0
	ld bc, SpriteFacingAndAnimationTable
	add hl, hl
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a

	call GetSpriteScreenXY

	ldh a, [hOAMBufferOffset]
	ld e, a
	ld d, HIGH(wShadowOAM)

.tileLoop
	ldh a, [hSpriteScreenY]   ; temp for sprite Y position
	add $10                  ; Y=16 is top of screen (Y=0 is invisible)
	add [hl]                 ; add Y offset from table
	ld [de], a               ; write new sprite OAM Y position
	inc hl
	ldh a, [hSpriteScreenX]   ; temp for sprite X position
	add $8                   ; X=8 is left of screen (X=0 is invisible)
	add [hl]                 ; add X offset from table
	inc e
	ld [de], a               ; write new sprite OAM X position
	inc e
	ld a, [bc]               ; read pattern number offset (accommodates orientation (offset 0,4 or 8) and animation (offset 0 or $80))
	inc bc
	push bc
	ld b, a

	ld a, [wSavedSpriteImageIndex]
	swap a                   ; high nybble determines sprite used (0 is always player sprite, next are some npcs)
	and $f

	; Sprites $a and $b have one face (and therefore 4 tiles instead of 12).
	; As a result, sprite $b's tile offset is less than normal.
	cp $b
	jr nz, .notFourTileSprite
	ld a, $a * 12 + 4
	jr .next2

.notFourTileSprite
	; a *= 12
	sla a
	sla a
	ld c, a
	sla a
	add c

.next2
	add b ; add the tile offset from the table (based on frame and facing direction)
	pop bc
	ld [de], a ; tile id
	inc hl
	inc e
	ld a, [hl]
	bit BIT_SPRITE_UNDER_GRASS, a
	jr z, .skipPriority
	ldh a, [hSpritePriority]
	or [hl]
.skipPriority
	inc hl
	ld [de], a
	inc e
	bit BIT_END_OF_OAM_DATA, a
	jr z, .tileLoop

	ld a, e
	ldh [hOAMBufferOffset], a

.nextSprite
	ldh a, [hSpriteOffset2]
	add $10
	cp LOW($100)
	jp nz, .spriteLoop

	; Clear unused OAM.
	ldh a, [hOAMBufferOffset]
	ld l, a
	ld h, HIGH(wShadowOAM)
	ld de, $4
	ld b, $a0
	ld a, [wMovementFlags]
	bit BIT_LEDGE_OR_FISHING, a
	ld a, $a0
	jr z, .clear

; Don't clear the last 4 entries because they are used for the shadow in the
; jumping down ledge animation and the rod in the fishing animation.
	ld a, $90

.clear
	cp l
	ret z
	ld [hl], b
	add hl, de
	jr .clear

GetSpriteScreenXY:
	inc e
	inc e
	ld a, [de] ; [x#SPRITESTATEDATA1_YPIXELS]
	ldh [hSpriteScreenY], a
	inc e
	inc e
	ld a, [de] ; [x#SPRITESTATEDATA1_XPIXELS]
	ldh [hSpriteScreenX], a
	ld a, 4
	add e
	ld e, a
	ldh a, [hSpriteScreenY]
	add 4
	and $f0
	ld [de], a ; [x#SPRITESTATEDATA1_YADJUSTED]
	inc e
	ldh a, [hSpriteScreenX]
	and $f0
	ld [de], a  ; [x#SPRITESTATEDATA1_XADJUSTED]
	ret


SpriteSpecialProperties::	
; This part of the function look for sprites in SpecialOAMlist and load special proporties in wSpriteStateData2
; it make use of the previously unused bytes $1, $A and $B
	ld e, $10

.spriteLoop
	ld d, HIGH(wSpriteStateData1) ; start by searching the PictureID of the current map object
	ld a, [de] ; [x#SPRITESTATEDATA1_PICTUREID]
	ld [wSavedSpritePictureID], a
	inc e
	inc d

	ld hl, SpecialOAMlist ; loading list for identification and properties values
	push de ; save d and e
	ld de, 4 ; define the number of properties in list
	call IsInArray ; check if Sprite is in list ; modify a/b/de
	pop de
	jr c, .foundMatch

	xor a
	ld [de], a
	ld a, $9
	add e
	ld e, a
	xor a
	ld [de], a
	inc e
	ld [de], a
	jr .nextCheck

.foundMatch
	inc hl
	ld a, [hli]
	ld [de], a
	ld a, $9
	add e
	ld e, a
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hl]
	ld [de], a

.nextCheck
; This part of the function look for sprites in AnimatedSpriteList and load an animation value in 
; wSpriteStateData2 if found, it make use of the previously unused byte $C of wSpriteStateData2.
	inc e

	ld a, [wSavedSpritePictureID]
	ld b, a

	ld hl, AnimatedSpriteList
.loop
	ld a, [hli]
	cp -1
	jr z, .noMatch

	cp b
	ld a, [hli]
	jr nz, .loop
	jr .found
	
.noMatch
	xor a
.found	
	ld [de], a

.nextsprite
	ld a, e
	add $10
	and $f0
	ld e, a
	jp nz, .spriteLoop
	ret

SpecialOAMlist:
	; see constants/sprite_constants.asm
	; db SPRITE_CONSTANT, $OAMtable, YPixelOffest, XPixelOffset
; Regular sprites with -1 X offset on down/up flipped walking frame 
	db SPRITE_DODUO,                    $2, 0, 0
	db SPRITE_FEAROW,                   $2, 0, 0
	db SPRITE_JIGGLYPUFF,               $2, 0, 0
	db SPRITE_MACHOKE,                  $2, 0, 0
	db SPRITE_MACHOP,                   $2, 0, 0
	db SPRITE_PIDGEY,                   $2, 0, 0
	db SPRITE_PIKACHU,                  $2, 0, 0
	db SPRITE_ZAPDOS,                   $2, 0, 0
; Still, Y offset
	db SPRITE_BOULDER,                  $1, 3, 0
	db SPRITE_SNORLAX,                  $1, 4, 0
	db -1

; Walking animation speed is 4, bigger value equal slower speed
DEF IDDLE_FLY     EQU   6 ; slightly slower speed
DEF IDDLE_SWIM    EQU  12 ; slower speed

AnimatedSpriteList:
; \1 Sprite to animate, 
; \2 Ticks between animation frames, must be > 0.
; A value of 4 is the normal walking animation speed.
; Values > $80 are for special animation paterns.
	db SPRITE_ARTICUNO,    	IDDLE_FLY
	db SPRITE_FEAROW,      	IDDLE_FLY
	db SPRITE_LAPRAS,      		IDDLE_SWIM
	db SPRITE_SEEL,      			IDDLE_SWIM
	db SPRITE_SWIMMER_M, 	IDDLE_SWIM
	db SPRITE_MOLTRES,     	IDDLE_FLY
	db SPRITE_ZAPDOS,      	IDDLE_FLY
	db -1