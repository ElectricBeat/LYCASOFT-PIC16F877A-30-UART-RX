opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Lcd_Intialization
	FNCALL	_main,_Uart_Intialization
	FNCALL	_main,_Lcd_Command
	FNCALL	_main,_Lcd_String
	FNCALL	_main,_RX
	FNCALL	_main,_Lcd_Data
	FNCALL	_Lcd_Intialization,_Lcd_Command
	FNCALL	_Lcd_String,_Lcd_Data
	FNROOT	_main
	global	_PORTD
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RCIF
_RCIF	set	101
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_SPBRG
_SPBRG	set	153
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	89	;'Y'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"UART RX.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd_Command
?_Lcd_Command:	; 0 bytes @ 0x0
	global	??_Lcd_Command
??_Lcd_Command:	; 0 bytes @ 0x0
	global	?_Lcd_Data
?_Lcd_Data:	; 0 bytes @ 0x0
	global	??_Lcd_Data
??_Lcd_Data:	; 0 bytes @ 0x0
	global	?_Lcd_String
?_Lcd_String:	; 0 bytes @ 0x0
	global	?_Lcd_Intialization
?_Lcd_Intialization:	; 0 bytes @ 0x0
	global	?_Uart_Intialization
?_Uart_Intialization:	; 0 bytes @ 0x0
	global	??_Uart_Intialization
??_Uart_Intialization:	; 0 bytes @ 0x0
	global	??_RX
??_RX:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_RX
?_RX:	; 1 bytes @ 0x0
	ds	2
	global	Lcd_Command@cmd
Lcd_Command@cmd:	; 1 bytes @ 0x2
	global	Lcd_Data@Data
Lcd_Data@Data:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd_String
??_Lcd_String:	; 0 bytes @ 0x3
	global	??_Lcd_Intialization
??_Lcd_Intialization:	; 0 bytes @ 0x3
	ds	1
	global	Lcd_String@Str
Lcd_String@Str:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	1
	global	main@Ch_1243
main@Ch_1243:	; 1 bytes @ 0x6
	ds	1
;;Data sizes: Strings 10, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd_String@Str	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd_String
;;   _Lcd_Intialization->_Lcd_Command
;;   _Lcd_String->_Lcd_Data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     165
;;                                              5 COMMON     2     2      0
;;                  _Lcd_Intialization
;;                 _Uart_Intialization
;;                        _Lcd_Command
;;                         _Lcd_String
;;                                 _RX
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Intialization                                    0     0      0      30
;;                        _Lcd_Command
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_String                                           2     2      0      60
;;                                              3 COMMON     2     2      0
;;                           _Lcd_Data
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Data                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _Lcd_Command                                          3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _RX                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Uart_Intialization                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd_Intialization
;;     _Lcd_Command
;;   _Uart_Intialization
;;   _Lcd_Command
;;   _Lcd_String
;;     _Lcd_Data
;;   _RX
;;   _Lcd_Data
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 74 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Ch              1    6[COMMON] unsigned char 
;;  Ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Intialization
;;		_Uart_Intialization
;;		_Lcd_Command
;;		_Lcd_String
;;		_RX
;;		_Lcd_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	74
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l2679:	
;UART RX.c: 75: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	76
;UART RX.c: 76: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	80
	
l2681:	
;UART RX.c: 78: char Ch;
;UART RX.c: 80: Lcd_Intialization();
	fcall	_Lcd_Intialization
	line	81
	
l2683:	
;UART RX.c: 81: Uart_Intialization();
	fcall	_Uart_Intialization
	line	83
	
l2685:	
;UART RX.c: 83: Lcd_Command(0x80);
	movlw	(080h)
	fcall	_Lcd_Command
	line	84
	
l2687:	
;UART RX.c: 84: Lcd_String("LYCA SOFT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd_String
	goto	l2689
	line	86
;UART RX.c: 86: while(1)
	
l711:	
	line	88
	
l2689:	
;UART RX.c: 87: {
;UART RX.c: 88: char Ch = RX();
	fcall	_RX
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@Ch_1243)
	line	90
	
l2691:	
;UART RX.c: 90: Lcd_Command(0xC0);
	movlw	(0C0h)
	fcall	_Lcd_Command
	line	91
	
l2693:	
;UART RX.c: 91: Lcd_Data(Ch);
	movf	(main@Ch_1243),w
	fcall	_Lcd_Data
	goto	l2689
	line	92
	
l712:	
	line	86
	goto	l2689
	
l713:	
	line	93
	
l714:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd_Intialization
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

;; *************** function _Lcd_Intialization *****************
;; Defined at:
;;		line 51 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text125
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	51
	global	__size_of_Lcd_Intialization
	__size_of_Lcd_Intialization	equ	__end_of_Lcd_Intialization-_Lcd_Intialization
	
_Lcd_Intialization:	
	opt	stack 6
; Regs used in _Lcd_Intialization: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l2677:	
;UART RX.c: 52: Lcd_Command(0x02);
	movlw	(02h)
	fcall	_Lcd_Command
	line	53
;UART RX.c: 53: Lcd_Command(0x28);
	movlw	(028h)
	fcall	_Lcd_Command
	line	54
;UART RX.c: 54: Lcd_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd_Command
	line	55
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Intialization
	__end_of_Lcd_Intialization:
;; =============== function _Lcd_Intialization ends ============

	signat	_Lcd_Intialization,88
	global	_Lcd_String
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:

;; *************** function _Lcd_String *****************
;; Defined at:
;;		line 43 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;  Str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  Str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_Data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text126
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	43
	global	__size_of_Lcd_String
	__size_of_Lcd_String	equ	__end_of_Lcd_String-_Lcd_String
	
_Lcd_String:	
	opt	stack 6
; Regs used in _Lcd_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd_String@Str stored from wreg
	movwf	(Lcd_String@Str)
	line	44
	
l2669:	
;UART RX.c: 44: while(*Str != 0)
	goto	l2675
	
l694:	
	line	46
	
l2671:	
;UART RX.c: 45: {
;UART RX.c: 46: Lcd_Data(*Str++);
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd_Data
	
l2673:	
	movlw	(01h)
	movwf	(??_Lcd_String+0)+0
	movf	(??_Lcd_String+0)+0,w
	addwf	(Lcd_String@Str),f
	goto	l2675
	line	47
	
l693:	
	line	44
	
l2675:	
	movf	(Lcd_String@Str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2671
u2250:
	goto	l696
	
l695:	
	line	48
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_String
	__end_of_Lcd_String:
;; =============== function _Lcd_String ends ============

	signat	_Lcd_String,4216
	global	_Lcd_Data
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 28 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_String
;;		_main
;; This function uses a non-reentrant model
;;
psect	text127
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	28
	global	__size_of_Lcd_Data
	__size_of_Lcd_Data	equ	__end_of_Lcd_Data-_Lcd_Data
	
_Lcd_Data:	
	opt	stack 7
; Regs used in _Lcd_Data: [wreg+status,2+status,0]
;Lcd_Data@Data stored from wreg
	movwf	(Lcd_Data@Data)
	line	29
	
l2649:	
;UART RX.c: 29: PORTD = (Data & 0XF0);
	movf	(Lcd_Data@Data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l2651:	
;UART RX.c: 30: RD2 = 1;
	bsf	(66/8),(66)&7
	line	31
	
l2653:	
;UART RX.c: 31: RD3 = 1;
	bsf	(67/8),(67)&7
	line	32
	
l2655:	
;UART RX.c: 32: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2267:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2267
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	33
	
l2657:	
;UART RX.c: 33: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l2659:	
;UART RX.c: 35: PORTD = ((Data<<4) & 0xF0);
	movf	(Lcd_Data@Data),w
	movwf	(??_Lcd_Data+0)+0
	movlw	(04h)-1
u2245:
	clrc
	rlf	(??_Lcd_Data+0)+0,f
	addlw	-1
	skipz
	goto	u2245
	clrc
	rlf	(??_Lcd_Data+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	36
	
l2661:	
;UART RX.c: 36: RD2 = 1;
	bsf	(66/8),(66)&7
	line	37
	
l2663:	
;UART RX.c: 37: RD3 = 1;
	bsf	(67/8),(67)&7
	line	38
	
l2665:	
;UART RX.c: 38: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Data+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Data+0)+0),f
u2277:
	decfsz	((??_Lcd_Data+0)+0),f
	goto	u2277
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	39
	
l2667:	
;UART RX.c: 39: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	40
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
;; =============== function _Lcd_Data ends ============

	signat	_Lcd_Data,4216
	global	_Lcd_Command
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 13 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     const unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] const unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Intialization
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	13
	global	__size_of_Lcd_Command
	__size_of_Lcd_Command	equ	__end_of_Lcd_Command-_Lcd_Command
	
_Lcd_Command:	
	opt	stack 7
; Regs used in _Lcd_Command: [wreg+status,2+status,0]
;Lcd_Command@cmd stored from wreg
	movwf	(Lcd_Command@cmd)
	line	14
	
l2629:	
;UART RX.c: 14: PORTD = (cmd & 0XF0);
	movf	(Lcd_Command@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	15
	
l2631:	
;UART RX.c: 15: RD2 = 0;
	bcf	(66/8),(66)&7
	line	16
	
l2633:	
;UART RX.c: 16: RD3 = 1;
	bsf	(67/8),(67)&7
	line	17
	
l2635:	
;UART RX.c: 17: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2287:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2287
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	18
	
l2637:	
;UART RX.c: 18: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	20
	
l2639:	
;UART RX.c: 20: PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_Command@cmd),w
	movwf	(??_Lcd_Command+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_Lcd_Command+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_Lcd_Command+0)+0,w
	andlw	0F0h
	movwf	(8)	;volatile
	line	21
	
l2641:	
;UART RX.c: 21: RD2 = 0;
	bcf	(66/8),(66)&7
	line	22
	
l2643:	
;UART RX.c: 22: RD3 = 1;
	bsf	(67/8),(67)&7
	line	23
	
l2645:	
;UART RX.c: 23: _delay((unsigned long)((5)*(20e6/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd_Command+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Command+0)+0),f
u2297:
	decfsz	((??_Lcd_Command+0)+0),f
	goto	u2297
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	24
	
l2647:	
;UART RX.c: 24: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	25
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
;; =============== function _Lcd_Command ends ============

	signat	_Lcd_Command,4216
	global	_RX
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _RX *****************
;; Defined at:
;;		line 68 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	68
	global	__size_of_RX
	__size_of_RX	equ	__end_of_RX-_RX
	
_RX:	
	opt	stack 7
; Regs used in _RX: [wreg]
	line	69
	
l1765:	
;UART RX.c: 69: while(!RCIF);
	goto	l705
	
l706:	
	
l705:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u11
	goto	u10
u11:
	goto	l705
u10:
	goto	l1767
	
l707:	
	line	70
	
l1767:	
;UART RX.c: 70: return RCREG;
	movf	(26),w	;volatile
	goto	l708
	
l1769:	
	line	71
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_RX
	__end_of_RX:
;; =============== function _RX ends ============

	signat	_RX,89
	global	_Uart_Intialization
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _Uart_Intialization *****************
;; Defined at:
;;		line 58 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text130
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\29-UART RX\CODE\UART RX.c"
	line	58
	global	__size_of_Uart_Intialization
	__size_of_Uart_Intialization	equ	__end_of_Uart_Intialization-_Uart_Intialization
	
_Uart_Intialization:	
	opt	stack 7
; Regs used in _Uart_Intialization: [wreg]
	line	59
	
l1761:	
;UART RX.c: 59: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	60
;UART RX.c: 60: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	61
	
l1763:	
;UART RX.c: 61: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	62
;UART RX.c: 62: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	63
;UART RX.c: 63: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	65
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_Uart_Intialization
	__end_of_Uart_Intialization:
;; =============== function _Uart_Intialization ends ============

	signat	_Uart_Intialization,88
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
