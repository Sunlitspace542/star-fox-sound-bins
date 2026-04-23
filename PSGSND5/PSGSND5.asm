asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $3C00
spcblock !BASE_ADDR nspc
	%SMPL_PTR(SMPL_00, $1827)				; 00
	%SMPL_PTR(SMPL_01, $243F)				; 01
	%SMPL_PTR(SMPL_01, $243F)				; 02
	%SMPL_PTR(SMPL_02, $001B)				; 03
	%SMPL_PTR(SMPL_02, $001B)				; 04
	%SMPL_PTR(SMPL_02, $001B)				; 05
	%SMPL_PTR(SMPL_03, $0D92)				; 06
	%SMPL_PTR(SMPL_03, $0D92)				; 07
	%SMPL_PTR(SMPL_04, $001B)				; 08
	%SMPL_PTR(SMPL_05, $2BF2)				; 09
	%NULL_PTR()								; 0A NULL
	%NULL_PTR()								; 0B NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $4000
spcblock !BASE_ADDR nspc
	%INC_SMPL(SMPL_00)						; "Emergency!"
	%INC_SMPL(SMPL_01)						; "Prepare for launch"
	%INC_SMPL(SMPL_02)						; SCRAMBLE chatter
	%INC_SMPL(SMPL_03)						; Crash
	%INC_SMPL(SMPL_04)						; Alarm
	%INC_SMPL(SMPL_05)						; "Incoming enemy fighters!"
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $3D00
spcblock !BASE_ADDR nspc
;	VxSRCN, VxADSR1, VxADSR2, VxGAIN, pitch mult base, pitch mult fractional (256ths)
	db $00, $FF, $E0, $B8, $07, $A0	; $00
	db $01, $FD, $E0, $B8, $07, $A0	; $01
	db $02, $FF, $E0, $B8, $07, $A0	; $02
	db $03, $FD, $E0, $B8, $00, $F0	; $03
	db $04, $F6, $E0, $B8, $00, $F0	; $04
	db $05, $FF, $E0, $B8, $00, $F0	; $05
	db $06, $F6, $E0, $B8, $02, $00	; $06
	db $07, $FF, $E0, $B8, $02, $00	; $07
	db $08, $FF, $E0, $B8, $03, $C0	; $08
	db $09, $FF, $E0, $B8, $07, $A0	; $09
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDDE
spcblock !BASE_ADDR nspc
	dw SCRAMBLE_F7AB						; 
	dw EXT_SONG_FCCE						; sub 17 Player Down (Band)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $F7AB
spcblock !BASE_ADDR nspc
	%INC_SONG(SCRAMBLE_F7AB)				; SCRAMBLE
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here