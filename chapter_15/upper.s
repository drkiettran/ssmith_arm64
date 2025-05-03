	.arch armv8-a
	.file	"upper.c"
// GNU C17 (Debian 12.2.0-14) version 12.2.0 (aarch64-linux-gnu)
//	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

// warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -g -O3 -fasynchronous-unwind-tables
	.text
.Ltext0:
	.file 0 "/home/pi/dev/assembly/ssmith_arm64/chapter_15" "upper.c"
	.align	2
	.p2align 4,,11
	.global	mytoupper
	.type	mytoupper, %function
mytoupper:
.LVL0:
.LFB11:
	.file 1 "upper.c"
	.loc 1 4 1 view -0
	.cfi_startproc
	.loc 1 5 2 view .LVU1
	.loc 1 6 2 view .LVU2
// upper.c:4: {
	.loc 1 4 1 is_stmt 0 view .LVU3
	mov	x4, x1	// outstr, outstr
.LVL1:
.L5:
	.loc 1 8 2 is_stmt 1 view .LVU4
	.loc 1 10 3 view .LVU5
	.loc 1 13 4 view .LVU6
// upper.c:10: 		cur = *instr;
	.loc 1 10 7 is_stmt 0 view .LVU7
	ldrb	w2, [x0]	// cur, MEM[(char *)instr_19]
.LVL2:
	.loc 1 11 3 is_stmt 1 view .LVU8
	.loc 1 15 3 view .LVU9
	.loc 1 15 3 view .LVU10
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 20 is_stmt 0 view .LVU11
	sub	w3, w2, #97	// tmp100, cur,
// upper.c:13: 			cur = cur - ('a'-'A');
	.loc 1 13 8 view .LVU12
	sub	w5, w2, #32	// tmp102, cur,
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 6 view .LVU13
	and	w3, w3, 255	// tmp101, tmp100
	cmp	w3, 25	// tmp101,
	bhi	.L2		//,
.LVL3:
.L7:
// upper.c:16: 		instr++;	
	.loc 1 16 8 view .LVU14
	add	x0, x0, 1	// instr, instr,
.LVL4:
// upper.c:15: 		*outstr++ = cur;
	.loc 1 15 13 view .LVU15
	strb	w5, [x4], 1	// tmp102, MEM[(char *)outstr_28 + -1B]
	.loc 1 16 3 is_stmt 1 view .LVU16
.LVL5:
	.loc 1 17 15 view .LVU17
	.loc 1 8 2 view .LVU18
	.loc 1 10 3 view .LVU19
	.loc 1 13 4 view .LVU20
// upper.c:10: 		cur = *instr;
	.loc 1 10 7 is_stmt 0 view .LVU21
	ldrb	w2, [x0]	// cur, MEM[(char *)instr_19]
.LVL6:
	.loc 1 11 3 is_stmt 1 view .LVU22
	.loc 1 15 3 view .LVU23
	.loc 1 15 3 view .LVU24
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 20 is_stmt 0 view .LVU25
	sub	w3, w2, #97	// tmp100, cur,
// upper.c:13: 			cur = cur - ('a'-'A');
	.loc 1 13 8 view .LVU26
	sub	w5, w2, #32	// tmp102, cur,
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 6 view .LVU27
	and	w3, w3, 255	// tmp101, tmp100
	cmp	w3, 25	// tmp101,
	bls	.L7		//,
.LVL7:
.L2:
// upper.c:15: 		*outstr++ = cur;
	.loc 1 15 13 view .LVU28
	strb	w2, [x4], 1	// cur, MEM[(char *)outstr_25 + -1B]
	.loc 1 16 3 is_stmt 1 view .LVU29
.LVL8:
	.loc 1 17 15 view .LVU30
// upper.c:16: 		instr++;	
	.loc 1 16 8 is_stmt 0 view .LVU31
	add	x0, x0, 1	// instr, instr,
.LVL9:
// upper.c:17: 	} while (cur != '\0');
	.loc 1 17 15 view .LVU32
	cbnz	w2, .L5	// cur,
	.loc 1 18 2 is_stmt 1 view .LVU33
// upper.c:19: }
	.loc 1 19 1 is_stmt 0 view .LVU34
	sub	w0, w4, w1	//, outstr, outstr
.LVL10:
	.loc 1 19 1 view .LVU35
	ret	
	.cfi_endproc
.LFE11:
	.size	mytoupper, .-mytoupper
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Input: %s\nOutput: %s\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB12:
	.loc 1 27 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 28 2 view .LVU37
// upper.c:27: {
	.loc 1 27 1 is_stmt 0 view .LVU38
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
// upper.c:28: 	mytoupper(tstStr, outStr);
	.loc 1 28 2 view .LVU39
	adrp	x1, .LANCHOR0	// tmp99,
	adrp	x2, .LANCHOR1	// tmp114,
// upper.c:27: {
	.loc 1 27 1 view .LVU40
	mov	x29, sp	//,
// upper.c:28: 	mytoupper(tstStr, outStr);
	.loc 1 28 2 view .LVU41
	ldr	x1, [x1, #:lo12:.LANCHOR0]	// tstStr.1_1, tstStr
.LVL11:
.LBB4:
.LBI4:
	.loc 1 3 5 is_stmt 1 view .LVU42
.LBB5:
	.loc 1 5 2 view .LVU43
	.loc 1 6 2 view .LVU44
// upper.c:15: 		*outstr++ = cur;
	.loc 1 15 13 is_stmt 0 view .LVU45
	add	x2, x2, :lo12:.LANCHOR1	// tmp115, tmp114,
.LBE5:
.LBE4:
// upper.c:28: 	mytoupper(tstStr, outStr);
	.loc 1 28 2 view .LVU46
	mov	x0, 0	// ivtmp.20,
.LVL12:
.L12:
.LBB7:
.LBB6:
	.loc 1 8 2 is_stmt 1 view .LVU47
	.loc 1 10 3 view .LVU48
	.loc 1 13 4 view .LVU49
// upper.c:10: 		cur = *instr;
	.loc 1 10 7 is_stmt 0 view .LVU50
	ldrb	w3, [x1, x0]	// cur, MEM[(char *)tstStr.1_1 + ivtmp.20_16 * 1]
.LVL13:
	.loc 1 11 3 is_stmt 1 view .LVU51
	.loc 1 15 3 view .LVU52
	.loc 1 15 3 view .LVU53
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 20 is_stmt 0 view .LVU54
	sub	w4, w3, #97	// tmp100, cur,
// upper.c:13: 			cur = cur - ('a'-'A');
	.loc 1 13 8 view .LVU55
	sub	w5, w3, #32	// tmp104, cur,
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 6 view .LVU56
	and	w4, w4, 255	// tmp101, tmp100
	cmp	w4, 25	// tmp101,
	bhi	.L9		//,
.LVL14:
.L14:
// upper.c:15: 		*outstr++ = cur;
	.loc 1 15 13 view .LVU57
	strb	w5, [x0, x2]	// tmp104, MEM[(char *)&outStr + ivtmp.20_16 * 1]
	.loc 1 16 3 is_stmt 1 view .LVU58
.LVL15:
	.loc 1 17 15 view .LVU59
	add	x0, x0, 1	// ivtmp.20, ivtmp.20,
.LVL16:
	.loc 1 8 2 view .LVU60
	.loc 1 10 3 view .LVU61
	.loc 1 13 4 view .LVU62
// upper.c:10: 		cur = *instr;
	.loc 1 10 7 is_stmt 0 view .LVU63
	ldrb	w3, [x1, x0]	// cur, MEM[(char *)tstStr.1_1 + ivtmp.20_16 * 1]
.LVL17:
	.loc 1 11 3 is_stmt 1 view .LVU64
	.loc 1 15 3 view .LVU65
	.loc 1 15 3 view .LVU66
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 20 is_stmt 0 view .LVU67
	sub	w4, w3, #97	// tmp100, cur,
// upper.c:13: 			cur = cur - ('a'-'A');
	.loc 1 13 8 view .LVU68
	sub	w5, w3, #32	// tmp104, cur,
// upper.c:11: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 11 6 view .LVU69
	and	w4, w4, 255	// tmp101, tmp100
	cmp	w4, 25	// tmp101,
	bls	.L14		//,
.LVL18:
.L9:
// upper.c:15: 		*outstr++ = cur;
	.loc 1 15 13 view .LVU70
	strb	w3, [x0, x2]	// cur, MEM[(char *)&outStr + ivtmp.20_16 * 1]
	.loc 1 16 3 is_stmt 1 view .LVU71
.LVL19:
	.loc 1 17 15 view .LVU72
	add	x0, x0, 1	// ivtmp.20, ivtmp.20,
.LVL20:
	.loc 1 17 15 is_stmt 0 view .LVU73
	cbnz	w3, .L12	// cur,
	.loc 1 18 2 is_stmt 1 view .LVU74
.LVL21:
	.loc 1 18 2 is_stmt 0 view .LVU75
.LBE6:
.LBE7:
	.loc 1 29 2 is_stmt 1 view .LVU76
	adrp	x0, .LC0	// tmp112,
	add	x0, x0, :lo12:.LC0	//, tmp112,
	bl	printf		//
.LVL22:
	.loc 1 31 2 view .LVU77
// upper.c:32: }
	.loc 1 32 1 is_stmt 0 view .LVU78
	mov	w0, 0	//,
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.global	outStr
	.global	tstStr
	.section	.rodata.str1.8
	.align	3
.LC1:
	.string	"This is a test!"
	.bss
	.align	4
	.set	.LANCHOR1,. + 0
	.type	outStr, %object
	.size	outStr, 250
outStr:
	.zero	250
	.section	.data.rel.local,"aw"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	tstStr, %object
	.size	tstStr, 8
tstStr:
	.xword	.LC1
	.text
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f3
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL8
	.8byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	0x67
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0xa
	.4byte	0x67
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x17
	.byte	0x7
	.4byte	0x62
	.uleb128 0x9
	.byte	0x3
	.8byte	tstStr
	.uleb128 0xb
	.4byte	0x67
	.4byte	0x98
	.uleb128 0xc
	.4byte	0x2a
	.byte	0xf9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x18
	.byte	0x6
	.4byte	0x88
	.uleb128 0x9
	.byte	0x3
	.8byte	outStr
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x164
	.byte	0xc
	.4byte	0x31
	.4byte	0xc5
	.uleb128 0xe
	.4byte	0xc5
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x6e
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x31
	.8byte	.LFB12
	.8byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16c
	.uleb128 0x11
	.4byte	0x16c
	.8byte	.LBI4
	.byte	.LVU42
	.4byte	.LLRL4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.4byte	0x143
	.uleb128 0x2
	.4byte	0x187
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2
	.4byte	0x17d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.4byte	.LLRL4
	.uleb128 0x3
	.4byte	0x191
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x13
	.4byte	0x19d
	.uleb128 0xa
	.byte	0x3
	.8byte	outStr
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x14
	.8byte	.LVL22
	.4byte	0xad
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.8byte	.LANCHOR1
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x31
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x15
	.4byte	0x62
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x22
	.4byte	0x62
	.uleb128 0x16
	.string	"cur"
	.byte	0x1
	.byte	0x5
	.byte	0x7
	.4byte	0x67
	.uleb128 0x17
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6
	.byte	0x8
	.4byte	0x62
	.byte	0
	.uleb128 0x18
	.4byte	0x16c
	.8byte	.LFB11
	.8byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	0x17d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.4byte	0x187
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	0x191
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3
	.4byte	0x19d
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x8
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS5:
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU70
.LLST5:
	.byte	0x6
	.8byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0xa
	.byte	0x3
	.8byte	outStr
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0xd
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.8byte	outStr
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL11
	.uleb128 .LVL14-.LVL11
	.uleb128 0xd
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.8byte	outStr+1
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL11
	.uleb128 .LVL17-.LVL11
	.uleb128 0xd
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.8byte	outStr
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL11
	.uleb128 .LVL18-.LVL11
	.uleb128 0xd
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.8byte	outStr+1
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU57
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU70
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU75
.LLST6:
	.byte	0x6
	.8byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL14-.LVL11
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL11
	.uleb128 .LVL16-.LVL11
	.uleb128 0x8
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL11
	.uleb128 .LVL18-.LVL11
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL11
	.uleb128 .LVL20-.LVL11
	.uleb128 0x8
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL11
	.uleb128 .LVL21-.LVL11
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU75
.LLST7:
	.byte	0x6
	.8byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL13-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL13-.LVL13
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LVL21-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU35
.LLST0:
	.byte	0x6
	.8byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU14
	.uleb128 .LVU18
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU28
.LLST1:
	.byte	0x6
	.8byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU18
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST2:
	.byte	0x6
	.8byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LFE11-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 0
.LLST3:
	.byte	0x8
	.8byte	.LVL0
	.uleb128 .LFE11-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	.LFB12
	.8byte	.LFE12-.LFB12
	.8byte	0
	.8byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x8
	.byte	0
	.4byte	0
.LLRL4:
	.byte	0x5
	.8byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB7-.LBB4
	.uleb128 .LBE7-.LBB4
	.byte	0
.LLRL8:
	.byte	0x7
	.8byte	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.8byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"unsigned int"
.LASF13:
	.string	"mytoupper"
.LASF10:
	.string	"tstStr"
.LASF11:
	.string	"outStr"
.LASF17:
	.string	"GNU C17 12.2.0 -mlittle-endian -mabi=lp64 -g -O3 -fasynchronous-unwind-tables"
.LASF9:
	.string	"char"
.LASF16:
	.string	"orig_outstr"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"main"
.LASF8:
	.string	"long int"
.LASF2:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF12:
	.string	"printf"
.LASF14:
	.string	"instr"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"outstr"
.LASF6:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"upper.c"
.LASF1:
	.string	"/home/pi/dev/assembly/ssmith_arm64/chapter_15"
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
