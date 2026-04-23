; Asar 1.91
norom
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

org $0000

; ===========================================
!BASE_ADDR = $3CB0
spcblock !BASE_ADDR nspc
	%SMPL_PTR(SMPL_00, $1116)				; 2C
	%SMPL_PTR(SMPL_01, $001B)				; 2D
	%NULL_PTR()								; 2E NULL
	%NULL_PTR()								; 2F NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $D300
spcblock !BASE_ADDR nspc
	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr
	%INC_SMPL(SMPL_01)						; Include SMPL_01.brr
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here