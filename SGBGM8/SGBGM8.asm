asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw Boss_Venom_Base_2_EC04				; sub 5 (short)
	dw Boss_Venom_Base_2_Long_EC00			; sub 6 (long)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EC00
spcblock !BASE_ADDR nspc
	%INC_SONG(Boss_Venom_Base_2_Long_EC00)	; Venom Base 2 (Long)
	%INC_SONG(Boss_Venom_Base_2_EC04)		; Venom Base 2
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here