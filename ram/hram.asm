SECTION "HRAM", HRAM
hKeysHeld:: db                    ; EQU $ff80
hKeysPressed:: db                 ; EQU $ff81
hUnknown_ff82:: db                ; EQU $ff82
hUnknown_ff83:: db                ; EQU $ff83
hUnknown_ff84:: db                ; EQU $ff84
hVBlankOccured :: db              ; EQU $ff85
hCurSpriteBuffer::
hCurSpriteVisibility:: db         ; EQU $ff86
hCurSpriteY:: db                  ; EQU $ff87
hCurSpriteX:: db                  ; EQU $ff88
hCurSpriteID:: db                 ; EQU $ff89
hCurSpriteBelowBG:: db            ; EQU $ff8a
hCurSpriteFlip:: db               ; EQU $ff8b
hCurSpriteFlags:: db              ; EQU $ff8c
hOAMBufferPtrHi:: db              ; EQU $ff8d
hOAMBufferPtrLo:: db              ; EQU $ff8e
hSpriteCount:: db                 ; EQU $ff8f

hSpriteAnchorY:: db               ; EQU $ff90
hSpriteAnchorX:: db               ; EQU $ff91
hObjectX:: db                     ; EQU $ff92
hObjectY:: db                     ; EQU $ff93
hObjectFlags:: db                 ; EQU $ff94
hSpriteHidden:: db                ; EQU $ff95
hSpriteListPtrHi:: db             ; EQU $ff96
hSpriteListPtrLo:: db             ; EQU $ff97
hLockdownStage:: db               ; EQU $ff98
hGravityCounter:: db              ; EQU $ff99
hFallingSpeed:: db                ; EQU $ff9a
hCollisionOccured_NeverRead:: db  ; EQU $ff9b
hBlinkCounter:: db                ; EQU $ff9c
hUnknown_ff9d:: db                ; EQU $ff9d
hLineCount:: db                   ; EQU $ff9e
hUnknown_ff9f:: db                ; EQU $ff9f

hBuffer:: db                      ; EQU $ffa0
hSavedIE:: db                     ; EQU $ffa1
hUnknown_ffa2:: db                ; EQU $ffa2
hUnknown_ffa3:: db                ; EQU $ffa3
hUnknown_ffa4:: db                ; EQU $ffa4
hUnknown_ffa5:: db                ; EQU $ffa5
hDelayCounter:: db                ; EQU $ffa6
hFastDropDelayCounter:: db        ; EQU $ffa7
hUnknwon_ffa8:: db                ; EQU $ffa8
hLevel:: db                       ; EQU $ffa9
hAutoFireCountdown:: db           ; EQU $ffaa
hUnknown_ffab:: db                ; EQU $ffab
hUnknown_ffac:: db                ; EQU $ffac
hUnknown_ffad:: db                ; EQU $ffad
hNextNextPiece:: db               ; EQU $ffae
hRandomnessPtrHi_NeverRead:: db   ; EQU $ffaf

hRandomnessPtrLo:: db             ; EQU $ffb0
hUnknwon_ffb1:: db                ; EQU $ffb1
hCoordConversionY:: db            ; EQU $ffb2
hCoordConversionX:: db            ; EQU $ffb3
hCoordConversionLo:: db           ; EQU $ffb4
hCoordConversionHi:: db           ; EQU $ffb5
hOAMDMA::
hOAMDMA_ffb6:: db                 ; EQU $ffb6
hOAMDMA_ffb7:: db                 ; EQU $ffb7
hOAMDMA_ffb8:: db                 ; EQU $ffb8
hOAMDMA_ffb9:: db                 ; EQU $ffb9
hOAMDMA_ffba:: db                 ; EQU $ffba
hOAMDMA_ffbb:: db                 ; EQU $ffbb
hOAMDMA_ffbc:: db                 ; EQU $ffbc
hOAMDMA_ffbd:: db                 ; EQU $ffbd
hOAMDMA_ffbe:: db                 ; EQU $ffbe
hOAMDMA_ffbf:: db                 ; EQU $ffbf

hGameType:: db                    ; EQU $ffc0
hMusicType:: db                   ; EQU $ffc1
hTypeALevel:: db                  ; EQU $ffc2
hTypeBLevel:: db                  ; EQU $ffc3
hTypeBHigh:: db                   ; EQU $ffc4
hMultiplayer:: db                 ; EQU $ffc5
hDemoCountdown::
hHighscoreLettersEntered:: db     ; EQU $ffc6
hHighscoreEnterName:: db          ; EQU $ffc7
hHighscorePosition:: db           ; EQU $ffc8
hHighscoreNamePtrHi:: db          ; EQU $ffc9
hHighscoreNamePtrLo:: db          ; EQU $ffca
hMasterSlave:: db                 ; EQU $ffcb
hSerialDone:: db                  ; EQU $ffcc
hSerialState:: db                 ; EQU $ffcd
hSendBufferValid:: db             ; EQU $ffce
hSendBuffer:: db                  ; EQU $ffcf

hRecvBuffer:: db                  ; EQU $ffd0
hUnknown_ffd1:: db                ; EQU $ffd1
hUnknown_ffd2:: db                ; EQU $ffd2
hUnknown_ffd3:: db                ; EQU $ffd3
hUnknown_ffd4:: db                ; EQU $ffd4
hUnknown_ffd5:: db                ; EQU $ffd5
hUnknown_ffd6:: db                ; EQU $ffd6
hUnknown_ffd7:: db                ; EQU $ffd7
hUnknown_ffd8:: db                ; EQU $ffd8
hUnknown_ffd9:: db                ; EQU $ffd9
hUnknown_ffda:: db                ; EQU $ffda
hUnknown_ffdb:: db                ; EQU $ffdb
hUnknown_ffdc:: db                ; EQU $ffdc
hUnknown_ffdd:: db                ; EQU $ffdd
hUnknown_ffde:: db                ; EQU $ffde
hUnknown_ffdf:: db                ; EQU $ffdf

; Used by DisplayBCD. The values can overlap because the latter is always cleared at the end of the
; routine, and the former is local to the subroutine.
hSeenNonZero::
hScoreDirty:: db                  ; EQU $ffe0
hGameState:: db                   ; EQU $ffe1
hRowToShift:: db                  ; EQU $ffe3
hDemoNumber:: db                  ; EQU $ffe4
hFastDropDistance:: db            ; EQU $ffe5
hUnknown_ffe6:: db                ; EQU $ffe6
hUnknown_ffe7:: db                ; EQU $ffe7
hEnableHighscoreVBlank:: db       ; EQU $ffe8
hRecordDemo:: db                  ; EQU $ffe9
hCountdownTillNextDemoInput:: db  ; EQU $ffea
hDemoPtrHi:: db                   ; EQU $ffeb
hDemoPtrLo:: db                   ; EQU $ffec
hLastDemoInput:: db               ; EQU $ffed
hTrueInputDuringDemo:: db         ; EQU $ffee
hUnknown_ffef:: db                ; EQU $ffef
    
hMultiplayerNewMusic:: db         ; EQU $fff0
hUnknown_fff1:: db                ; EQU $fff1
hUnknown_fff2:: db                ; EQU $fff2
hUnknown_fff3:: db                ; EQU $fff3
hStartAtLevel10:: db              ; EQU $fff4
hUnknown_fff5:: db                ; EQU $fff5
hUnknown_fff6:: db                ; EQU $fff6
hUnknown_fff7:: db                ; EQU $fff7
hUnknown_fff8:: db                ; EQU $fff8
hUnknown_fff9:: db                ; EQU $fff9
hUnknown_fffa:: db                ; EQU $fffa
hFailedTetrominoPlacements::
hHighscorePtrHi:: db              ; EQU $fffb
hHighscorePtrLo:: db              ; EQU $fffc
hUnknown_fffd:: db                ; EQU $fffd
hUnknown_fffe:: db                ; EQU $fffe
hUnknown_ffff:: db                ; EQU $ffff
