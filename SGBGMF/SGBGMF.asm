asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC0
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F4B5								; 
	dw SONG_03								; 
	dw SONG_00								; 
	dw SONG_00								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F8D3								; 
	dw SONG_02								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_F77F								; 
	dw $0000								; NULL
	dw EXT_SONG_F829								; 
	dw SONG_01								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCF0								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(SONG_00)						; Include SONG_00.bin
	%INC_SONG(SONG_01)						; Include SONG_01.bin
	%INC_SONG(SONG_02)						; Include SONG_02.bin
	%INC_SONG(SONG_03)						; Include SONG_03.bin
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here