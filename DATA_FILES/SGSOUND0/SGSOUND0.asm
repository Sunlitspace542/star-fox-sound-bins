incsrc ../LABELS.def	; External Labels File
incsrc ../../MACROS.inc	; Macros File

; Asar 1.91
norom
org $0000

; ===========================================
!BASE_ADDR = $3EE8
dw PROG_CODE_00_end-PROG_CODE_00_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


PROG_CODE_00_start:

	incbin PROG_CODE_00.BIN

PROG_CODE_00_end:
; ===========================================



; ===========================================
!BASE_ADDR = $0400
dw PROG_CODE_01_end-PROG_CODE_01_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


PROG_CODE_01_start:

	incbin PROG_CODE_01.BIN

PROG_CODE_01_end:
; ===========================================



; ===========================================
!BASE_ADDR = $3E20
dw PROG_CODE_02_end-PROG_CODE_02_start		; calculate size in bytes
dw !BASE_ADDR								; spc destination


PROG_CODE_02_start:

	incbin PROG_CODE_02.BIN

PROG_CODE_02_end:
; ===========================================





; ============================
; end of data, start execution
; ============================
dw $0000
dw $0400									; start execution here