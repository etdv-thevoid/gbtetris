SECTION "HRAM", HRAM[$ff80]
hKeysHeld:: db                ; EQU $ff80
hKeysPressed:: db             ; EQU $ff81
    ds 3
hVBlankOccured:: db           ; EQU $ff85

; UpdateSprites temp
hCurSpriteBuffer::
hCurSpriteVisibility:: db     ; EQU $ff86
hCurSpriteY:: db              ; EQU $ff87
hCurSpriteX:: db              ; EQU $ff88
hCurSpriteID:: db             ; EQU $ff89
hCurSpriteBelowBG:: db        ; EQU $ff8a
hCurSpriteFlip:: db           ; EQU $ff8b
hCurSpriteFlags:: db          ; EQU $ff8c
hOAMBufferPtrHi:: db          ; EQU $ff8d
hOAMBufferPtrLo:: db          ; EQU $ff8e
hSpriteCount:: db             ; EQU $ff8f
hSpriteAnchorY:: db           ; EQU $ff90
hSpriteAnchorX:: db           ; EQU $ff91
hObjectX:: db                 ; EQU $ff92
hObjectY:: db                 ; EQU $ff93
hObjectFlags:: db             ; EQU $ff94
hSpriteHidden:: db            ; EQU $ff95
hSpriteListPtrHi:: db         ; EQU $ff96
hSpriteListPtrLo:: db         ; EQU $ff97
hLockdownStage:: db           ; EQU $ff98
hGravityCounter:: db          ; EQU $ff99
hFallingSpeed:: db            ; EQU $ff9a

; Never Read
hCollisionOccured:: db        ; EQU $ff9b
hBlinkCounter:: db            ; EQU $ff9c
    ds 1

hLineCount:: db               ; EQU $ff9e
    ds 1

hBuffer:: db                  ; EQU $ffa0
hSavedIE:: db                 ; EQU $ffa1
    ds 4

hDelayCounter:: db            ; EQU $ffa6
hFastDropDelayCounter:: db    ; EQU $ffa7
    ds 1

hLevel:: db                   ; EQU $ffa9
hAutoFireCountdown:: db       ; EQU $ffaa
    ds 3

hNextNextPiece:: db           ; EQU $ffae
hRandomnessPtrHi:: db         ; EQU $ffaf
hRandomnessPtrLo:: db         ; EQU $ffb0
    ds 1

hCoordConversionY:: db        ; EQU $ffb2
hCoordConversionX:: db        ; EQU $ffb3
hCoordConversionLo:: db       ; EQU $ffb4
hCoordConversionHi:: db       ; EQU $ffb5

; ends $ffbf, 10 bytes long
hOAMDMA:: ds 10               ; EQU $ffb6

hGameType:: db                ; EQU $ffc0
hMusicType:: db               ; EQU $ffc1
hTypeALevel:: db              ; EQU $ffc2
hTypeBLevel:: db              ; EQU $ffc3
hTypeBHigh:: db               ; EQU $ffc4
hMultiplayer:: db             ; EQU $ffc5
hDemoCountdown::
hHighscoreLettersEntered:: db ; EQU $ffc6
hHighscoreEnterName:: db      ; EQU $ffc7
hHighscorePosition:: db       ; EQU $ffc8
hHighscoreNamePtrHi:: db      ; EQU $ffc9
hHighscoreNamePtrLo:: db      ; EQU $ffca
hMasterSlave:: db             ; EQU $ffcb
hSerialDone:: db              ; EQU $ffcc
hSerialState:: db             ; EQU $ffcd
hSendBufferValid:: db         ; EQU $ffce
hSendBuffer:: db              ; EQU $ffcf
hRecvBuffer:: db              ; EQU $ffd0
    ds 15

; Used by DisplayBCD. The values can overlap because the latter is always cleared at the end of the
; routine, and the former is local to the subroutine.
hSeenNonZero:: db                ; EQU $ffe0
hScoreDirty:: db                 ; EQU $ffe0
hGameState:: db                  ; EQU $ffe1
hRowToShift:: db                 ; EQU $ffe3
hDemoNumber:: db                 ; EQU $ffe4
hFastDropDistance:: db           ; EQU $ffe5
    ds 2

hEnableHighscoreVBlank:: db      ; EQU $ffe8

hRecordDemo:: db                 ; EQU $ffe9
hCountdownTillNextDemoInput:: db ; EQU $ffea
hDemoPtrHi:: db                  ; EQU $ffeb
hDemoPtrLo:: db                  ; EQU $ffec
hLastDemoInput:: db              ; EQU $ffed
hTrueInputDuringDemo:: db        ; EQU $ffee
    ds 1

hMultiplayerNewMusic:: db        ; EQU $fff0
    ds 3

hStartAtLevel10:: db             ; EQU $fff4
    ds 6

hFailedTetrominoPlacements::
hHighscorePtrHi:: db             ; EQU $fffb
hHighscorePtrLo:: db             ; EQU $fffc
