incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; Asar 1.91
norom
org $0000

; ===========================================
!BASE_ADDR = $3CB0
dw SMPL_TABL_00_end-SMPL_TABL_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_TABL_00_start:

	%SMPL_PTR(SMPL_00, $1116)				; 
	%SMPL_PTR(SMPL_01, $001B)				; 
	%NULL_PTR()								; NULL
	%NULL_PTR()								; NULL

SMPL_TABL_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $D300
dw SMPL_DATA_00_end-SMPL_DATA_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


SMPL_DATA_00_start:

	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr
	%INC_SMPL(SMPL_01)						; Include SMPL_01.brr

SMPL_DATA_00_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here