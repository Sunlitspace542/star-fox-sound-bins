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
	dw Titania_ECBA							; sub 2
	dw Titania_ECBA							; sub 3
	dw Titania_ECBA							; sub 4
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $ECBA
spcblock !BASE_ADDR nspc
	%INC_SONG(Titania_ECBA)					; Titania
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here