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
	dw Out_Of_This_Dimension_EC7E			; sub 2
	dw Out_Of_This_Dimension_EC7E			; sub 3
	dw Out_Of_This_Dimension_EC7E			; sub 4
	dw Slot_Machine_E000					; sub 5
	dw Clear_OOTD_E022						; sub 6 Clear (Out of this Dimension)
	dw EXT_SONG_Fanfare_Band_F8FE			; sub 7 fanfare (band) SGSOUND3
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_Player_Down_Band_FCCE		; sub 17 player down (band) SGSOUND3
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(Slot_Machine_E000)			; Slot Machine Boss
	%INC_SONG(Clear_OOTD_E022)				; Clear (Out of this Dimension)
	%INC_SONG(Out_Of_This_Dimension_EC7E)	; Out of this Dimension
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here