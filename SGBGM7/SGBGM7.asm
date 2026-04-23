asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw Boss_Asteroid_EC20								; sub 4
	dw Boss_Asteroid_EC20								; sub 5
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EC20
spcblock !BASE_ADDR nspc
	%INC_SONG(Boss_Asteroid_EC20)						; Asteroid Boss
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here