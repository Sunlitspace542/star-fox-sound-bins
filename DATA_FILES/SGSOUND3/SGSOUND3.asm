incsrc ../LABELS.def	; External Labels File
incsrc ../../MACROS.inc	; Macros File

; Asar 1.91
norom
org $0000

; ===========================================
!BASE_ADDR = $3C60
dw SMPL_TABL_00_end-SMPL_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_TABL_00_start:

	%SMPL_PTR(SMPL_00, $001B)				; 
	%SMPL_PTR(SMPL_01, $001B)				; 
	%SMPL_PTR(SMPL_02, $01D4)				; 
	%SMPL_PTR(SMPL_03, $068A)				; 
	%SMPL_PTR(SMPL_04, $001B)				; 
	%SMPL_PTR(SMPL_04, $001B)				; 
	%SMPL_PTR(SMPL_04, $001B)				; 
	%SMPL_PTR(SMPL_05, $00B4)				; 
	%SMPL_PTR(SMPL_05, $00B4)				; 
	%SMPL_PTR(SMPL_05, $00B4)				; 
	%SMPL_PTR(SMPL_06, $0510)				; 
	%SMPL_PTR(SMPL_06, $0510)				; 
	%SMPL_PTR(SMPL_07, $0036)				; 
	%SMPL_PTR(SMPL_08, $03E7)				; 
	%SMPL_PTR(SMPL_09, $034E)				; 
	%SMPL_PTR(SMPL_10, $0048)				; 
	%SMPL_PTR(SMPL_11, $0099)				; 
	%SMPL_PTR(SMPL_12, $057C)				; 
	%SMPL_PTR(SMPL_13, $0048)				; 
	%SMPL_PTR(SMPL_14, $001B)				; 
	%SMPL_PTR(SMPL_15, $0465)				; 
	%SMPL_PTR(SMPL_16, $020A)				; 
	%SMPL_PTR(SMPL_17, $0129)				; 
	%NULL_PTR()								; NULL

SMPL_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $B360
dw SMPL_DATA_00_end-SMPL_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_DATA_00_start:

	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr
	%INC_SMPL(SMPL_01)						; Include SMPL_01.brr
	%INC_SMPL(SMPL_02)						; Include SMPL_02.brr
	%INC_SMPL(SMPL_03)						; Include SMPL_03.brr
	%INC_SMPL(SMPL_04)						; Include SMPL_04.brr
	%INC_SMPL(SMPL_05)						; Include SMPL_05.brr
	%INC_SMPL(SMPL_06)						; Include SMPL_06.brr
	%INC_SMPL(SMPL_07)						; Include SMPL_07.brr
	%INC_SMPL(SMPL_08)						; Include SMPL_08.brr
	%INC_SMPL(SMPL_09)						; Include SMPL_09.brr
	%INC_SMPL(SMPL_10)						; Include SMPL_10.brr
	%INC_SMPL(SMPL_11)						; Include SMPL_11.brr
	%INC_SMPL(SMPL_12)						; Include SMPL_12.brr
	%INC_SMPL(SMPL_13)						; Include SMPL_13.brr
	%INC_SMPL(SMPL_14)						; Include SMPL_14.brr
	%INC_SMPL(SMPL_15)						; Include SMPL_15.brr
	%INC_SMPL(SMPL_16)						; Include SMPL_16.brr
	%INC_SMPL(SMPL_17)						; Include SMPL_17.brr

SMPL_DATA_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $3D00
dw INST_PRMS_00_end-INST_PRMS_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


INST_PRMS_00_start:

	incbin INST_PRMS_00.BIN

INST_PRMS_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $F8FE
dw SONG_DATA_00_end-SONG_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_DATA_00_start:

	%INC_SONG(SONG_00)						; Include SONG_00.bin

SONG_DATA_00_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here