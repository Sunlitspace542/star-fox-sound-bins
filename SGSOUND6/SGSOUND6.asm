asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $3CA0
spcblock !BASE_ADDR nspc
	%SMPL_PTR(SMPL_00, $0EF1)				; 28 "good luck"
	%NULL_PTR()								; 29 NULL
	%NULL_PTR()								; 2A NULL
	%NULL_PTR()								; 2B NULL
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $DBA0
spcblock !BASE_ADDR nspc
	%INC_SMPL(SMPL_00)						; Include SMPL_00.brr
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here