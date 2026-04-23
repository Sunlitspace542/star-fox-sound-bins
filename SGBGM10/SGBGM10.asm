asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw Last_Boss_Clear_F98E					; sub 7
	dw $0000								; sub 8 NULL filler (don't remove)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDE2
spcblock !BASE_ADDR nspc
	dw Entering_Dangerous_Territory_F2E5	; sub 18
	dw Boss_Andross_F2F3					; sub 19
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $F2E5
spcblock !BASE_ADDR nspc
	%INC_SONG(Entering_Dangerous_Territory_F2E5)	; Entering Dangerous Territory
	%INC_SONG(Boss_Andross_F2F3)					; Boss Andross
	%INC_SONG(Last_Boss_Clear_F98E)					; Last Boss Clear
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here