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
	dw Macbeth_E600							; sub 2
	dw Macbeth_E600							; sub 3
	dw Macbeth_E600							; sub 4
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E600
spcblock !BASE_ADDR nspc
	%INC_SONG(Macbeth_E600)					; Macbeth
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here