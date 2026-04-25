asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = !gft
spcblock !BASE_ADDR nspc
	dw $0000								; NULL
	dw Fortuna_EBE5							; sub 2
	dw Fortuna_EBE5							; sub 3
	dw Fortuna_EBE5							; sub 4
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EBE5
spcblock !BASE_ADDR nspc
	%INC_SONG(Fortuna_EBE5)					; Fortuna
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here