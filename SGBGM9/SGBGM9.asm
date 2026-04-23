asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw Boss_Venom_Base_1_EAC8					; sub 5
	dw Boss_Venom_Base_1_Extended_EAE8			; sub 6 (extended)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EAC8
spcblock !BASE_ADDR nspc
	%INC_SONG(Boss_Venom_Base_1_EAC8)			; Boss Venom Base 1
	%INC_SONG(Boss_Venom_Base_1_Extended_EAE8)	; Boss Venom Base 1 (Extended)
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here