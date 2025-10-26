incsrc ../LABELS.def	; External Labels File
incsrc ../../MACROS.inc	; Macros File

; Asar 1.91
norom
org $0000

; ===========================================
!BASE_ADDR = $3C70
dw SMPL_TABL_00_end-SMPL_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_TABL_00_start:

	%SMPL_PTR(SMPL_00, $0F27)				; 
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL

SMPL_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $C720
dw SMPL_DATA_00_end-SMPL_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_DATA_00_start:

	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr

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
!BASE_ADDR = $E000
dw SONG_DATA_00_end-SONG_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_DATA_00_start:

	%INC_SONG(SONG_00)						; Include SONG_00.bin

SONG_DATA_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $FDC0
dw SONG_TABL_00_end-SONG_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_TABL_00_start:

	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw SONG_00								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL

SONG_TABL_00_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here