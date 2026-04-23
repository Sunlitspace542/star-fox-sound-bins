; Asar 1.91
norom
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

org $0000

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw SONG_00								; 
	dw SONG_00								; 
	dw EXT_SONG_F8FE								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCCE								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(SONG_00)						; Include SONG_00.bin
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here