asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC0
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F4B5						; 
	dw Sector_Y_E000						; 
	dw Sector_Y_E000						; 
	dw Sector_Y_E000						; 
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F8D3						; sub 7 fanfare (orchestra) SGSOUND2
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_F77F						; sub 11 briefing SGSOUND2
	dw $0000								; NULL
	dw EXT_SONG_F829						; sub 13 briefing (fast) SGSOUND2
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCF0						; sub 17 player down (orchestra)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(Sector_Y_E000)				; Sector Y
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here