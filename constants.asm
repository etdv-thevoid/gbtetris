; hKeysHeld, hKeysPressed
DEF A_BUTTON EQU %00000001
DEF B_BUTTON EQU %00000010
DEF SELECT   EQU %00000100
DEF START    EQU %00001000
DEF D_RIGHT  EQU %00010000
DEF D_LEFT   EQU %00100000
DEF D_UP     EQU %01000000
DEF D_DOWN   EQU %10000000

DEF A_BUTTON_BIT EQU 0
DEF B_BUTTON_BIT EQU 1
DEF SELECT_BIT   EQU 2
DEF START_BIT    EQU 3
DEF D_RIGHT_BIT  EQU 4
DEF D_LEFT_BIT   EQU 5
DEF D_UP_BIT     EQU 6
DEF D_DOWN_BIT   EQU 7

; hGameState
DEF STATE_GAMEPLAY                      EQU 0
DEF STATE_GAME_OVER                     EQU 1
DEF STATE_04                            EQU 4
DEF STATE_05                            EQU 5
DEF STATE_LOAD_TITLESCREEN              EQU 6
DEF STATE_TITLESCREEN                   EQU 7
DEF STATE_LOAD_MODE_SELECT              EQU 8
DEF STATE_09                            EQU 9
DEF STATE_LOAD_PLAYFIELD                EQU 10
DEF STATE_MODE_SELECT                   EQU 14
DEF STATE_MUSIC_SELECT                  EQU 15
DEF STATE_LOAD_TYPE_A_MENU              EQU 16
DEF STATE_TYPE_A_MENU                   EQU 17
DEF STATE_LOAD_TYPE_B_MENU              EQU 18
DEF STATE_TYPE_B_LEVEL_SELECT           EQU 19
DEF STATE_TYPE_B_HIGH_SELECT            EQU 20
DEF STATE_HIGHSCORE_ENTER_NAME          EQU 21
DEF STATE_22                            EQU 22
DEF STATE_24                            EQU 24
DEF STATE_26                            EQU 26
DEF STATE_27                            EQU 27
DEF STATE_34                            EQU 34
DEF STATE_35                            EQU 35
DEF STATE_LOAD_COPYRIGHT                EQU 36
DEF STATE_COPYRIGHT                     EQU 37
DEF STATE_LOAD_MULTIPLAYER_MUSIC_SELECT EQU 42
DEF STATE_43                            EQU 43
DEF STATE_MORE_COPYRIGHT                EQU 53 ; INTERNATIONAL only

; hMasterSlave
DEF SERIAL_MASTER EQU $29
DEF SERIAL_SLAVE  EQU $55

DEF SERIAL_MUSIC_ACK  EQU $39
DEF SERIAL_MUSIC_DONE EQU $50

; hSerialState
DEF SERIAL_STATE_TITLESCREEN EQU 0
DEF SERIAL_STATE_1           EQU 1
DEF SERIAL_STATE_2           EQU 2
DEF SERIAL_STATE_3           EQU 3

; wPlaySong, wCurSong
DEF SONG_HIGHSCORE          EQU 1
DEF SONG_B_END_JINGLE       EQU 2
DEF SONG_TITLESCREEN        EQU 3
DEF SONG_A_END_JINGLE       EQU 4
DEF SONG_A                  EQU 5
DEF SONG_B                  EQU 6
DEF SONG_C                  EQU 7
DEF SONG_TENSE              EQU 8
DEF SONG_MULTIPLAYER_JIGNLE EQU 9
DEF SONG_ENDING             EQU 16
DEF SONG_STOP               EQU $ff

; wPlayPulseSFX, wCurPulseSFX
DEF PULSESFX_CURSOR_BEEP  EQU 1
DEF PULSESFX_CONFIRM_BEEP EQU 2
DEF PULSESFX_ROTATE       EQU 3
DEF PULSESFX_MOVE_PIECE   EQU 4
DEF PULSESFX_LINE_CLEAR   EQU 6
DEF PULSESFX_TETRIS       EQU 7
DEF PULSESFX_LEVELUP      EQU 8

; wPlayWaveSFX, wCurWaveSFX
DEF WAVESFX_GAME_OVER EQU 2

; wPlayNoiseSFX, wCurNoiseSFX
DEF NOISESFX_LINE_REMOVED EQU 1
DEF NOISESFX_LOCKDOWN     EQU 2

DEF SPRITEPOS_CURRENT_TETROMINO EQU 0
DEF SPRITEPOS_NEXT_TETROMINO    EQU 1

; wSpriteList
DEF SPRITE_SIZE              EQU 16
DEF SPRITE_INFO_SIZE         EQU 7 ; the 9 bytes is padding
DEF SPRITE_OFFSET_VISIBILITY EQU 0
DEF SPRITE_OFFSET_Y          EQU 1
DEF SPRITE_OFFSET_X          EQU 2
DEF SPRITE_OFFSET_ID         EQU 3
DEF SPRITE_OFFSET_BELOW_BG   EQU 4
DEF SPRITE_OFFSET_FLIP       EQU 5
DEF SPRITE_OFFSET_FLAGS      EQU 6

;  SPRITE_OFFSET_VISIBILITY
DEF SPRITE_HIDDEN  EQU $80
DEF SPRITE_VISIBLE EQU $00

;  SPRITE_OFFSET_ID
DEF SPRITE_ID_ROTATION_MASK EQU $03

DEF SPRITE_L0      EQU $00
DEF SPRITE_L1      EQU $01
DEF SPRITE_L2      EQU $02
DEF SPRITE_L3      EQU $03
DEF SPRITE_J0      EQU $04
DEF SPRITE_J1      EQU $05
DEF SPRITE_J2      EQU $06
DEF SPRITE_J3      EQU $07
DEF SPRITE_I0      EQU $08
DEF SPRITE_I1      EQU $09
DEF SPRITE_I2      EQU $0a
DEF SPRITE_I3      EQU $0b
DEF SPRITE_O0      EQU $0c
DEF SPRITE_O1      EQU $0d
DEF SPRITE_O2      EQU $0e
DEF SPRITE_O3      EQU $0f
DEF SPRITE_Z0      EQU $10
DEF SPRITE_Z1      EQU $11
DEF SPRITE_Z2      EQU $12
DEF SPRITE_Z3      EQU $13
DEF SPRITE_S0      EQU $14
DEF SPRITE_S1      EQU $15
DEF SPRITE_S2      EQU $16
DEF SPRITE_S3      EQU $17
DEF SPRITE_T0      EQU $18
DEF SPRITE_T1      EQU $19
DEF SPRITE_T2      EQU $1a
DEF SPRITE_T3      EQU $1b
DEF SPRITE_TYPE_A  EQU $1c
DEF SPRITE_TYPE_B  EQU $1d
DEF SPRITE_TYPE_C  EQU $1e
DEF SPRITE_OFF     EQU $1f
DEF SPRITE_DIGIT_0 EQU $20
DEF SPRITE_DIGIT_1 EQU $21
DEF SPRITE_DIGIT_2 EQU $22
DEF SPRITE_DIGIT_3 EQU $23
DEF SPRITE_DIGIT_4 EQU $24
DEF SPRITE_DIGIT_5 EQU $25
DEF SPRITE_DIGIT_6 EQU $26
DEF SPRITE_DIGIT_7 EQU $27
DEF SPRITE_DIGIT_8 EQU $28
DEF SPRITE_DIGIT_9 EQU $29

;  SPRITE_OFFSET_BELOW_BG
DEF SPRITE_ABOVE_BG EQU $00
DEF SPRITE_BELOW_BG EQU $80

;  SPRITE_OFFSET_FLIP
DEF SPRITE_DONT_FLIP EQU $00

; hGameType
DEF GAME_TYPE_A EQU $37
DEF GAME_TYPE_B EQU $77

; hMusicType
DEF MUSIC_TYPE_A EQU SPRITE_TYPE_A
DEF MUSIC_TYPE_B EQU SPRITE_TYPE_B
DEF MUSIC_TYPE_C EQU SPRITE_TYPE_C
DEF MUSIC_OFF    EQU SPRITE_OFF

; hDemoNumber
DEF DEMO_NOT    EQU 0
DEF DEMO_TYPE_B EQU 1
DEF DEMO_TYPE_A EQU 2

; hRecordDemo
DEF DEMO_PLAY   EQU 0
DEF DEMO_RECORD EQU $ff

; hLockdownStage
DEF LOCKDOWN_STAGE_IDLE                EQU 0
DEF LOCKDOWN_STAGE_TRANSFER_TO_TILEMAP EQU 1
DEF LOCKDOWN_STAGE_LOOK_FOR_FULL_LINES EQU 2
DEF LOCKDOWN_STAGE_BLINK               EQU 3

DEF TYPE_A_LEVEL_COUNT    EQU 10
DEF TYPE_B_LEVEL_COUNT    EQU 10
DEF TYPE_B_HIGH_COUNT     EQU 6
DEF SCORE_SIZE            EQU 3
DEF HIGHSCORE_ENTRY_COUNT EQU 3
DEF HIGHSCORE_NAME_LENGTH EQU 6
DEF HIGHSCORE_ENTRY_SIZE  EQU HIGHSCORE_NAME_LENGTH + SCORE_SIZE

DEF PLAYFIELD_WIDTH EQU 10

DEF AUTOFIRE_DELAY EQU 23
DEF AUTOFIRE_RATE  EQU 9
DEF FASTDROP_RATE  EQU 3

DEF INITIAL_TETROMINO_Y EQU $18
DEF INITIAL_TETROMINO_X EQU $3f
