; Asar 1.91
norom
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

org $0000

; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw SONG_02								; 
	dw $0000								; NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDE2
spcblock !BASE_ADDR nspc
	dw SONG_00								; 
	dw SONG_01								; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $F2E5
spcblock !BASE_ADDR nspc
	%INC_SONG(SONG_00)						; Include SONG_00.bin
	%INC_SONG(SONG_01)						; Include SONG_01.bin
	%INC_SONG(SONG_02)						; Include SONG_02.bin
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here