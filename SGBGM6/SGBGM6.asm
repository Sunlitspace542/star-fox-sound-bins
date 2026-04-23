asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC8
spcblock !BASE_ADDR nspc
	dw Entering_Dangerous_Territory_EC00			; sub 4
	dw Boss_Space_Armada_EC0E						; sub 5
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EC00
spcblock !BASE_ADDR nspc
	%INC_SONG(Entering_Dangerous_Territory_EC00)	; Entering Dangerous Territory
	%INC_SONG(Boss_Space_Armada_EC0E)				; Boss Space Armada
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here