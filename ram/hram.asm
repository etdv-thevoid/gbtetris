SECTION "HRAM", HRAM
hKeysHeld:: db                    ; EQU $ff80
hKeysPressed:: ds 4               ; EQU $ff81
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
hLockdownStage :: db              ; EQU $ff98
hGravityCounter:: db              ; EQU $ff99
hFallingSpeed:: db                ; EQU $ff9a
hCollisionOccured_NeverRead:: db  ; EQU $ff9b
hBlinkCounter :: ds 2             ; EQU $ff9c
hLineCount:: ds 2                 ; EQU $ff9e
hBuffer:: db                      ; EQU $ffa0
hSavedIE:: ds 5                   ; EQU $ffa1
hDelayCounter:: db                ; EQU $ffa6
hFastDropDelayCounter:: ds 2      ; EQU $ffa7
hLevel:: db                       ; EQU $ffa9
hAutoFireCountdown:: ds 4         ; EQU $ffaa
hNextNextPiece:: db               ; EQU $ffae
hRandomnessPtrHi_NeverRead:: db   ; EQU $ffaf
hRandomnessPtrLo:: ds 2           ; EQU $ffb0
hCoordConversionY :: db           ; EQU $ffb2
hCoordConversionX :: db           ; EQU $ffb3
hCoordConversionLo:: db           ; EQU $ffb4
hCoordConversionHi:: db           ; EQU $ffb5
hOAMDMA:: ds 10                   ; EQU $ffb6 ; ends $ffbf
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
hRecvBuffer:: ds 16               ; EQU $ffd0
; Used by DisplayBCD. The values can overlap because the latter is always cleared at the end of the
; routine, and the former is local to the subroutine.
hSeenNonZero::
hScoreDirty :: db                 ; EQU $ffe0
hGameState:: db                   ; EQU $ffe1
hRowToShift:: db                  ; EQU $ffe3
hDemoNumber:: db                  ; EQU $ffe4
hFastDropDistance:: ds 3          ; EQU $ffe5
hEnableHighscoreVBlank:: db       ; EQU $ffe8
hRecordDemo:: db                  ; EQU $ffe9
hCountdownTillNextDemoInput:: db  ; EQU $ffea
hDemoPtrHi:: db                   ; EQU $ffeb
hDemoPtrLo:: db                   ; EQU $ffec
hLastDemoInput:: db               ; EQU $ffed
hTrueInputDuringDemo:: ds 2       ; EQU $ffee
hMultiplayerNewMusic:: ds 4       ; EQU $fff0
hStartAtLevel10:: ds 7            ; EQU $fff4
hFailedTetrominoPlacements::
hHighscorePtrHi:: db              ; EQU $fffb
hHighscorePtrLo:: db              ; EQU $fffc

