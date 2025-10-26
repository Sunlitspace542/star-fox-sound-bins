if not(defined("MACROS_H"))
	norom
	org $0
	
	!MACROS_H = $01

	macro SMPL_PTR(start_addr, loop_offs)
		dw <start_addr>, <start_addr>+<loop_offs>
	endmacro

	macro NULL_PTR()
		dw $FFFF, $FFFF
	endmacro

	macro INC_SMPL(smpl_name)
		base !BASE_ADDR
		<smpl_name>:
			incbin <smpl_name>.brr
		!BASE_ADDR #= !BASE_ADDR+filesize("<smpl_name>.brr")
		base off
	endmacro

	macro INC_SONG(song_name)
		base !BASE_ADDR
		<song_name>:
			incbin <song_name>.bin
		!BASE_ADDR #= !BASE_ADDR+filesize("<song_name>.bin")
		base off
	endmacro
	
	macro EXT_LABEL(lbl, addr)
		base <addr>
		<lbl>:
		base off
	endmacro
endif