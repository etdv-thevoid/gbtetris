MACRO jumptable
	rst $28
ENDM

MACRO coord
	ld \1, (\2) + (\4) * BG_MAP_WIDTH + (\3)
ENDM

MACRO coordh
	ld \1, HIGH((\2) + (\4) * BG_MAP_WIDTH + (\3))
ENDM

DEF tile EQUS "+ 16 *"
DEF sprite EQUS "+ SPRITE_SIZE *"
DEF tiles EQUS "* 16"

MACRO rowshift
ShiftRow\1::
	ld a, [hRowToShift]
	cp \1
	ret nz

	coord hl, vBGMapA, 2, 19 - \1
	coord de, wTileMap, 2, 19 - \1
	call ShiftRow
ENDM

MACRO justrowshift
	rowshift \1
	ret
ENDM

MACRO sprite_descriptor
\1::
	dw \1Objects
	db \2, \3
ENDM
