# List of sound files to build
BUILD_FILES := \
    GSGSNDA \
    PSGBGMM \
    PSGSND2 \
    PSGSND5 \
    PSGSNDA \
    SGBGM1 \
    SGBGM2 \
    SGBGM3 \
    SGBGM4 \
    SGBGM5 \
    SGBGM6 \
    SGBGM7 \
    SGBGM8 \
    SGBGM9 \
    SGBGM10 \
    SGBGM11 \
    SGBGMA \
    SGBGMB \
    SGBGMC \
    SGBGMD \
    SGBGME \
    SGBGMF \
    SGBGMG \
    SGBGMH \
    SGBGMI \
    SGBGMJ \
    SGBGMK \
    SGBGML \
    SGBGMM \
    SGBGMN \
    SGBGMO \
    SGBGMP \
    SGSOUND1 \
    SGSOUND2 \
    SGSOUND3 \
    SGSOUND4 \
    SGSOUND5 \
    SGSOUND6 \
    SGSOUND7 \
    SGSOUND8 \
    SGSOUND9 \
    SGSOUNDA

# Change $(BUILD_FILES) to the name(s) of the BIN(s) you want to build, if not all of them.
BUILD ?= $(BUILD_FILES)

# Output BIN files
BIN_FILES := $(addsuffix .BIN, $(BUILD))

# Default target
all: setup $(BIN_FILES)

setup:
	@if not exist .\build\ mkdir build

# Rule to build each BIN file
%.BIN:
	@echo Assembling $@
	@cd $* && ..\asar.exe --no-title-check $*.asm ..\build\$@
	@echo Assembled $@

# Clean target
clean:
	del /Q build\
