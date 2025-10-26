incsrc ../LABELS.def	; External Labels File
incsrc ../../MACROS.inc	; Macros File

; Asar 1.91
norom
org $0000

; ===========================================
!BASE_ADDR = $3C00
dw SMPL_TABL_00_end-SMPL_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_TABL_00_start:

	%SMPL_PTR(SMPL_00, $0C0F)				; 
	%SMPL_PTR(SMPL_01, $0F8A)				; 
	%SMPL_PTR(SMPL_02, $0DFE)				; 
	%SMPL_PTR(SMPL_03, $2316)				; 
	%SMPL_PTR(SMPL_04, $12AB)				; 
	%SMPL_PTR(SMPL_04, $12AB)				; 
	%SMPL_PTR(SMPL_04, $12AB)				; 
	%SMPL_PTR(SMPL_05, $0A7A)				; 
	%SMPL_PTR(SMPL_06, $00B4)				; 
	%SMPL_PTR(SMPL_07, $007E)				; 
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL

SMPL_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $4000
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
!BASE_ADDR = $3C70
dw SMPL_TABL_01_end-SMPL_TABL_01_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_TABL_01_start:

	%SMPL_PTR(SMPL_08, $0522)				; 
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL

SMPL_TABL_01_end:
; ===========================================



; ===========================================
!BASE_ADDR = $C720
dw SMPL_DATA_01_end-SMPL_DATA_01_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_DATA_01_start:

	%INC_SMPL(SMPL_08)						; Include SMPL_08.brr

SMPL_DATA_01_end:
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
!BASE_ADDR = $FDC0
dw SONG_TABL_00_end-SONG_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_TABL_00_start:

	dw EXT_SONG_F4B5								; 
	dw $0000								; NULL
	dw SONG_00								; 
	dw $0000								; NULL

SONG_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
dw SONG_TABL_01_end-SONG_TABL_01_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_TABL_01_start:

	dw EXT_SONG_F8D3								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_F77F								; 
	dw $0000								; NULL
	dw EXT_SONG_F829								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCF0								; 
	dw SONG_01								; 
	dw SONG_01								; 

SONG_TABL_01_end:
; ===========================================



; ===========================================
!BASE_ADDR = $E000
dw SONG_DATA_00_end-SONG_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_DATA_00_start:

	%INC_SONG(SONG_00)						; Include SONG_00.bin
	%INC_SONG(SONG_01)						; Include SONG_01.bin

SONG_DATA_00_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here