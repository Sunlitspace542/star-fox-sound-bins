asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC0
spcblock !BASE_ADDR nspc
	dw $0000								; NULL
	dw SONG_00								; 
	dw SONG_00								; 
	dw SONG_00								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $ECBA
spcblock !BASE_ADDR nspc
	%INC_SONG(SONG_00)						; Include SONG_00.bin
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here