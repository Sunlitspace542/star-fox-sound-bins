# Star Fox Sound Binary Disassemblies
This repository contains disassemblies of all sound binaries (SBNs) used in Star Fox, except for the sound driver (SGSOUND0).  
For a disassembly of SGSOUND0, see [Phonymike's disassembly](https://github.com/phonymike/starfox_spc_driver).  

Thanks to MrL314 for his BIN splitter script and Phonymike for figuring out what was in each BIN ages ago.
## Assembly
Either run ``build.bat``, or run ``make`` on the command line.  
You can edit the makefile to specify which BINs to build, rather than all of them by changing ``$(BUILD_FILES)`` in the ``BUILD ?=`` option to the names of the BINs you wish to assemble.  
Assembled output will appear in the ``build`` directory.  

## SBN contents

| SBN      | Contents                                                        |
| -------- | --------------------------------------------------------------- |
| GSGSNDA  | Main Theme (DE)                                                 |
| PSGBGMM  | Title Demonstration (PAL)                                       |
| PSGSND2  | Orchestra instruments, Map BGMs, Fanfare, Player down (PAL)     |
| PSGSND5  | SCRAMBLE (PAL)                                                  |
| PSGSNDA  | Main Theme (PAL)                                                |
| SGBGM1   | Boss Corneria                                                   |
| SGBGM2   | Boss Fortuna                                                    |
| SGBGM3   | Boss Macbeth                                                    |
| SGBGM4   | Boss Titania                                                    |
| SGBGM5   | Boss Meteor                                                     |
| SGBGM6   | Boss Space Armada, Entering Dangerous Territory                 |
| SGBGM7   | Boss Asteroid                                                   |
| SGBGM8   | Boss Venom Base 2 (short/long)                                  |
| SGBGM9   | Boss Venom Base 1, Boss Venom Base 1 Extended                   |
| SGBGM10  | Boss Andross, Entering Dangerous Territory, Last Boss Clear     |
| SGBGM11  | Game Over                                                       |
| SGBGMA   | Corneria                                                        |
| SGBGMB   | Meteor                                                          |
| SGBGMC   | Titania                                                         |
| SGBGMD   | Fortuna                                                         |
| SGBGME   | Macbeth                                                         |
| SGBGMF   | Asteroid/Venom Orbital, Warp, Secret Activated                  |
| SGBGMG   | Coming Out of Warp Speed, Space Armada                          |
| SGBGMH   | Venom Base 2                                                    |
| SGBGMI   | Sector X/Z                                                      |
| SGBGMJ   | Sector Y                                                        |
| SGBGMK   | Venom Base 1/3                                                  |
| SGBGML   | Black Hole                                                      |
| SGBGMM   | Title Demonstration                                             |
| SGBGMN   | Controls                                                        |
| SGBGMO   | Training                                                        |
| SGBGMP   | Out of This Dimension, OOTD Clear, Slot Machine                 |
| SGSOUND1 | Sound effect samples, Sound effect music patches                |
| SGSOUND2 | Orchestra instruments, Map BGMs, Fanfare orch, Player down orch |
| SGSOUND3 | Band instruments, Fanfare, Player down band                     |
| SGSOUND4 | Sound effect samples: Splash, Helicopter                        |
| SGSOUND5 | SCRAMBLE                                                        |
| SGSOUND6 | Voice sample: “Good Luck!”                                      |
| SGSOUND7 | Title screen instruments, Title screen BGM                      |
| SGSOUND8 | Game clear demonstration, Ending voice samples                  |
| SGSOUND9 | Continue BGM, “Let’s Go!” voice sample                          |
| SGSOUNDA | Main Theme                                                      |
