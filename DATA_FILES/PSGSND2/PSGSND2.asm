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
	%SMPL_PTR(SMPL_02, $0BA3)				; 
	%SMPL_PTR(SMPL_03, $07AA)				; 
	%SMPL_PTR(SMPL_04, $06A5)				; 
	%SMPL_PTR(SMPL_04, $06A5)				; 
	%SMPL_PTR(SMPL_04, $06A5)				; 
	%SMPL_PTR(SMPL_04, $06A5)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_05, $0414)				; 
	%SMPL_PTR(SMPL_06, $00B4)				; 
	%SMPL_PTR(SMPL_07, $007E)				; 

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
!BASE_ADDR = $F342
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