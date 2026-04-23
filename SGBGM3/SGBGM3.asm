asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw Boss_Macbeth_E000					; sub 5
	dw Boss_Macbeth_E000					; sub 6
	dw EXT_SONG_F8FE						; sub 7 fanfare (band) SGSOUND3
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCCE						; sub 17 player down (band) SGSOUND3
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(Boss_Macbeth_E000)			; Macbeth Boss
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here