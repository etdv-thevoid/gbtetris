SECTION "rst0", ROM0
	jp Init

rept 5
	nop
endr

SECTION "rst8", ROM0
	jp Init

SECTION "rst28", ROM0
	; Implements the `jumptable` macro. A list of 16-bit code pointers should follow.
	; A = jumptable entry number
	; Clobbers A, DE and HL
	add a
	pop hl
	ld e, a
	ld d, 0
	add hl, de ; do this twice instead of add a at the beginning for increased range

	ld e, [hl] ; could do this part better:
	inc hl     ; ld a, [hli]
	ld d, [hl] ; ld h, [hl]
	push de    ; ld l, a
	pop hl     ; jp hl
	jp hl

SECTION "VBlank", ROM0
	jp VBlankInterrupt

SECTION "LCDC", ROM0
	jp EmptyInterrupt

SECTION "Timer", ROM0
	jp EmptyInterrupt

SECTION "Serial", ROM0
	jp SerialInterrupt

; In the japanese version of the game, the serial code is located later in the ROM,
; and this space is empty.
IF DEF(INTERNATIONAL)
	INCLUDE "engine/serial.asm"
ENDC

; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
SECTION "Header", ROM0[$100]
	nop
	jp Boot

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.
    ds $0150 - @, $00
