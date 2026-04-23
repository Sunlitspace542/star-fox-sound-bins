asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $3C00
spcblock !BASE_ADDR nspc
	%SMPL_PTR(SMPL_00, $0C0F)				; 00 "Come in Corneria"
	%SMPL_PTR(SMPL_01, $0F8A)				; 01 "This is Corneria"
	%SMPL_PTR(SMPL_02, $0DFE)				; 02 "Pepper speaking"
	%SMPL_PTR(SMPL_03, $2316)				; 03 "Congratulations on a job well done"
	%SMPL_PTR(SMPL_04, $12AB)				; 04 "I'm heading back to Corneria"
	%SMPL_PTR(SMPL_04, $12AB)				; 05 "I'm heading back to Corneria"
	%SMPL_PTR(SMPL_04, $12AB)				; 06 "I'm heading back to Corneria"
	%SMPL_PTR(SMPL_05, $0A7A)				; 07 crash
	%SMPL_PTR(SMPL_06, $00B4)				; 08 wind instrument?
	%SMPL_PTR(SMPL_07, $007E)				; 09 flute
	%NULL_PTR()								; 0A NULL
	%NULL_PTR()								; 0B NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $4000
spcblock !BASE_ADDR nspc
	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr
	%INC_SMPL(SMPL_01)						; Include SMPL_01.brr
	%INC_SMPL(SMPL_02)						; Include SMPL_02.brr
	%INC_SMPL(SMPL_03)						; Include SMPL_03.brr
	%INC_SMPL(SMPL_04)						; Include SMPL_04.brr
	%INC_SMPL(SMPL_05)						; Include SMPL_05.brr
	%INC_SMPL(SMPL_06)						; Include SMPL_06.brr
	%INC_SMPL(SMPL_07)						; Include SMPL_07.brr
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $3C70
spcblock !BASE_ADDR nspc
	%SMPL_PTR(SMPL_08, $0522)				; 1C "Roger"
	%NULL_PTR()								; 1D NULL
	%NULL_PTR()								; 1E NULL
	%NULL_PTR()								; 1F NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $C720
spcblock !BASE_ADDR nspc
	%INC_SMPL(SMPL_08)						; Include SMPL_08.brr
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $3D00
spcblock !BASE_ADDR nspc
;	VxSRCN, VxADSR1, VxADSR2, VxGAIN, pitch mult base, pitch mult fractional (256ths)
	db $00, $FF, $E0, $B8, $07, $A0	; $00
	db $01, $FF, $E0, $B8, $06, $30	; $01
	db $02, $FF, $E0, $B8, $06, $B0	; $02
	db $03, $FF, $E0, $B8, $06, $C0	; $03
	db $04, $FD, $E0, $B8, $07, $A0	; $04
	db $05, $FD, $E0, $B8, $07, $A0	; $05
	db $06, $FF, $E0, $B8, $07, $A0	; $06
	db $07, $FF, $E0, $B8, $01, $90	; $07
	db $08, $FF, $E0, $B8, $03, $00	; $08
	db $09, $FF, $E0, $B8, $01, $00	; $09
	db $0A, $FD, $E0, $B8, $02, $00	; $0A
	db $0B, $FD, $E0, $B8, $02, $00	; $0B
	db $0C, $FD, $E0, $B8, $02, $00	; $0C
	db $0D, $FD, $E0, $B8, $02, $00	; $0D
	db $0E, $FD, $E0, $B8, $02, $00	; $0E
	db $0F, $FD, $E0, $B8, $02, $00	; $0F
	db $10, $FD, $E0, $B8, $02, $00	; $10
	db $11, $FD, $E0, $B8, $02, $00	; $11
	db $12, $FD, $E0, $B8, $02, $00	; $12
	db $13, $FD, $E0, $B8, $02, $00	; $13
	db $14, $DF, $34, $B8, $02, $00	; $14
	db $15, $F6, $F1, $B8, $02, $00	; $15
	db $16, $FF, $EE, $B8, $02, $00	; $16
	db $17, $FF, $E0, $B8, $05, $B0	; $17
	db $18, $FF, $E0, $B8, $03, $00	; $18
	db $19, $FF, $E0, $B8, $03, $00	; $19
	db $1A, $FF, $E0, $B8, $04, $90	; $1A
	db $1B, $FF, $E0, $B8, $07, $A0	; $1B
	db $1C, $FF, $E0, $B8, $07, $A0	; $1C
	db $1D, $FF, $F0, $B8, $03, $C0	; $1D
	db $1E, $FF, $F6, $B8, $03, $C0	; $1E
	db $1F, $FD, $E0, $B8, $03, $C0	; $1F
	db $20, $FE, $E0, $B8, $03, $C0	; $20
	db $21, $FF, $ED, $B8, $03, $C0	; $21
	db $22, $FF, $F3, $B8, $03, $C0	; $22
	db $23, $FF, $F6, $B8, $03, $C0	; $23
	db $24, $FF, $E0, $B8, $03, $C0	; $24
	db $25, $FF, $E0, $B8, $03, $C0	; $25
	db $26, $FF, $E0, $B8, $03, $00	; $26
	db $27, $FF, $E0, $B8, $01, $00	; $27
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDC0
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F4B5						; 
	dw $0000								; NULL
	dw Game_Clear_Demonstration_E000		; 
	dw $0000								; NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F8D3						; sub 7 fanfare (orchestra) SGSOUND
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_F77F						; sub 11 briefing SGSOUND2
	dw $0000								; NULL
	dw EXT_SONG_F829						; sub 13 briefing (fast) SGSOUND2
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCF0						; sub 17 player down (orchestra)
	dw Ending_E772							; sub 18
	dw Ending_E772							; sub 19
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(Game_Clear_Demonstration_E000)	; Game Clear Demonstration
	%INC_SONG(Ending_E772)						; Ending (Boss Roll)
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here