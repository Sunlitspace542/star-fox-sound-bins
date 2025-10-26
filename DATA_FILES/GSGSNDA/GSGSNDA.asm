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

	%SMPL_PTR(SMPL_00, $1C8C)				; 
	%SMPL_PTR(SMPL_01, $0129)				; 
	%SMPL_PTR(SMPL_01, $0129)				; 
	%SMPL_PTR(SMPL_02, $069C)				; 
	%SMPL_PTR(SMPL_02, $069C)				; 
	%SMPL_PTR(SMPL_03, $0048)				; 
	%SMPL_PTR(SMPL_04, $0201)				; 
	%SMPL_PTR(SMPL_04, $0201)				; 
	%SMPL_PTR(SMPL_05, $06A5)				; 
	%SMPL_PTR(SMPL_05, $06A5)				; 
	%SMPL_PTR(SMPL_06, $020A)				; 
	%SMPL_PTR(SMPL_06, $020A)				; 
	%SMPL_PTR(SMPL_07, $06A5)				; 
	%SMPL_PTR(SMPL_07, $06A5)				; 
	%SMPL_PTR(SMPL_07, $06A5)				; 
	%SMPL_PTR(SMPL_07, $06A5)				; 

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

	dw SONG_01								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL

SONG_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
dw SONG_TABL_01_end-SONG_TABL_01_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_TABL_01_start:

	dw SONG_04								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw SONG_02								; 
	dw $0000								; NULL
	dw SONG_03								; 
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw SONG_05								; 
	dw SONG_00								; 
	dw SONG_00								; 

SONG_TABL_01_end:
; ===========================================



; ===========================================
!BASE_ADDR = $E000
dw SONG_DATA_00_end-SONG_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SONG_DATA_00_start:

	%INC_SONG(SONG_00)						; Include SONG_00.bin
	%INC_SONG(SONG_01)						; Include SONG_01.bin
	%INC_SONG(SONG_02)						; Include SONG_02.bin
	%INC_SONG(SONG_03)						; Include SONG_03.bin
	%INC_SONG(SONG_04)						; Include SONG_04.bin
	%INC_SONG(SONG_05)						; Include SONG_05.bin

SONG_DATA_00_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here