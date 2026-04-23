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
	dw Meteor_EBE5							; sub 2
	dw Meteor_EBE5							; sub 3
	dw Meteor_EBE5							; sub 4
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EBE5
spcblock !BASE_ADDR nspc
	%INC_SONG(Meteor_EBE5)					; Meteor
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here