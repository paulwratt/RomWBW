;
;==================================================================================================
;   ROMWBW 2.X CONFIGURATION DEFAULTS FOR SBC
;==================================================================================================
;
; BUILD CONFIGURATION OPTIONS
;
CPUOSC		.EQU	8000000		; CPU OSC FREQ
RAMSIZE		.EQU	512		; SIZE OF RAM IN KB, MUST MATCH YOUR HARDWARE!!!
DEFSERCFG	.EQU	SER_38400_8N1	; DEFAULT SERIAL LINE CONFIG (SHOULD MATCH ABOVE)
INTMODE		.EQU	0		; 0=NONE, 1=INT MODE 1, 2=INT MODE 2
;
CRTACT		.EQU	FALSE		; CRT ACTIVATION AT STARTUP
VDAEMU		.EQU	EMUTYP_ANSI	; DEFAULT VDA EMULATION (EMUTYP_TTY, EMUTYP_ANSI, ...)
;
DSKYENABLE	.EQU	FALSE		; TRUE FOR DSKY SUPPORT (DO NOT COMBINE WITH PPIDE)
;
HTIMENABLE	.EQU	FALSE		; TRUE FOR SIMH TIMER SUPPORT
SIMRTCENABLE	.EQU	FALSE		; SIMH CLOCK DRIVER
DSRTCENABLE	.EQU	TRUE		; DS-1302 CLOCK DRIVER
DSRTCMODE	.EQU	DSRTCMODE_STD	; DSRTCMODE_STD, DSRTCMODE_MFPIC
;
ASCIENABLE	.EQU	FALSE		; TRUE FOR Z180 ASCI SUPPORT
UARTENABLE	.EQU	TRUE		; TRUE FOR UART SUPPORT (ALMOST ALWAYS WANT THIS TO BE TRUE)
UARTOSC		.EQU	1843200		; UART OSC FREQUENCY
ACIAENABLE	.EQU	FALSE		; TRUE FOR MOTOROLA 6850 ACIA SUPPORT
;
SIOENABLE	.EQU	FALSE		; TRUE FOR ZILOG SIO SUPPORT
SIOMODE		.EQU	SIOMODE_ZP	; SIOMODE_RC, SIOMODE_SMB, SIOMODE_ZP
DEFSIOACFG	.EQU	SER_9600_8N1	; DEFAULT SERIAL LINE CONFIG
DEFSIOBCFG	.EQU	SER_9600_8N1	; DEFAULT SERIAL LINE CONFIG
DEFSIODIV	.EQU	8		; 1=RC2014, SMB, 2/4/8/16/32/64/128/256 for ZP depending on jumper X5
DEFSIOCLK	.EQU	4915200		; 2457600/4915200=ZP,7372800=RC/SMB - SIO FIXED OSC FREQUENCY
SIODEBUG	.EQU	FALSE		;
;
VDUENABLE	.EQU	FALSE		; TRUE FOR VDU BOARD SUPPORT
CVDUENABLE	.EQU	FALSE		; TRUE FOR CVDU BOARD SUPPORT
NECENABLE	.EQU	FALSE		; TRUE FOR uPD7220 BOARD SUPPORT
TMSENABLE	.EQU	FALSE		; TRUE FOR N8 (TMS9918) VIDEO/KBD SUPPORT
VGAENABLE	.EQU	FALSE		; TRUE FOR VGA VIDEO/KBD SUPPORT
;
SPKENABLE	.EQU	FALSE		; TRUE FOR RTC LATCH IOBIT SOUND
AYENABLE	.EQU	FALSE		; TRUE FOR AY PSG SOUND
;
MDENABLE	.EQU	TRUE		; TRUE FOR ROM/RAM DISK SUPPORT (ALMOST ALWAYS WANT THIS ENABLED)
MDTRACE		.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF MDENABLE = TRUE)
;
FDENABLE	.EQU	FALSE		; TRUE FOR FLOPPY SUPPORT
FDMODE		.EQU	FDMODE_DIO3	; FDMODE_DIO, FDMODE_ZETA, FDMODE_DIDE, FDMODE_N8, FDMODE_DIO3
FDTRACE		.EQU	1		; 0=SILENT, 1=FATAL ERRORS, 2=ALL ERRORS, 3=EVERYTHING (ONLY RELEVANT IF FDENABLE = TRUE)
FDMEDIA		.EQU	FDM144		; FDM720, FDM144, FDM360, FDM120 (ONLY RELEVANT IF FDENABLE = TRUE)
FDMEDIAALT	.EQU	FDM720		; ALTERNATE MEDIA TO TRY, SAME CHOICES AS ABOVE (ONLY RELEVANT IF FDMAUTO = TRUE)
FDMAUTO		.EQU	TRUE		; SELECT BETWEEN MEDIA OPTS ABOVE AUTOMATICALLY
;
RFENABLE	.EQU	FALSE		; TRUE FOR RAM FLOPPY SUPPORT
RFCNT		.EQU	1		; NUMBER OF RAM FLOPPY UNITS (MAX IS 2)
;
IDEENABLE	.EQU	FALSE		; TRUE FOR IDE SUPPORT
IDEMODE		.EQU	IDEMODE_DIO	; IDEMODE_DIO, IDEMODE_DIDE
IDETRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
IDE8BIT		.EQU	FALSE		; USE IDE 8BIT TRANSFERS (PROBABLY ONLY WORKS FOR CF CARDS!)
;
PPIDEENABLE	.EQU	FALSE		; TRUE FOR PPIDE SUPPORT (DO NOT COMBINE WITH DSKYENABLE)
PPIDEMODE	.EQU	PPIDEMODE_SBC	; PPIDEMODE_SBC, PPPIDEMODE_DIO3, PPIDEMODE_MFP, PPIDEMODE_N8, PPIDEMODE_RC
PPIDETRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPIDEENABLE = TRUE)
PPIDE8BIT	.EQU	FALSE		; USE IDE 8BIT TRANSFERS (PROBABLY ONLY WORKS FOR CF CARDS!)
;
SDENABLE	.EQU	FALSE		; TRUE FOR SD SUPPORT
SDMODE		.EQU	SDMODE_JUHA	; SDMODE_JUHA, SDMODE_CSIO, SDMODE_UART, SDMODE_PPI, SDMODE_DSD
SDTRACE		.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
SDCSIOFAST	.EQU	FALSE		; TABLE-DRIVEN BIT INVERTER
;
PRPENABLE	.EQU	FALSE		; TRUE FOR PROPIO SUPPORT
PRPSDENABLE	.EQU	TRUE		; TRUE FOR PROPIO SD SUPPORT
PRPSDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PRPSDENABLE = TRUE)
PRPCONENABLE	.EQU	TRUE		; TRUE FOR PROPIO CONSOLE SUPPORT (PS/2 KBD & VGA VIDEO)
;
PPPENABLE	.EQU	FALSE		; TRUE FOR PARPORTPROP SUPPORT
PPPSDENABLE	.EQU	TRUE		; TRUE FOR PARPORTPROP SD SUPPORT
PPPSDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPPENABLE = TRUE)
PPPCONENABLE	.EQU	TRUE		; TRUE FOR PROPIO CONSOLE SUPPORT (PS/2 KBD & VGA VIDEO)
;
HDSKENABLE	.EQU	FALSE		; TRUE FOR SIMH HDSK SUPPORT
HDSKTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF IDEENABLE = TRUE)
;
PPKTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF PPKENABLE = TRUE)
KBDTRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF KBDENABLE = TRUE)
;
TERMENABLE	.EQU	FALSE		; TERM PSEUDO DEVICE, WILL BE ENABLED IF A VDA IS ENABLED
ANSITRACE	.EQU	1		; 0=SILENT, 1=ERRORS, 2=EVERYTHING (ONLY RELEVANT IF ANSIENABLE = TRUE)
;
BOOTTYPE	.EQU	BT_MENU		; BT_MENU (WAIT FOR KEYPRESS), BT_AUTO (BOOT_DEFAULT AFTER BOOT_TIMEOUT SECS)
BOOT_TIMEOUT	.EQU	20		; APPROX TIMEOUT IN SECONDS FOR AUTOBOOT, 0 FOR IMMEDIATE
BOOT_DEFAULT	.EQU	'Z'		; SELECTION TO INVOKE AT TIMEOUT

PIOENABLE	.EQU	FALSE		; TRUE FOR ZILOG PIO SUPPORT
PIOMODE		.EQU	PIOMODE_ZP	; PIOMODE_ZP=ECB-ZILOG PERIPHERALS BOARD PIOMODE_4P=ECB-4PIO
