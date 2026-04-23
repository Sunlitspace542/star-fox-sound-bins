asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = $FDC0
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F4B5						; sub 1	course select SGSOUND2
	dw Secret_Activated_EB3A				; sub 2
	dw Asteroid_Venom_Orbital_E000			; sub 3 Asteroid & Venom orbital
	dw Asteroid_Venom_Orbital_E000			; sub 4 Asteroid & Venom orbital
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $FDCC
spcblock !BASE_ADDR nspc
	dw EXT_SONG_F8D3						; sub 7 fanfare (orchestra) SGSOUND2
	dw Asteroid_Warp_Out_EAC3				; sub 8
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_F77F						; 11 briefing SGSOUND2
	dw $0000								; NULL
	dw EXT_SONG_F829						; sub 13 briefing (fast) SGSOUND2
	dw Asteroid_Warp_EA06					; sub 14
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_FCF0						; sub 17 player down (orchestra)
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E000
spcblock !BASE_ADDR nspc
	%INC_SONG(Asteroid_Venom_Orbital_E000)	; Asteroid / Venom Orbital
	%INC_SONG(Asteroid_Warp_EA06)			; Asteroid Warp
	%INC_SONG(Asteroid_Warp_Out_EAC3)		; Asteroid Warp Out
	%INC_SONG(Secret_Activated_EB3A)		; Secret Activated
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here