DEF hKeysHeld       EQU $ff80
DEF hKeysPressed    EQU $ff81
DEF hVBlankOccured  EQU $ff85

; parameters for UpdateSprites
DEF hOAMBufferPtrHi EQU $ff8d
DEF hOAMBufferPtrLo EQU $ff8e
DEF hSpriteCount    EQU $ff8f

; UpdateSprites temp
DEF hCurSpriteBuffer     EQU $ff86 ; ends $ff8c, SPRITE_INFO_SIZE bytes long
DEF hCurSpriteVisibility EQU hCurSpriteBuffer
DEF hCurSpriteY          EQU hCurSpriteBuffer + 1
DEF hCurSpriteX          EQU hCurSpriteBuffer + 2
DEF hCurSpriteID         EQU hCurSpriteBuffer + 3
DEF hCurSpriteBelowBG    EQU hCurSpriteBuffer + 4
DEF hCurSpriteFlip       EQU hCurSpriteBuffer + 5
DEF hCurSpriteFlags      EQU hCurSpriteBuffer + 6
DEF hSpriteAnchorY       EQU $ff90
DEF hSpriteAnchorX       EQU $ff91
DEF hObjectX             EQU $ff92
DEF hObjectY             EQU $ff93
DEF hObjectFlags         EQU $ff94
DEF hSpriteHidden        EQU $ff95
DEF hSpriteListPtrHi     EQU $ff96
DEF hSpriteListPtrLo     EQU $ff97

DEF hLockdownStage  EQU $ff98
DEF hGravityCounter EQU $ff99
DEF hFallingSpeed   EQU $ff9a

DEF hCollisionOccured_NeverRead EQU $ff9b

DEF hBlinkCounter  EQU $ff9c

DEF hLineCount EQU $ff9e

DEF hBuffer               EQU $ffa0
DEF hSavedIE              EQU $ffa1
DEF hDelayCounter         EQU $ffa6
DEF hFastDropDelayCounter EQU $ffa7

DEF hLevel EQU $ffa9

DEF hAutoFireCountdown EQU $ffaa

DEF hNextNextPiece             EQU $ffae
DEF hRandomnessPtrHi_NeverRead EQU $ffaf
DEF hRandomnessPtrLo           EQU $ffb0

DEF hCoordConversionY  EQU $ffb2
DEF hCoordConversionX  EQU $ffb3
DEF hCoordConversionLo EQU $ffb4
DEF hCoordConversionHi EQU $ffb5

DEF hOAMDMA EQU $ffb6 ; ends $ffbf, 10 bytes long

DEF hGameType      EQU $ffc0
DEF hMusicType     EQU $ffc1
DEF hTypeALevel    EQU $ffc2
DEF hTypeBLevel    EQU $ffc3
DEF hTypeBHigh     EQU $ffc4
DEF hMultiplayer   EQU $ffc5
DEF hDemoCountdown EQU $ffc6

DEF hHighscoreLettersEntered EQU $ffc6
DEF hHighscoreEnterName      EQU $ffc7
DEF hHighscorePosition       EQU $ffc8
DEF hHighscoreNamePtrHi      EQU $ffc9
DEF hHighscoreNamePtrLo      EQU $ffca

DEF hMasterSlave     EQU $ffcb
DEF hSerialDone      EQU $ffcc
DEF hSerialState     EQU $ffcd
DEF hSendBufferValid EQU $ffce
DEF hSendBuffer      EQU $ffcf
DEF hRecvBuffer      EQU $ffd0

; Used by DisplayBCD. The values can overlap because the latter is always cleared at the end of the
; routine, and the former is local to the subroutine.
DEF hSeenNonZero EQU $ffe0
DEF hScoreDirty  EQU $ffe0

DEF hGameState        EQU $ffe1
DEF hRowToShift       EQU $ffe3
DEF hDemoNumber       EQU $ffe4
DEF hFastDropDistance EQU $ffe5

DEF hEnableHighscoreVBlank EQU $ffe8

DEF hRecordDemo                 EQU $ffe9
DEF hCountdownTillNextDemoInput EQU $ffea
DEF hDemoPtrHi                  EQU $ffeb
DEF hDemoPtrLo                  EQU $ffec
DEF hLastDemoInput              EQU $ffed
DEF hTrueInputDuringDemo        EQU $ffee

DEF hMultiplayerNewMusic EQU $fff0
DEF hStartAtLevel10      EQU $fff4

DEF hFailedTetrominoPlacements EQU $fffb

DEF hHighscorePtrHi EQU $fffb
DEF hHighscorePtrLo EQU $fffc
