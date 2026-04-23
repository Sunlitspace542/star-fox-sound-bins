asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw SONG_00								; 
	dw SONG_01								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EC00
spcblock !BASE_ADDR nspc
	%INC_SONG(SONG_00)						; Include SONG_00.bin
	%INC_SONG(SONG_01)						; Include SONG_01.bin
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here