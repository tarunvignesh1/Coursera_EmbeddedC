
c1m3.out:     file format elf32-littlearm


Disassembly of section .text:

00000000 <deregister_tm_clones>:
   0:	4803      	ldr	r0, [pc, #12]	; (10 <deregister_tm_clones+0x10>)
   2:	4b04      	ldr	r3, [pc, #16]	; (14 <deregister_tm_clones+0x14>)
   4:	4283      	cmp	r3, r0
   6:	d002      	beq.n	e <deregister_tm_clones+0xe>
   8:	4b03      	ldr	r3, [pc, #12]	; (18 <deregister_tm_clones+0x18>)
   a:	b103      	cbz	r3, e <deregister_tm_clones+0xe>
   c:	4718      	bx	r3
   e:	4770      	bx	lr
  10:	20000870 	.word	0x20000870
  14:	20000870 	.word	0x20000870
  18:	00000000 	.word	0x00000000

0000001c <register_tm_clones>:
  1c:	4805      	ldr	r0, [pc, #20]	; (34 <register_tm_clones+0x18>)
  1e:	4906      	ldr	r1, [pc, #24]	; (38 <register_tm_clones+0x1c>)
  20:	1a0b      	subs	r3, r1, r0
  22:	0fd9      	lsrs	r1, r3, #31
  24:	eb01 01a3 	add.w	r1, r1, r3, asr #2
  28:	1049      	asrs	r1, r1, #1
  2a:	d002      	beq.n	32 <register_tm_clones+0x16>
  2c:	4b03      	ldr	r3, [pc, #12]	; (3c <register_tm_clones+0x20>)
  2e:	b103      	cbz	r3, 32 <register_tm_clones+0x16>
  30:	4718      	bx	r3
  32:	4770      	bx	lr
  34:	20000870 	.word	0x20000870
  38:	20000870 	.word	0x20000870
  3c:	00000000 	.word	0x00000000

00000040 <__do_global_dtors_aux>:
  40:	b510      	push	{r4, lr}
  42:	4c06      	ldr	r4, [pc, #24]	; (5c <__do_global_dtors_aux+0x1c>)
  44:	7823      	ldrb	r3, [r4, #0]
  46:	b943      	cbnz	r3, 5a <__do_global_dtors_aux+0x1a>
  48:	f7ff ffda 	bl	0 <deregister_tm_clones>
  4c:	4b04      	ldr	r3, [pc, #16]	; (60 <__do_global_dtors_aux+0x20>)
  4e:	b113      	cbz	r3, 56 <__do_global_dtors_aux+0x16>
  50:	4804      	ldr	r0, [pc, #16]	; (64 <__do_global_dtors_aux+0x24>)
  52:	f3af 8000 	nop.w
  56:	2301      	movs	r3, #1
  58:	7023      	strb	r3, [r4, #0]
  5a:	bd10      	pop	{r4, pc}
  5c:	20000870 	.word	0x20000870
  60:	00000000 	.word	0x00000000
  64:	00000dfc 	.word	0x00000dfc

00000068 <frame_dummy>:
  68:	b508      	push	{r3, lr}
  6a:	4b04      	ldr	r3, [pc, #16]	; (7c <frame_dummy+0x14>)
  6c:	b11b      	cbz	r3, 76 <frame_dummy+0xe>
  6e:	4904      	ldr	r1, [pc, #16]	; (80 <frame_dummy+0x18>)
  70:	4804      	ldr	r0, [pc, #16]	; (84 <frame_dummy+0x1c>)
  72:	f3af 8000 	nop.w
  76:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  7a:	e7cf      	b.n	1c <register_tm_clones>
  7c:	00000000 	.word	0x00000000
  80:	20000874 	.word	0x20000874
  84:	00000dfc 	.word	0x00000dfc

00000088 <_stack_init>:
  88:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
  8c:	4770      	bx	lr
  8e:	bf00      	nop

00000090 <_mainCRTStartup>:
  90:	4b15      	ldr	r3, [pc, #84]	; (e8 <_mainCRTStartup+0x58>)
  92:	2b00      	cmp	r3, #0
  94:	bf08      	it	eq
  96:	4b11      	ldreq	r3, [pc, #68]	; (dc <_mainCRTStartup+0x4c>)
  98:	469d      	mov	sp, r3
  9a:	f7ff fff5 	bl	88 <_stack_init>
  9e:	2100      	movs	r1, #0
  a0:	468b      	mov	fp, r1
  a2:	460f      	mov	r7, r1
  a4:	4811      	ldr	r0, [pc, #68]	; (ec <_mainCRTStartup+0x5c>)
  a6:	4a12      	ldr	r2, [pc, #72]	; (f0 <_mainCRTStartup+0x60>)
  a8:	1a12      	subs	r2, r2, r0
  aa:	f000 fb95 	bl	7d8 <memset>
  ae:	4b0c      	ldr	r3, [pc, #48]	; (e0 <_mainCRTStartup+0x50>)
  b0:	2b00      	cmp	r3, #0
  b2:	d000      	beq.n	b6 <_mainCRTStartup+0x26>
  b4:	4798      	blx	r3
  b6:	4b0b      	ldr	r3, [pc, #44]	; (e4 <_mainCRTStartup+0x54>)
  b8:	2b00      	cmp	r3, #0
  ba:	d000      	beq.n	be <_mainCRTStartup+0x2e>
  bc:	4798      	blx	r3
  be:	2000      	movs	r0, #0
  c0:	2100      	movs	r1, #0
  c2:	0004      	movs	r4, r0
  c4:	000d      	movs	r5, r1
  c6:	480b      	ldr	r0, [pc, #44]	; (f4 <_mainCRTStartup+0x64>)
  c8:	f000 f87c 	bl	1c4 <atexit>
  cc:	f000 f8a6 	bl	21c <__libc_init_array>
  d0:	0020      	movs	r0, r4
  d2:	0029      	movs	r1, r5
  d4:	f000 f810 	bl	f8 <main>
  d8:	f000 f87a 	bl	1d0 <exit>
  dc:	00080000 	.word	0x00080000
	...
  e8:	200008d8 	.word	0x200008d8
  ec:	20000870 	.word	0x20000870
  f0:	200008d4 	.word	0x200008d4
  f4:	000001f1 	.word	0x000001f1

000000f8 <main>:
  f8:	b590      	push	{r4, r7, lr}
  fa:	b083      	sub	sp, #12
  fc:	af00      	add	r7, sp, #0
  fe:	230c      	movs	r3, #12
 100:	603b      	str	r3, [r7, #0]
 102:	232d      	movs	r3, #45	; 0x2d
 104:	461a      	mov	r2, r3
 106:	4613      	mov	r3, r2
 108:	009b      	lsls	r3, r3, #2
 10a:	4413      	add	r3, r2
 10c:	005b      	lsls	r3, r3, #1
 10e:	4618      	mov	r0, r3
 110:	f000 f8a8 	bl	264 <malloc>
 114:	4603      	mov	r3, r0
 116:	607b      	str	r3, [r7, #4]
 118:	687b      	ldr	r3, [r7, #4]
 11a:	2b00      	cmp	r3, #0
 11c:	d102      	bne.n	124 <main+0x2c>
 11e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 122:	e00e      	b.n	142 <main+0x4a>
 124:	2400      	movs	r4, #0
 126:	e008      	b.n	13a <main+0x42>
 128:	6878      	ldr	r0, [r7, #4]
 12a:	f000 f811 	bl	150 <func>
 12e:	4603      	mov	r3, r0
 130:	4a06      	ldr	r2, [pc, #24]	; (14c <main+0x54>)
 132:	6013      	str	r3, [r2, #0]
 134:	683b      	ldr	r3, [r7, #0]
 136:	3301      	adds	r3, #1
 138:	603b      	str	r3, [r7, #0]
 13a:	232d      	movs	r3, #45	; 0x2d
 13c:	429c      	cmp	r4, r3
 13e:	dbf3      	blt.n	128 <main+0x30>
 140:	2300      	movs	r3, #0
 142:	4618      	mov	r0, r3
 144:	370c      	adds	r7, #12
 146:	46bd      	mov	sp, r7
 148:	bd90      	pop	{r4, r7, pc}
 14a:	bf00      	nop
 14c:	2000088c 	.word	0x2000088c

00000150 <func>:
 150:	b480      	push	{r7}
 152:	b085      	sub	sp, #20
 154:	af00      	add	r7, sp, #0
 156:	6078      	str	r0, [r7, #4]
 158:	2300      	movs	r3, #0
 15a:	60fb      	str	r3, [r7, #12]
 15c:	4b16      	ldr	r3, [pc, #88]	; (1b8 <func+0x68>)
 15e:	60bb      	str	r3, [r7, #8]
 160:	4b16      	ldr	r3, [pc, #88]	; (1bc <func+0x6c>)
 162:	681b      	ldr	r3, [r3, #0]
 164:	3301      	adds	r3, #1
 166:	4a15      	ldr	r2, [pc, #84]	; (1bc <func+0x6c>)
 168:	6013      	str	r3, [r2, #0]
 16a:	4b14      	ldr	r3, [pc, #80]	; (1bc <func+0x6c>)
 16c:	681b      	ldr	r3, [r3, #0]
 16e:	009b      	lsls	r3, r3, #2
 170:	4a13      	ldr	r2, [pc, #76]	; (1c0 <func+0x70>)
 172:	4413      	add	r3, r2
 174:	68fa      	ldr	r2, [r7, #12]
 176:	601a      	str	r2, [r3, #0]
 178:	2300      	movs	r3, #0
 17a:	60fb      	str	r3, [r7, #12]
 17c:	e011      	b.n	1a2 <func+0x52>
 17e:	68ba      	ldr	r2, [r7, #8]
 180:	68fb      	ldr	r3, [r7, #12]
 182:	4413      	add	r3, r2
 184:	781b      	ldrb	r3, [r3, #0]
 186:	b2db      	uxtb	r3, r3
 188:	4619      	mov	r1, r3
 18a:	4a0d      	ldr	r2, [pc, #52]	; (1c0 <func+0x70>)
 18c:	68fb      	ldr	r3, [r7, #12]
 18e:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 192:	4b0a      	ldr	r3, [pc, #40]	; (1bc <func+0x6c>)
 194:	681b      	ldr	r3, [r3, #0]
 196:	3301      	adds	r3, #1
 198:	4a08      	ldr	r2, [pc, #32]	; (1bc <func+0x6c>)
 19a:	6013      	str	r3, [r2, #0]
 19c:	68fb      	ldr	r3, [r7, #12]
 19e:	3301      	adds	r3, #1
 1a0:	60fb      	str	r3, [r7, #12]
 1a2:	68fb      	ldr	r3, [r7, #12]
 1a4:	2b05      	cmp	r3, #5
 1a6:	d9ea      	bls.n	17e <func+0x2e>
 1a8:	4b04      	ldr	r3, [pc, #16]	; (1bc <func+0x6c>)
 1aa:	681b      	ldr	r3, [r3, #0]
 1ac:	4618      	mov	r0, r3
 1ae:	3714      	adds	r7, #20
 1b0:	46bd      	mov	sp, r7
 1b2:	bc80      	pop	{r7}
 1b4:	4770      	bx	lr
 1b6:	bf00      	nop
 1b8:	00000dc4 	.word	0x00000dc4
 1bc:	20000894 	.word	0x20000894
 1c0:	20000008 	.word	0x20000008

000001c4 <atexit>:
 1c4:	2300      	movs	r3, #0
 1c6:	4601      	mov	r1, r0
 1c8:	461a      	mov	r2, r3
 1ca:	4618      	mov	r0, r3
 1cc:	f000 bb6c 	b.w	8a8 <__register_exitproc>

000001d0 <exit>:
 1d0:	b508      	push	{r3, lr}
 1d2:	2100      	movs	r1, #0
 1d4:	4604      	mov	r4, r0
 1d6:	f000 fb9b 	bl	910 <__call_exitprocs>
 1da:	4b04      	ldr	r3, [pc, #16]	; (1ec <exit+0x1c>)
 1dc:	6818      	ldr	r0, [r3, #0]
 1de:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 1e0:	b103      	cbz	r3, 1e4 <exit+0x14>
 1e2:	4798      	blx	r3
 1e4:	4620      	mov	r0, r4
 1e6:	f000 fdbb 	bl	d60 <_exit>
 1ea:	bf00      	nop
 1ec:	00000dd4 	.word	0x00000dd4

000001f0 <__libc_fini_array>:
 1f0:	b538      	push	{r3, r4, r5, lr}
 1f2:	4b08      	ldr	r3, [pc, #32]	; (214 <__libc_fini_array+0x24>)
 1f4:	4d08      	ldr	r5, [pc, #32]	; (218 <__libc_fini_array+0x28>)
 1f6:	1b5b      	subs	r3, r3, r5
 1f8:	109c      	asrs	r4, r3, #2
 1fa:	d007      	beq.n	20c <__libc_fini_array+0x1c>
 1fc:	3b04      	subs	r3, #4
 1fe:	441d      	add	r5, r3
 200:	3c01      	subs	r4, #1
 202:	f855 3904 	ldr.w	r3, [r5], #-4
 206:	4798      	blx	r3
 208:	2c00      	cmp	r4, #0
 20a:	d1f9      	bne.n	200 <__libc_fini_array+0x10>
 20c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 210:	f000 bdbc 	b.w	d8c <_fini>
	...

0000021c <__libc_init_array>:
 21c:	b570      	push	{r4, r5, r6, lr}
 21e:	4e0d      	ldr	r6, [pc, #52]	; (254 <__libc_init_array+0x38>)
 220:	4d0d      	ldr	r5, [pc, #52]	; (258 <__libc_init_array+0x3c>)
 222:	1b76      	subs	r6, r6, r5
 224:	10b6      	asrs	r6, r6, #2
 226:	d006      	beq.n	236 <__libc_init_array+0x1a>
 228:	2400      	movs	r4, #0
 22a:	f855 3b04 	ldr.w	r3, [r5], #4
 22e:	3401      	adds	r4, #1
 230:	4798      	blx	r3
 232:	42a6      	cmp	r6, r4
 234:	d1f9      	bne.n	22a <__libc_init_array+0xe>
 236:	4e09      	ldr	r6, [pc, #36]	; (25c <__libc_init_array+0x40>)
 238:	4d09      	ldr	r5, [pc, #36]	; (260 <__libc_init_array+0x44>)
 23a:	1b76      	subs	r6, r6, r5
 23c:	f000 fda0 	bl	d80 <_init>
 240:	10b6      	asrs	r6, r6, #2
 242:	d006      	beq.n	252 <__libc_init_array+0x36>
 244:	2400      	movs	r4, #0
 246:	f855 3b04 	ldr.w	r3, [r5], #4
 24a:	3401      	adds	r4, #1
 24c:	4798      	blx	r3
 24e:	42a6      	cmp	r6, r4
 250:	d1f9      	bne.n	246 <__libc_init_array+0x2a>
 252:	bd70      	pop	{r4, r5, r6, pc}
	...
 25c:	00000d80 	.word	0x00000d80
 260:	00000d78 	.word	0x00000d78

00000264 <malloc>:
 264:	4b02      	ldr	r3, [pc, #8]	; (270 <malloc+0xc>)
 266:	4601      	mov	r1, r0
 268:	6818      	ldr	r0, [r3, #0]
 26a:	f000 b80b 	b.w	284 <_malloc_r>
 26e:	bf00      	nop
 270:	20000030 	.word	0x20000030

00000274 <free>:
 274:	4b02      	ldr	r3, [pc, #8]	; (280 <free+0xc>)
 276:	4601      	mov	r1, r0
 278:	6818      	ldr	r0, [r3, #0]
 27a:	f000 bbf1 	b.w	a60 <_free_r>
 27e:	bf00      	nop
 280:	20000030 	.word	0x20000030

00000284 <_malloc_r>:
 284:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 288:	f101 060b 	add.w	r6, r1, #11
 28c:	2e16      	cmp	r6, #22
 28e:	b083      	sub	sp, #12
 290:	4604      	mov	r4, r0
 292:	d824      	bhi.n	2de <_malloc_r+0x5a>
 294:	2910      	cmp	r1, #16
 296:	f200 80ba 	bhi.w	40e <_malloc_r+0x18a>
 29a:	f000 faef 	bl	87c <__malloc_lock>
 29e:	2610      	movs	r6, #16
 2a0:	2218      	movs	r2, #24
 2a2:	2002      	movs	r0, #2
 2a4:	4fb7      	ldr	r7, [pc, #732]	; (584 <_malloc_r+0x300>)
 2a6:	443a      	add	r2, r7
 2a8:	f1a2 0108 	sub.w	r1, r2, #8
 2ac:	6853      	ldr	r3, [r2, #4]
 2ae:	428b      	cmp	r3, r1
 2b0:	f000 80ba 	beq.w	428 <_malloc_r+0x1a4>
 2b4:	685a      	ldr	r2, [r3, #4]
 2b6:	68d9      	ldr	r1, [r3, #12]
 2b8:	f022 0203 	bic.w	r2, r2, #3
 2bc:	441a      	add	r2, r3
 2be:	689d      	ldr	r5, [r3, #8]
 2c0:	60e9      	str	r1, [r5, #12]
 2c2:	608d      	str	r5, [r1, #8]
 2c4:	6851      	ldr	r1, [r2, #4]
 2c6:	f041 0101 	orr.w	r1, r1, #1
 2ca:	4620      	mov	r0, r4
 2cc:	6051      	str	r1, [r2, #4]
 2ce:	f103 0508 	add.w	r5, r3, #8
 2d2:	f000 fad5 	bl	880 <__malloc_unlock>
 2d6:	4628      	mov	r0, r5
 2d8:	b003      	add	sp, #12
 2da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 2de:	f036 0607 	bics.w	r6, r6, #7
 2e2:	f100 8094 	bmi.w	40e <_malloc_r+0x18a>
 2e6:	42b1      	cmp	r1, r6
 2e8:	f200 8091 	bhi.w	40e <_malloc_r+0x18a>
 2ec:	f000 fac6 	bl	87c <__malloc_lock>
 2f0:	f5b6 7ffc 	cmp.w	r6, #504	; 0x1f8
 2f4:	f0c0 8196 	bcc.w	624 <_malloc_r+0x3a0>
 2f8:	0a73      	lsrs	r3, r6, #9
 2fa:	f000 808f 	beq.w	41c <_malloc_r+0x198>
 2fe:	2b04      	cmp	r3, #4
 300:	f200 816b 	bhi.w	5da <_malloc_r+0x356>
 304:	09b3      	lsrs	r3, r6, #6
 306:	f103 0039 	add.w	r0, r3, #57	; 0x39
 30a:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 30e:	00c3      	lsls	r3, r0, #3
 310:	4f9c      	ldr	r7, [pc, #624]	; (584 <_malloc_r+0x300>)
 312:	443b      	add	r3, r7
 314:	f1a3 0508 	sub.w	r5, r3, #8
 318:	685b      	ldr	r3, [r3, #4]
 31a:	429d      	cmp	r5, r3
 31c:	d106      	bne.n	32c <_malloc_r+0xa8>
 31e:	e00c      	b.n	33a <_malloc_r+0xb6>
 320:	2900      	cmp	r1, #0
 322:	f280 812b 	bge.w	57c <_malloc_r+0x2f8>
 326:	68db      	ldr	r3, [r3, #12]
 328:	429d      	cmp	r5, r3
 32a:	d006      	beq.n	33a <_malloc_r+0xb6>
 32c:	685a      	ldr	r2, [r3, #4]
 32e:	f022 0203 	bic.w	r2, r2, #3
 332:	1b91      	subs	r1, r2, r6
 334:	290f      	cmp	r1, #15
 336:	ddf3      	ble.n	320 <_malloc_r+0x9c>
 338:	4660      	mov	r0, ip
 33a:	693d      	ldr	r5, [r7, #16]
 33c:	f8df c248 	ldr.w	ip, [pc, #584]	; 588 <_malloc_r+0x304>
 340:	4565      	cmp	r5, ip
 342:	d07c      	beq.n	43e <_malloc_r+0x1ba>
 344:	686a      	ldr	r2, [r5, #4]
 346:	f022 0203 	bic.w	r2, r2, #3
 34a:	1b93      	subs	r3, r2, r6
 34c:	2b0f      	cmp	r3, #15
 34e:	f300 8177 	bgt.w	640 <_malloc_r+0x3bc>
 352:	2b00      	cmp	r3, #0
 354:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 358:	f280 8168 	bge.w	62c <_malloc_r+0x3a8>
 35c:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 360:	f080 8116 	bcs.w	590 <_malloc_r+0x30c>
 364:	08d3      	lsrs	r3, r2, #3
 366:	6879      	ldr	r1, [r7, #4]
 368:	3301      	adds	r3, #1
 36a:	ea4f 1e52 	mov.w	lr, r2, lsr #5
 36e:	2201      	movs	r2, #1
 370:	fa02 f20e 	lsl.w	r2, r2, lr
 374:	430a      	orrs	r2, r1
 376:	f857 e033 	ldr.w	lr, [r7, r3, lsl #3]
 37a:	f8c5 e008 	str.w	lr, [r5, #8]
 37e:	eb07 01c3 	add.w	r1, r7, r3, lsl #3
 382:	3908      	subs	r1, #8
 384:	60e9      	str	r1, [r5, #12]
 386:	607a      	str	r2, [r7, #4]
 388:	f847 5033 	str.w	r5, [r7, r3, lsl #3]
 38c:	f8ce 500c 	str.w	r5, [lr, #12]
 390:	1083      	asrs	r3, r0, #2
 392:	2101      	movs	r1, #1
 394:	4099      	lsls	r1, r3
 396:	4291      	cmp	r1, r2
 398:	d857      	bhi.n	44a <_malloc_r+0x1c6>
 39a:	4211      	tst	r1, r2
 39c:	d106      	bne.n	3ac <_malloc_r+0x128>
 39e:	f020 0003 	bic.w	r0, r0, #3
 3a2:	0049      	lsls	r1, r1, #1
 3a4:	4211      	tst	r1, r2
 3a6:	f100 0004 	add.w	r0, r0, #4
 3aa:	d0fa      	beq.n	3a2 <_malloc_r+0x11e>
 3ac:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 3b0:	464d      	mov	r5, r9
 3b2:	4686      	mov	lr, r0
 3b4:	f8d5 800c 	ldr.w	r8, [r5, #12]
 3b8:	4545      	cmp	r5, r8
 3ba:	d108      	bne.n	3ce <_malloc_r+0x14a>
 3bc:	e119      	b.n	5f2 <_malloc_r+0x36e>
 3be:	2b00      	cmp	r3, #0
 3c0:	f280 8120 	bge.w	604 <_malloc_r+0x380>
 3c4:	f8d8 800c 	ldr.w	r8, [r8, #12]
 3c8:	4545      	cmp	r5, r8
 3ca:	f000 8112 	beq.w	5f2 <_malloc_r+0x36e>
 3ce:	f8d8 2004 	ldr.w	r2, [r8, #4]
 3d2:	f022 0203 	bic.w	r2, r2, #3
 3d6:	1b93      	subs	r3, r2, r6
 3d8:	2b0f      	cmp	r3, #15
 3da:	ddf0      	ble.n	3be <_malloc_r+0x13a>
 3dc:	4620      	mov	r0, r4
 3de:	e9d8 5402 	ldrd	r5, r4, [r8, #8]
 3e2:	eb08 0106 	add.w	r1, r8, r6
 3e6:	f046 0601 	orr.w	r6, r6, #1
 3ea:	f8c8 6004 	str.w	r6, [r8, #4]
 3ee:	60ec      	str	r4, [r5, #12]
 3f0:	60a5      	str	r5, [r4, #8]
 3f2:	f043 0401 	orr.w	r4, r3, #1
 3f6:	e9c7 1104 	strd	r1, r1, [r7, #16]
 3fa:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 3fe:	604c      	str	r4, [r1, #4]
 400:	f848 3002 	str.w	r3, [r8, r2]
 404:	f000 fa3c 	bl	880 <__malloc_unlock>
 408:	f108 0508 	add.w	r5, r8, #8
 40c:	e002      	b.n	414 <_malloc_r+0x190>
 40e:	230c      	movs	r3, #12
 410:	6023      	str	r3, [r4, #0]
 412:	2500      	movs	r5, #0
 414:	4628      	mov	r0, r5
 416:	b003      	add	sp, #12
 418:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 41c:	f44f 7300 	mov.w	r3, #512	; 0x200
 420:	2040      	movs	r0, #64	; 0x40
 422:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 426:	e773      	b.n	310 <_malloc_r+0x8c>
 428:	68d3      	ldr	r3, [r2, #12]
 42a:	429a      	cmp	r2, r3
 42c:	bf08      	it	eq
 42e:	3002      	addeq	r0, #2
 430:	f47f af40 	bne.w	2b4 <_malloc_r+0x30>
 434:	693d      	ldr	r5, [r7, #16]
 436:	f8df c150 	ldr.w	ip, [pc, #336]	; 588 <_malloc_r+0x304>
 43a:	4565      	cmp	r5, ip
 43c:	d182      	bne.n	344 <_malloc_r+0xc0>
 43e:	687a      	ldr	r2, [r7, #4]
 440:	1083      	asrs	r3, r0, #2
 442:	2101      	movs	r1, #1
 444:	4099      	lsls	r1, r3
 446:	4291      	cmp	r1, r2
 448:	d9a7      	bls.n	39a <_malloc_r+0x116>
 44a:	68bd      	ldr	r5, [r7, #8]
 44c:	686b      	ldr	r3, [r5, #4]
 44e:	f023 0803 	bic.w	r8, r3, #3
 452:	4546      	cmp	r6, r8
 454:	d803      	bhi.n	45e <_malloc_r+0x1da>
 456:	eba8 0306 	sub.w	r3, r8, r6
 45a:	2b0f      	cmp	r3, #15
 45c:	dc7e      	bgt.n	55c <_malloc_r+0x2d8>
 45e:	f8df 912c 	ldr.w	r9, [pc, #300]	; 58c <_malloc_r+0x308>
 462:	f8d7 2408 	ldr.w	r2, [r7, #1032]	; 0x408
 466:	f8d9 3000 	ldr.w	r3, [r9]
 46a:	3201      	adds	r2, #1
 46c:	4433      	add	r3, r6
 46e:	eb05 0a08 	add.w	sl, r5, r8
 472:	f000 812f 	beq.w	6d4 <_malloc_r+0x450>
 476:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
 47a:	330f      	adds	r3, #15
 47c:	f423 6b7f 	bic.w	fp, r3, #4080	; 0xff0
 480:	f02b 0b0f 	bic.w	fp, fp, #15
 484:	4659      	mov	r1, fp
 486:	4620      	mov	r0, r4
 488:	f000 f9fc 	bl	884 <_sbrk_r>
 48c:	1c41      	adds	r1, r0, #1
 48e:	4602      	mov	r2, r0
 490:	f000 80ef 	beq.w	672 <_malloc_r+0x3ee>
 494:	4582      	cmp	sl, r0
 496:	f200 80ea 	bhi.w	66e <_malloc_r+0x3ea>
 49a:	f8d9 1004 	ldr.w	r1, [r9, #4]
 49e:	4459      	add	r1, fp
 4a0:	f8c9 1004 	str.w	r1, [r9, #4]
 4a4:	460b      	mov	r3, r1
 4a6:	f000 814b 	beq.w	740 <_malloc_r+0x4bc>
 4aa:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
 4ae:	3101      	adds	r1, #1
 4b0:	bf1b      	ittet	ne
 4b2:	eba2 0a0a 	subne.w	sl, r2, sl
 4b6:	4453      	addne	r3, sl
 4b8:	f8c7 2408 	streq.w	r2, [r7, #1032]	; 0x408
 4bc:	f8c9 3004 	strne.w	r3, [r9, #4]
 4c0:	f012 0307 	ands.w	r3, r2, #7
 4c4:	f000 8112 	beq.w	6ec <_malloc_r+0x468>
 4c8:	f1c3 0108 	rsb	r1, r3, #8
 4cc:	440a      	add	r2, r1
 4ce:	f5c3 5180 	rsb	r1, r3, #4096	; 0x1000
 4d2:	4493      	add	fp, r2
 4d4:	3108      	adds	r1, #8
 4d6:	eba1 010b 	sub.w	r1, r1, fp
 4da:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
 4de:	4651      	mov	r1, sl
 4e0:	4620      	mov	r0, r4
 4e2:	9201      	str	r2, [sp, #4]
 4e4:	9300      	str	r3, [sp, #0]
 4e6:	f000 f9cd 	bl	884 <_sbrk_r>
 4ea:	1c42      	adds	r2, r0, #1
 4ec:	e9dd 3200 	ldrd	r3, r2, [sp]
 4f0:	f000 814b 	beq.w	78a <_malloc_r+0x506>
 4f4:	1a83      	subs	r3, r0, r2
 4f6:	eb03 0b0a 	add.w	fp, r3, sl
 4fa:	f8d9 0004 	ldr.w	r0, [r9, #4]
 4fe:	60ba      	str	r2, [r7, #8]
 500:	f04b 0301 	orr.w	r3, fp, #1
 504:	eb0a 0100 	add.w	r1, sl, r0
 508:	42bd      	cmp	r5, r7
 50a:	6053      	str	r3, [r2, #4]
 50c:	f8c9 1004 	str.w	r1, [r9, #4]
 510:	f000 8122 	beq.w	758 <_malloc_r+0x4d4>
 514:	f1b8 0f0f 	cmp.w	r8, #15
 518:	f240 8120 	bls.w	75c <_malloc_r+0x4d8>
 51c:	686b      	ldr	r3, [r5, #4]
 51e:	f1a8 000c 	sub.w	r0, r8, #12
 522:	f020 0007 	bic.w	r0, r0, #7
 526:	f003 0301 	and.w	r3, r3, #1
 52a:	4303      	orrs	r3, r0
 52c:	606b      	str	r3, [r5, #4]
 52e:	f04f 0c05 	mov.w	ip, #5
 532:	182b      	adds	r3, r5, r0
 534:	280f      	cmp	r0, #15
 536:	e9c3 cc01 	strd	ip, ip, [r3, #4]
 53a:	f200 812d 	bhi.w	798 <_malloc_r+0x514>
 53e:	6853      	ldr	r3, [r2, #4]
 540:	4615      	mov	r5, r2
 542:	f8d9 202c 	ldr.w	r2, [r9, #44]	; 0x2c
 546:	428a      	cmp	r2, r1
 548:	f8d9 2030 	ldr.w	r2, [r9, #48]	; 0x30
 54c:	bf38      	it	cc
 54e:	f8c9 102c 	strcc.w	r1, [r9, #44]	; 0x2c
 552:	428a      	cmp	r2, r1
 554:	bf38      	it	cc
 556:	f8c9 1030 	strcc.w	r1, [r9, #48]	; 0x30
 55a:	e08c      	b.n	676 <_malloc_r+0x3f2>
 55c:	19aa      	adds	r2, r5, r6
 55e:	f043 0301 	orr.w	r3, r3, #1
 562:	f046 0601 	orr.w	r6, r6, #1
 566:	606e      	str	r6, [r5, #4]
 568:	4620      	mov	r0, r4
 56a:	60ba      	str	r2, [r7, #8]
 56c:	6053      	str	r3, [r2, #4]
 56e:	f000 f987 	bl	880 <__malloc_unlock>
 572:	3508      	adds	r5, #8
 574:	4628      	mov	r0, r5
 576:	b003      	add	sp, #12
 578:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 57c:	68d9      	ldr	r1, [r3, #12]
 57e:	441a      	add	r2, r3
 580:	e69d      	b.n	2be <_malloc_r+0x3a>
 582:	bf00      	nop
 584:	20000460 	.word	0x20000460
 588:	20000468 	.word	0x20000468
 58c:	20000898 	.word	0x20000898
 590:	f5b2 6f20 	cmp.w	r2, #2560	; 0xa00
 594:	ea4f 2352 	mov.w	r3, r2, lsr #9
 598:	d363      	bcc.n	662 <_malloc_r+0x3de>
 59a:	2b14      	cmp	r3, #20
 59c:	f200 80b8 	bhi.w	710 <_malloc_r+0x48c>
 5a0:	f103 015c 	add.w	r1, r3, #92	; 0x5c
 5a4:	00c9      	lsls	r1, r1, #3
 5a6:	335b      	adds	r3, #91	; 0x5b
 5a8:	eb07 0e01 	add.w	lr, r7, r1
 5ac:	5879      	ldr	r1, [r7, r1]
 5ae:	f1ae 0e08 	sub.w	lr, lr, #8
 5b2:	458e      	cmp	lr, r1
 5b4:	f000 8091 	beq.w	6da <_malloc_r+0x456>
 5b8:	684b      	ldr	r3, [r1, #4]
 5ba:	f023 0303 	bic.w	r3, r3, #3
 5be:	4293      	cmp	r3, r2
 5c0:	d902      	bls.n	5c8 <_malloc_r+0x344>
 5c2:	6889      	ldr	r1, [r1, #8]
 5c4:	458e      	cmp	lr, r1
 5c6:	d1f7      	bne.n	5b8 <_malloc_r+0x334>
 5c8:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 5cc:	687a      	ldr	r2, [r7, #4]
 5ce:	e9c5 1e02 	strd	r1, lr, [r5, #8]
 5d2:	f8ce 5008 	str.w	r5, [lr, #8]
 5d6:	60cd      	str	r5, [r1, #12]
 5d8:	e6da      	b.n	390 <_malloc_r+0x10c>
 5da:	2b14      	cmp	r3, #20
 5dc:	d959      	bls.n	692 <_malloc_r+0x40e>
 5de:	2b54      	cmp	r3, #84	; 0x54
 5e0:	f200 809e 	bhi.w	720 <_malloc_r+0x49c>
 5e4:	0b33      	lsrs	r3, r6, #12
 5e6:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 5ea:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 5ee:	00c3      	lsls	r3, r0, #3
 5f0:	e68e      	b.n	310 <_malloc_r+0x8c>
 5f2:	f10e 0e01 	add.w	lr, lr, #1
 5f6:	f01e 0f03 	tst.w	lr, #3
 5fa:	f105 0508 	add.w	r5, r5, #8
 5fe:	f47f aed9 	bne.w	3b4 <_malloc_r+0x130>
 602:	e051      	b.n	6a8 <_malloc_r+0x424>
 604:	4442      	add	r2, r8
 606:	4645      	mov	r5, r8
 608:	6853      	ldr	r3, [r2, #4]
 60a:	f8d8 100c 	ldr.w	r1, [r8, #12]
 60e:	f043 0301 	orr.w	r3, r3, #1
 612:	6053      	str	r3, [r2, #4]
 614:	f855 3f08 	ldr.w	r3, [r5, #8]!
 618:	4620      	mov	r0, r4
 61a:	60d9      	str	r1, [r3, #12]
 61c:	608b      	str	r3, [r1, #8]
 61e:	f000 f92f 	bl	880 <__malloc_unlock>
 622:	e6f7      	b.n	414 <_malloc_r+0x190>
 624:	08f0      	lsrs	r0, r6, #3
 626:	f106 0208 	add.w	r2, r6, #8
 62a:	e63b      	b.n	2a4 <_malloc_r+0x20>
 62c:	442a      	add	r2, r5
 62e:	4620      	mov	r0, r4
 630:	6853      	ldr	r3, [r2, #4]
 632:	f043 0301 	orr.w	r3, r3, #1
 636:	6053      	str	r3, [r2, #4]
 638:	3508      	adds	r5, #8
 63a:	f000 f921 	bl	880 <__malloc_unlock>
 63e:	e6e9      	b.n	414 <_malloc_r+0x190>
 640:	19a9      	adds	r1, r5, r6
 642:	4620      	mov	r0, r4
 644:	f046 0601 	orr.w	r6, r6, #1
 648:	f043 0401 	orr.w	r4, r3, #1
 64c:	606e      	str	r6, [r5, #4]
 64e:	e9c7 1104 	strd	r1, r1, [r7, #16]
 652:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 656:	604c      	str	r4, [r1, #4]
 658:	50ab      	str	r3, [r5, r2]
 65a:	f000 f911 	bl	880 <__malloc_unlock>
 65e:	3508      	adds	r5, #8
 660:	e6d8      	b.n	414 <_malloc_r+0x190>
 662:	0993      	lsrs	r3, r2, #6
 664:	f103 0139 	add.w	r1, r3, #57	; 0x39
 668:	00c9      	lsls	r1, r1, #3
 66a:	3338      	adds	r3, #56	; 0x38
 66c:	e79c      	b.n	5a8 <_malloc_r+0x324>
 66e:	42bd      	cmp	r5, r7
 670:	d060      	beq.n	734 <_malloc_r+0x4b0>
 672:	68bd      	ldr	r5, [r7, #8]
 674:	686b      	ldr	r3, [r5, #4]
 676:	f023 0b03 	bic.w	fp, r3, #3
 67a:	455e      	cmp	r6, fp
 67c:	ebab 0306 	sub.w	r3, fp, r6
 680:	d802      	bhi.n	688 <_malloc_r+0x404>
 682:	2b0f      	cmp	r3, #15
 684:	f73f af6a 	bgt.w	55c <_malloc_r+0x2d8>
 688:	4620      	mov	r0, r4
 68a:	f000 f8f9 	bl	880 <__malloc_unlock>
 68e:	2500      	movs	r5, #0
 690:	e6c0      	b.n	414 <_malloc_r+0x190>
 692:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 696:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 69a:	00c3      	lsls	r3, r0, #3
 69c:	e638      	b.n	310 <_malloc_r+0x8c>
 69e:	f859 3908 	ldr.w	r3, [r9], #-8
 6a2:	454b      	cmp	r3, r9
 6a4:	f040 8096 	bne.w	7d4 <_malloc_r+0x550>
 6a8:	f010 0f03 	tst.w	r0, #3
 6ac:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 6b0:	d1f5      	bne.n	69e <_malloc_r+0x41a>
 6b2:	687b      	ldr	r3, [r7, #4]
 6b4:	ea23 0301 	bic.w	r3, r3, r1
 6b8:	607b      	str	r3, [r7, #4]
 6ba:	0049      	lsls	r1, r1, #1
 6bc:	4299      	cmp	r1, r3
 6be:	f63f aec4 	bhi.w	44a <_malloc_r+0x1c6>
 6c2:	b919      	cbnz	r1, 6cc <_malloc_r+0x448>
 6c4:	e6c1      	b.n	44a <_malloc_r+0x1c6>
 6c6:	0049      	lsls	r1, r1, #1
 6c8:	f10e 0e04 	add.w	lr, lr, #4
 6cc:	4219      	tst	r1, r3
 6ce:	d0fa      	beq.n	6c6 <_malloc_r+0x442>
 6d0:	4670      	mov	r0, lr
 6d2:	e66b      	b.n	3ac <_malloc_r+0x128>
 6d4:	f103 0b10 	add.w	fp, r3, #16
 6d8:	e6d4      	b.n	484 <_malloc_r+0x200>
 6da:	109a      	asrs	r2, r3, #2
 6dc:	f04f 0801 	mov.w	r8, #1
 6e0:	687b      	ldr	r3, [r7, #4]
 6e2:	fa08 f202 	lsl.w	r2, r8, r2
 6e6:	431a      	orrs	r2, r3
 6e8:	607a      	str	r2, [r7, #4]
 6ea:	e770      	b.n	5ce <_malloc_r+0x34a>
 6ec:	eb02 010b 	add.w	r1, r2, fp
 6f0:	4249      	negs	r1, r1
 6f2:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
 6f6:	4651      	mov	r1, sl
 6f8:	4620      	mov	r0, r4
 6fa:	9301      	str	r3, [sp, #4]
 6fc:	9200      	str	r2, [sp, #0]
 6fe:	f000 f8c1 	bl	884 <_sbrk_r>
 702:	1c43      	adds	r3, r0, #1
 704:	e9dd 2300 	ldrd	r2, r3, [sp]
 708:	f47f aef4 	bne.w	4f4 <_malloc_r+0x270>
 70c:	469a      	mov	sl, r3
 70e:	e6f4      	b.n	4fa <_malloc_r+0x276>
 710:	2b54      	cmp	r3, #84	; 0x54
 712:	d826      	bhi.n	762 <_malloc_r+0x4de>
 714:	0b13      	lsrs	r3, r2, #12
 716:	f103 016f 	add.w	r1, r3, #111	; 0x6f
 71a:	00c9      	lsls	r1, r1, #3
 71c:	336e      	adds	r3, #110	; 0x6e
 71e:	e743      	b.n	5a8 <_malloc_r+0x324>
 720:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 724:	d826      	bhi.n	774 <_malloc_r+0x4f0>
 726:	0bf3      	lsrs	r3, r6, #15
 728:	f103 0078 	add.w	r0, r3, #120	; 0x78
 72c:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 730:	00c3      	lsls	r3, r0, #3
 732:	e5ed      	b.n	310 <_malloc_r+0x8c>
 734:	f8d9 3004 	ldr.w	r3, [r9, #4]
 738:	445b      	add	r3, fp
 73a:	f8c9 3004 	str.w	r3, [r9, #4]
 73e:	e6b4      	b.n	4aa <_malloc_r+0x226>
 740:	f3ca 000b 	ubfx	r0, sl, #0, #12
 744:	2800      	cmp	r0, #0
 746:	f47f aeb0 	bne.w	4aa <_malloc_r+0x226>
 74a:	68bd      	ldr	r5, [r7, #8]
 74c:	eb08 030b 	add.w	r3, r8, fp
 750:	f043 0301 	orr.w	r3, r3, #1
 754:	606b      	str	r3, [r5, #4]
 756:	e6f4      	b.n	542 <_malloc_r+0x2be>
 758:	4615      	mov	r5, r2
 75a:	e6f2      	b.n	542 <_malloc_r+0x2be>
 75c:	2301      	movs	r3, #1
 75e:	6053      	str	r3, [r2, #4]
 760:	e792      	b.n	688 <_malloc_r+0x404>
 762:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 766:	d821      	bhi.n	7ac <_malloc_r+0x528>
 768:	0bd3      	lsrs	r3, r2, #15
 76a:	f103 0178 	add.w	r1, r3, #120	; 0x78
 76e:	00c9      	lsls	r1, r1, #3
 770:	3377      	adds	r3, #119	; 0x77
 772:	e719      	b.n	5a8 <_malloc_r+0x324>
 774:	f240 5254 	movw	r2, #1364	; 0x554
 778:	4293      	cmp	r3, r2
 77a:	d821      	bhi.n	7c0 <_malloc_r+0x53c>
 77c:	0cb3      	lsrs	r3, r6, #18
 77e:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 782:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 786:	00c3      	lsls	r3, r0, #3
 788:	e5c2      	b.n	310 <_malloc_r+0x8c>
 78a:	3b08      	subs	r3, #8
 78c:	449b      	add	fp, r3
 78e:	ebab 0b02 	sub.w	fp, fp, r2
 792:	f04f 0a00 	mov.w	sl, #0
 796:	e6b0      	b.n	4fa <_malloc_r+0x276>
 798:	f105 0108 	add.w	r1, r5, #8
 79c:	4620      	mov	r0, r4
 79e:	f000 f95f 	bl	a60 <_free_r>
 7a2:	68bd      	ldr	r5, [r7, #8]
 7a4:	f8d9 1004 	ldr.w	r1, [r9, #4]
 7a8:	686b      	ldr	r3, [r5, #4]
 7aa:	e6ca      	b.n	542 <_malloc_r+0x2be>
 7ac:	f240 5154 	movw	r1, #1364	; 0x554
 7b0:	428b      	cmp	r3, r1
 7b2:	d80b      	bhi.n	7cc <_malloc_r+0x548>
 7b4:	0c93      	lsrs	r3, r2, #18
 7b6:	f103 017d 	add.w	r1, r3, #125	; 0x7d
 7ba:	00c9      	lsls	r1, r1, #3
 7bc:	337c      	adds	r3, #124	; 0x7c
 7be:	e6f3      	b.n	5a8 <_malloc_r+0x324>
 7c0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 7c4:	207f      	movs	r0, #127	; 0x7f
 7c6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 7ca:	e5a1      	b.n	310 <_malloc_r+0x8c>
 7cc:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 7d0:	237e      	movs	r3, #126	; 0x7e
 7d2:	e6e9      	b.n	5a8 <_malloc_r+0x324>
 7d4:	687b      	ldr	r3, [r7, #4]
 7d6:	e770      	b.n	6ba <_malloc_r+0x436>

000007d8 <memset>:
 7d8:	0783      	lsls	r3, r0, #30
 7da:	b530      	push	{r4, r5, lr}
 7dc:	d048      	beq.n	870 <memset+0x98>
 7de:	1e54      	subs	r4, r2, #1
 7e0:	2a00      	cmp	r2, #0
 7e2:	d03f      	beq.n	864 <memset+0x8c>
 7e4:	b2ca      	uxtb	r2, r1
 7e6:	4603      	mov	r3, r0
 7e8:	e001      	b.n	7ee <memset+0x16>
 7ea:	3c01      	subs	r4, #1
 7ec:	d33a      	bcc.n	864 <memset+0x8c>
 7ee:	f803 2b01 	strb.w	r2, [r3], #1
 7f2:	079d      	lsls	r5, r3, #30
 7f4:	d1f9      	bne.n	7ea <memset+0x12>
 7f6:	2c03      	cmp	r4, #3
 7f8:	d92d      	bls.n	856 <memset+0x7e>
 7fa:	b2cd      	uxtb	r5, r1
 7fc:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800:	2c0f      	cmp	r4, #15
 802:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 806:	d936      	bls.n	876 <memset+0x9e>
 808:	f1a4 0210 	sub.w	r2, r4, #16
 80c:	f022 0c0f 	bic.w	ip, r2, #15
 810:	f103 0e20 	add.w	lr, r3, #32
 814:	44e6      	add	lr, ip
 816:	ea4f 1c12 	mov.w	ip, r2, lsr #4
 81a:	f103 0210 	add.w	r2, r3, #16
 81e:	e942 5504 	strd	r5, r5, [r2, #-16]
 822:	e942 5502 	strd	r5, r5, [r2, #-8]
 826:	3210      	adds	r2, #16
 828:	4572      	cmp	r2, lr
 82a:	d1f8      	bne.n	81e <memset+0x46>
 82c:	f10c 0201 	add.w	r2, ip, #1
 830:	f014 0f0c 	tst.w	r4, #12
 834:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 838:	f004 0c0f 	and.w	ip, r4, #15
 83c:	d013      	beq.n	866 <memset+0x8e>
 83e:	f1ac 0304 	sub.w	r3, ip, #4
 842:	f023 0303 	bic.w	r3, r3, #3
 846:	3304      	adds	r3, #4
 848:	4413      	add	r3, r2
 84a:	f842 5b04 	str.w	r5, [r2], #4
 84e:	4293      	cmp	r3, r2
 850:	d1fb      	bne.n	84a <memset+0x72>
 852:	f00c 0403 	and.w	r4, ip, #3
 856:	b12c      	cbz	r4, 864 <memset+0x8c>
 858:	b2ca      	uxtb	r2, r1
 85a:	441c      	add	r4, r3
 85c:	f803 2b01 	strb.w	r2, [r3], #1
 860:	429c      	cmp	r4, r3
 862:	d1fb      	bne.n	85c <memset+0x84>
 864:	bd30      	pop	{r4, r5, pc}
 866:	4664      	mov	r4, ip
 868:	4613      	mov	r3, r2
 86a:	2c00      	cmp	r4, #0
 86c:	d1f4      	bne.n	858 <memset+0x80>
 86e:	e7f9      	b.n	864 <memset+0x8c>
 870:	4603      	mov	r3, r0
 872:	4614      	mov	r4, r2
 874:	e7bf      	b.n	7f6 <memset+0x1e>
 876:	461a      	mov	r2, r3
 878:	46a4      	mov	ip, r4
 87a:	e7e0      	b.n	83e <memset+0x66>

0000087c <__malloc_lock>:
 87c:	4770      	bx	lr
 87e:	bf00      	nop

00000880 <__malloc_unlock>:
 880:	4770      	bx	lr
 882:	bf00      	nop

00000884 <_sbrk_r>:
 884:	b538      	push	{r3, r4, r5, lr}
 886:	4d07      	ldr	r5, [pc, #28]	; (8a4 <_sbrk_r+0x20>)
 888:	2200      	movs	r2, #0
 88a:	4604      	mov	r4, r0
 88c:	4608      	mov	r0, r1
 88e:	602a      	str	r2, [r5, #0]
 890:	f000 fa58 	bl	d44 <_sbrk>
 894:	1c43      	adds	r3, r0, #1
 896:	d000      	beq.n	89a <_sbrk_r+0x16>
 898:	bd38      	pop	{r3, r4, r5, pc}
 89a:	682b      	ldr	r3, [r5, #0]
 89c:	2b00      	cmp	r3, #0
 89e:	d0fb      	beq.n	898 <_sbrk_r+0x14>
 8a0:	6023      	str	r3, [r4, #0]
 8a2:	bd38      	pop	{r3, r4, r5, pc}
 8a4:	200008cc 	.word	0x200008cc

000008a8 <__register_exitproc>:
 8a8:	b470      	push	{r4, r5, r6}
 8aa:	4c18      	ldr	r4, [pc, #96]	; (90c <__register_exitproc+0x64>)
 8ac:	6825      	ldr	r5, [r4, #0]
 8ae:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8b2:	b31c      	cbz	r4, 8fc <__register_exitproc+0x54>
 8b4:	6865      	ldr	r5, [r4, #4]
 8b6:	2d1f      	cmp	r5, #31
 8b8:	dc25      	bgt.n	906 <__register_exitproc+0x5e>
 8ba:	b938      	cbnz	r0, 8cc <__register_exitproc+0x24>
 8bc:	1cab      	adds	r3, r5, #2
 8be:	3501      	adds	r5, #1
 8c0:	6065      	str	r5, [r4, #4]
 8c2:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
 8c6:	2000      	movs	r0, #0
 8c8:	bc70      	pop	{r4, r5, r6}
 8ca:	4770      	bx	lr
 8cc:	eb04 0c85 	add.w	ip, r4, r5, lsl #2
 8d0:	2802      	cmp	r0, #2
 8d2:	f8cc 2088 	str.w	r2, [ip, #136]	; 0x88
 8d6:	f8d4 6188 	ldr.w	r6, [r4, #392]	; 0x188
 8da:	f04f 0201 	mov.w	r2, #1
 8de:	fa02 f205 	lsl.w	r2, r2, r5
 8e2:	ea46 0602 	orr.w	r6, r6, r2
 8e6:	f8c4 6188 	str.w	r6, [r4, #392]	; 0x188
 8ea:	f8cc 3108 	str.w	r3, [ip, #264]	; 0x108
 8ee:	d1e5      	bne.n	8bc <__register_exitproc+0x14>
 8f0:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 8f4:	4313      	orrs	r3, r2
 8f6:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 8fa:	e7df      	b.n	8bc <__register_exitproc+0x14>
 8fc:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 900:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 904:	e7d6      	b.n	8b4 <__register_exitproc+0xc>
 906:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 90a:	e7dd      	b.n	8c8 <__register_exitproc+0x20>
 90c:	00000dd4 	.word	0x00000dd4

00000910 <__call_exitprocs>:
 910:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 914:	4b29      	ldr	r3, [pc, #164]	; (9bc <__call_exitprocs+0xac>)
 916:	681f      	ldr	r7, [r3, #0]
 918:	b083      	sub	sp, #12
 91a:	f8d7 6148 	ldr.w	r6, [r7, #328]	; 0x148
 91e:	9001      	str	r0, [sp, #4]
 920:	b1b6      	cbz	r6, 950 <__call_exitprocs+0x40>
 922:	468b      	mov	fp, r1
 924:	f04f 0801 	mov.w	r8, #1
 928:	f04f 0900 	mov.w	r9, #0
 92c:	6874      	ldr	r4, [r6, #4]
 92e:	1e65      	subs	r5, r4, #1
 930:	d40e      	bmi.n	950 <__call_exitprocs+0x40>
 932:	3401      	adds	r4, #1
 934:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 938:	f1bb 0f00 	cmp.w	fp, #0
 93c:	d00b      	beq.n	956 <__call_exitprocs+0x46>
 93e:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 942:	455b      	cmp	r3, fp
 944:	d007      	beq.n	956 <__call_exitprocs+0x46>
 946:	3d01      	subs	r5, #1
 948:	1c6b      	adds	r3, r5, #1
 94a:	f1a4 0404 	sub.w	r4, r4, #4
 94e:	d1f3      	bne.n	938 <__call_exitprocs+0x28>
 950:	b003      	add	sp, #12
 952:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 956:	6873      	ldr	r3, [r6, #4]
 958:	6822      	ldr	r2, [r4, #0]
 95a:	3b01      	subs	r3, #1
 95c:	42ab      	cmp	r3, r5
 95e:	bf0c      	ite	eq
 960:	6075      	streq	r5, [r6, #4]
 962:	f8c4 9000 	strne.w	r9, [r4]
 966:	2a00      	cmp	r2, #0
 968:	d0ed      	beq.n	946 <__call_exitprocs+0x36>
 96a:	f8d6 0188 	ldr.w	r0, [r6, #392]	; 0x188
 96e:	f8d6 a004 	ldr.w	sl, [r6, #4]
 972:	fa08 f105 	lsl.w	r1, r8, r5
 976:	4201      	tst	r1, r0
 978:	d10b      	bne.n	992 <__call_exitprocs+0x82>
 97a:	4790      	blx	r2
 97c:	6872      	ldr	r2, [r6, #4]
 97e:	4552      	cmp	r2, sl
 980:	d112      	bne.n	9a8 <__call_exitprocs+0x98>
 982:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
 986:	42b3      	cmp	r3, r6
 988:	d0dd      	beq.n	946 <__call_exitprocs+0x36>
 98a:	461e      	mov	r6, r3
 98c:	2e00      	cmp	r6, #0
 98e:	d1cd      	bne.n	92c <__call_exitprocs+0x1c>
 990:	e7de      	b.n	950 <__call_exitprocs+0x40>
 992:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 996:	4201      	tst	r1, r0
 998:	d10b      	bne.n	9b2 <__call_exitprocs+0xa2>
 99a:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 99e:	9801      	ldr	r0, [sp, #4]
 9a0:	4790      	blx	r2
 9a2:	6872      	ldr	r2, [r6, #4]
 9a4:	4552      	cmp	r2, sl
 9a6:	d0ec      	beq.n	982 <__call_exitprocs+0x72>
 9a8:	f8d7 6148 	ldr.w	r6, [r7, #328]	; 0x148
 9ac:	2e00      	cmp	r6, #0
 9ae:	d1bd      	bne.n	92c <__call_exitprocs+0x1c>
 9b0:	e7ce      	b.n	950 <__call_exitprocs+0x40>
 9b2:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 9b6:	4790      	blx	r2
 9b8:	e7e0      	b.n	97c <__call_exitprocs+0x6c>
 9ba:	bf00      	nop
 9bc:	00000dd4 	.word	0x00000dd4

000009c0 <_malloc_trim_r>:
 9c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9c2:	4f24      	ldr	r7, [pc, #144]	; (a54 <_malloc_trim_r+0x94>)
 9c4:	460c      	mov	r4, r1
 9c6:	4606      	mov	r6, r0
 9c8:	f7ff ff58 	bl	87c <__malloc_lock>
 9cc:	68ba      	ldr	r2, [r7, #8]
 9ce:	6855      	ldr	r5, [r2, #4]
 9d0:	f5c4 637e 	rsb	r3, r4, #4064	; 0xfe0
 9d4:	330f      	adds	r3, #15
 9d6:	f025 0503 	bic.w	r5, r5, #3
 9da:	442b      	add	r3, r5
 9dc:	f423 637f 	bic.w	r3, r3, #4080	; 0xff0
 9e0:	f023 030f 	bic.w	r3, r3, #15
 9e4:	f5a3 5480 	sub.w	r4, r3, #4096	; 0x1000
 9e8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 9ec:	db07      	blt.n	9fe <_malloc_trim_r+0x3e>
 9ee:	2100      	movs	r1, #0
 9f0:	4630      	mov	r0, r6
 9f2:	f7ff ff47 	bl	884 <_sbrk_r>
 9f6:	68bb      	ldr	r3, [r7, #8]
 9f8:	442b      	add	r3, r5
 9fa:	4298      	cmp	r0, r3
 9fc:	d004      	beq.n	a08 <_malloc_trim_r+0x48>
 9fe:	4630      	mov	r0, r6
 a00:	f7ff ff3e 	bl	880 <__malloc_unlock>
 a04:	2000      	movs	r0, #0
 a06:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 a08:	4261      	negs	r1, r4
 a0a:	4630      	mov	r0, r6
 a0c:	f7ff ff3a 	bl	884 <_sbrk_r>
 a10:	3001      	adds	r0, #1
 a12:	d00d      	beq.n	a30 <_malloc_trim_r+0x70>
 a14:	4a10      	ldr	r2, [pc, #64]	; (a58 <_malloc_trim_r+0x98>)
 a16:	68bb      	ldr	r3, [r7, #8]
 a18:	1b2d      	subs	r5, r5, r4
 a1a:	f045 0501 	orr.w	r5, r5, #1
 a1e:	605d      	str	r5, [r3, #4]
 a20:	6813      	ldr	r3, [r2, #0]
 a22:	4630      	mov	r0, r6
 a24:	1b1b      	subs	r3, r3, r4
 a26:	6013      	str	r3, [r2, #0]
 a28:	f7ff ff2a 	bl	880 <__malloc_unlock>
 a2c:	2001      	movs	r0, #1
 a2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 a30:	2100      	movs	r1, #0
 a32:	4630      	mov	r0, r6
 a34:	f7ff ff26 	bl	884 <_sbrk_r>
 a38:	68ba      	ldr	r2, [r7, #8]
 a3a:	1a83      	subs	r3, r0, r2
 a3c:	2b0f      	cmp	r3, #15
 a3e:	ddde      	ble.n	9fe <_malloc_trim_r+0x3e>
 a40:	f043 0301 	orr.w	r3, r3, #1
 a44:	6053      	str	r3, [r2, #4]
 a46:	4b05      	ldr	r3, [pc, #20]	; (a5c <_malloc_trim_r+0x9c>)
 a48:	4903      	ldr	r1, [pc, #12]	; (a58 <_malloc_trim_r+0x98>)
 a4a:	681b      	ldr	r3, [r3, #0]
 a4c:	1ac0      	subs	r0, r0, r3
 a4e:	6008      	str	r0, [r1, #0]
 a50:	e7d5      	b.n	9fe <_malloc_trim_r+0x3e>
 a52:	bf00      	nop
 a54:	20000460 	.word	0x20000460
 a58:	2000089c 	.word	0x2000089c
 a5c:	20000868 	.word	0x20000868

00000a60 <_free_r>:
 a60:	2900      	cmp	r1, #0
 a62:	d061      	beq.n	b28 <_free_r+0xc8>
 a64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a66:	460c      	mov	r4, r1
 a68:	4606      	mov	r6, r0
 a6a:	f7ff ff07 	bl	87c <__malloc_lock>
 a6e:	f854 2c04 	ldr.w	r2, [r4, #-4]
 a72:	4f7b      	ldr	r7, [pc, #492]	; (c60 <_free_r+0x200>)
 a74:	f1a4 0508 	sub.w	r5, r4, #8
 a78:	f022 0101 	bic.w	r1, r2, #1
 a7c:	eb05 0c01 	add.w	ip, r5, r1
 a80:	68b8      	ldr	r0, [r7, #8]
 a82:	f8dc 3004 	ldr.w	r3, [ip, #4]
 a86:	4560      	cmp	r0, ip
 a88:	f023 0303 	bic.w	r3, r3, #3
 a8c:	f000 808b 	beq.w	ba6 <_free_r+0x146>
 a90:	07d2      	lsls	r2, r2, #31
 a92:	f8cc 3004 	str.w	r3, [ip, #4]
 a96:	d432      	bmi.n	afe <_free_r+0x9e>
 a98:	f854 2c08 	ldr.w	r2, [r4, #-8]
 a9c:	1aad      	subs	r5, r5, r2
 a9e:	4411      	add	r1, r2
 aa0:	68aa      	ldr	r2, [r5, #8]
 aa2:	f107 0008 	add.w	r0, r7, #8
 aa6:	4282      	cmp	r2, r0
 aa8:	d06a      	beq.n	b80 <_free_r+0x120>
 aaa:	eb0c 0403 	add.w	r4, ip, r3
 aae:	f8d4 e004 	ldr.w	lr, [r4, #4]
 ab2:	68ec      	ldr	r4, [r5, #12]
 ab4:	60d4      	str	r4, [r2, #12]
 ab6:	f01e 0f01 	tst.w	lr, #1
 aba:	60a2      	str	r2, [r4, #8]
 abc:	f000 8097 	beq.w	bee <_free_r+0x18e>
 ac0:	f041 0301 	orr.w	r3, r1, #1
 ac4:	606b      	str	r3, [r5, #4]
 ac6:	f8cc 1000 	str.w	r1, [ip]
 aca:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 ace:	d235      	bcs.n	b3c <_free_r+0xdc>
 ad0:	687a      	ldr	r2, [r7, #4]
 ad2:	08cb      	lsrs	r3, r1, #3
 ad4:	0948      	lsrs	r0, r1, #5
 ad6:	2101      	movs	r1, #1
 ad8:	3301      	adds	r3, #1
 ada:	4081      	lsls	r1, r0
 adc:	4311      	orrs	r1, r2
 ade:	6079      	str	r1, [r7, #4]
 ae0:	eb07 02c3 	add.w	r2, r7, r3, lsl #3
 ae4:	f857 1033 	ldr.w	r1, [r7, r3, lsl #3]
 ae8:	3a08      	subs	r2, #8
 aea:	e9c5 1202 	strd	r1, r2, [r5, #8]
 aee:	f847 5033 	str.w	r5, [r7, r3, lsl #3]
 af2:	60cd      	str	r5, [r1, #12]
 af4:	4630      	mov	r0, r6
 af6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 afa:	f7ff bec1 	b.w	880 <__malloc_unlock>
 afe:	eb0c 0203 	add.w	r2, ip, r3
 b02:	6852      	ldr	r2, [r2, #4]
 b04:	07d0      	lsls	r0, r2, #31
 b06:	d410      	bmi.n	b2a <_free_r+0xca>
 b08:	4419      	add	r1, r3
 b0a:	f107 0008 	add.w	r0, r7, #8
 b0e:	f8dc 3008 	ldr.w	r3, [ip, #8]
 b12:	4283      	cmp	r3, r0
 b14:	d073      	beq.n	bfe <_free_r+0x19e>
 b16:	f8dc 200c 	ldr.w	r2, [ip, #12]
 b1a:	60da      	str	r2, [r3, #12]
 b1c:	6093      	str	r3, [r2, #8]
 b1e:	f041 0301 	orr.w	r3, r1, #1
 b22:	606b      	str	r3, [r5, #4]
 b24:	5069      	str	r1, [r5, r1]
 b26:	e7d0      	b.n	aca <_free_r+0x6a>
 b28:	4770      	bx	lr
 b2a:	f041 0301 	orr.w	r3, r1, #1
 b2e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 b32:	f844 3c04 	str.w	r3, [r4, #-4]
 b36:	f8cc 1000 	str.w	r1, [ip]
 b3a:	d3c9      	bcc.n	ad0 <_free_r+0x70>
 b3c:	f5b1 6f20 	cmp.w	r1, #2560	; 0xa00
 b40:	ea4f 2351 	mov.w	r3, r1, lsr #9
 b44:	d248      	bcs.n	bd8 <_free_r+0x178>
 b46:	098b      	lsrs	r3, r1, #6
 b48:	f103 0039 	add.w	r0, r3, #57	; 0x39
 b4c:	f103 0238 	add.w	r2, r3, #56	; 0x38
 b50:	00c3      	lsls	r3, r0, #3
 b52:	18f8      	adds	r0, r7, r3
 b54:	58fb      	ldr	r3, [r7, r3]
 b56:	3808      	subs	r0, #8
 b58:	4298      	cmp	r0, r3
 b5a:	d059      	beq.n	c10 <_free_r+0x1b0>
 b5c:	685a      	ldr	r2, [r3, #4]
 b5e:	f022 0203 	bic.w	r2, r2, #3
 b62:	428a      	cmp	r2, r1
 b64:	d902      	bls.n	b6c <_free_r+0x10c>
 b66:	689b      	ldr	r3, [r3, #8]
 b68:	4298      	cmp	r0, r3
 b6a:	d1f7      	bne.n	b5c <_free_r+0xfc>
 b6c:	68d8      	ldr	r0, [r3, #12]
 b6e:	e9c5 3002 	strd	r3, r0, [r5, #8]
 b72:	6085      	str	r5, [r0, #8]
 b74:	60dd      	str	r5, [r3, #12]
 b76:	4630      	mov	r0, r6
 b78:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 b7c:	f7ff be80 	b.w	880 <__malloc_unlock>
 b80:	eb0c 0203 	add.w	r2, ip, r3
 b84:	6852      	ldr	r2, [r2, #4]
 b86:	07d2      	lsls	r2, r2, #31
 b88:	d463      	bmi.n	c52 <_free_r+0x1f2>
 b8a:	440b      	add	r3, r1
 b8c:	e9dc 1202 	ldrd	r1, r2, [ip, #8]
 b90:	60ca      	str	r2, [r1, #12]
 b92:	6091      	str	r1, [r2, #8]
 b94:	f043 0201 	orr.w	r2, r3, #1
 b98:	606a      	str	r2, [r5, #4]
 b9a:	4630      	mov	r0, r6
 b9c:	50eb      	str	r3, [r5, r3]
 b9e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 ba2:	f7ff be6d 	b.w	880 <__malloc_unlock>
 ba6:	440b      	add	r3, r1
 ba8:	07d1      	lsls	r1, r2, #31
 baa:	d407      	bmi.n	bbc <_free_r+0x15c>
 bac:	f854 2c08 	ldr.w	r2, [r4, #-8]
 bb0:	1aad      	subs	r5, r5, r2
 bb2:	4413      	add	r3, r2
 bb4:	e9d5 1202 	ldrd	r1, r2, [r5, #8]
 bb8:	60ca      	str	r2, [r1, #12]
 bba:	6091      	str	r1, [r2, #8]
 bbc:	f043 0201 	orr.w	r2, r3, #1
 bc0:	606a      	str	r2, [r5, #4]
 bc2:	4a28      	ldr	r2, [pc, #160]	; (c64 <_free_r+0x204>)
 bc4:	60bd      	str	r5, [r7, #8]
 bc6:	6812      	ldr	r2, [r2, #0]
 bc8:	429a      	cmp	r2, r3
 bca:	d893      	bhi.n	af4 <_free_r+0x94>
 bcc:	4b26      	ldr	r3, [pc, #152]	; (c68 <_free_r+0x208>)
 bce:	4630      	mov	r0, r6
 bd0:	6819      	ldr	r1, [r3, #0]
 bd2:	f7ff fef5 	bl	9c0 <_malloc_trim_r>
 bd6:	e78d      	b.n	af4 <_free_r+0x94>
 bd8:	2b14      	cmp	r3, #20
 bda:	d90a      	bls.n	bf2 <_free_r+0x192>
 bdc:	2b54      	cmp	r3, #84	; 0x54
 bde:	d81f      	bhi.n	c20 <_free_r+0x1c0>
 be0:	0b0b      	lsrs	r3, r1, #12
 be2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 be6:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 bea:	00c3      	lsls	r3, r0, #3
 bec:	e7b1      	b.n	b52 <_free_r+0xf2>
 bee:	4419      	add	r1, r3
 bf0:	e78d      	b.n	b0e <_free_r+0xae>
 bf2:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 bf6:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 bfa:	00c3      	lsls	r3, r0, #3
 bfc:	e7a9      	b.n	b52 <_free_r+0xf2>
 bfe:	f041 0301 	orr.w	r3, r1, #1
 c02:	e9c7 5504 	strd	r5, r5, [r7, #16]
 c06:	e9c5 0002 	strd	r0, r0, [r5, #8]
 c0a:	606b      	str	r3, [r5, #4]
 c0c:	5069      	str	r1, [r5, r1]
 c0e:	e771      	b.n	af4 <_free_r+0x94>
 c10:	6879      	ldr	r1, [r7, #4]
 c12:	1092      	asrs	r2, r2, #2
 c14:	2401      	movs	r4, #1
 c16:	fa04 f202 	lsl.w	r2, r4, r2
 c1a:	430a      	orrs	r2, r1
 c1c:	607a      	str	r2, [r7, #4]
 c1e:	e7a6      	b.n	b6e <_free_r+0x10e>
 c20:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 c24:	d806      	bhi.n	c34 <_free_r+0x1d4>
 c26:	0bcb      	lsrs	r3, r1, #15
 c28:	f103 0078 	add.w	r0, r3, #120	; 0x78
 c2c:	f103 0277 	add.w	r2, r3, #119	; 0x77
 c30:	00c3      	lsls	r3, r0, #3
 c32:	e78e      	b.n	b52 <_free_r+0xf2>
 c34:	f240 5254 	movw	r2, #1364	; 0x554
 c38:	4293      	cmp	r3, r2
 c3a:	d806      	bhi.n	c4a <_free_r+0x1ea>
 c3c:	0c8b      	lsrs	r3, r1, #18
 c3e:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 c42:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 c46:	00c3      	lsls	r3, r0, #3
 c48:	e783      	b.n	b52 <_free_r+0xf2>
 c4a:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 c4e:	227e      	movs	r2, #126	; 0x7e
 c50:	e77f      	b.n	b52 <_free_r+0xf2>
 c52:	f041 0301 	orr.w	r3, r1, #1
 c56:	606b      	str	r3, [r5, #4]
 c58:	f8cc 1000 	str.w	r1, [ip]
 c5c:	e74a      	b.n	af4 <_free_r+0x94>
 c5e:	bf00      	nop
 c60:	20000460 	.word	0x20000460
 c64:	2000086c 	.word	0x2000086c
 c68:	20000898 	.word	0x20000898

00000c6c <cleanup_glue>:
 c6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 c70:	680e      	ldr	r6, [r1, #0]
 c72:	460c      	mov	r4, r1
 c74:	4605      	mov	r5, r0
 c76:	b1be      	cbz	r6, ca8 <cleanup_glue+0x3c>
 c78:	6837      	ldr	r7, [r6, #0]
 c7a:	b18f      	cbz	r7, ca0 <cleanup_glue+0x34>
 c7c:	f8d7 8000 	ldr.w	r8, [r7]
 c80:	f1b8 0f00 	cmp.w	r8, #0
 c84:	d008      	beq.n	c98 <cleanup_glue+0x2c>
 c86:	f8d8 1000 	ldr.w	r1, [r8]
 c8a:	b109      	cbz	r1, c90 <cleanup_glue+0x24>
 c8c:	f7ff ffee 	bl	c6c <cleanup_glue>
 c90:	4641      	mov	r1, r8
 c92:	4628      	mov	r0, r5
 c94:	f7ff fee4 	bl	a60 <_free_r>
 c98:	4639      	mov	r1, r7
 c9a:	4628      	mov	r0, r5
 c9c:	f7ff fee0 	bl	a60 <_free_r>
 ca0:	4631      	mov	r1, r6
 ca2:	4628      	mov	r0, r5
 ca4:	f7ff fedc 	bl	a60 <_free_r>
 ca8:	4621      	mov	r1, r4
 caa:	4628      	mov	r0, r5
 cac:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 cb0:	f7ff bed6 	b.w	a60 <_free_r>

00000cb4 <_reclaim_reent>:
 cb4:	4b22      	ldr	r3, [pc, #136]	; (d40 <_reclaim_reent+0x8c>)
 cb6:	681b      	ldr	r3, [r3, #0]
 cb8:	4283      	cmp	r3, r0
 cba:	d040      	beq.n	d3e <_reclaim_reent+0x8a>
 cbc:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 cbe:	b570      	push	{r4, r5, r6, lr}
 cc0:	4605      	mov	r5, r0
 cc2:	b181      	cbz	r1, ce6 <_reclaim_reent+0x32>
 cc4:	2600      	movs	r6, #0
 cc6:	598c      	ldr	r4, [r1, r6]
 cc8:	b13c      	cbz	r4, cda <_reclaim_reent+0x26>
 cca:	4621      	mov	r1, r4
 ccc:	6824      	ldr	r4, [r4, #0]
 cce:	4628      	mov	r0, r5
 cd0:	f7ff fec6 	bl	a60 <_free_r>
 cd4:	2c00      	cmp	r4, #0
 cd6:	d1f8      	bne.n	cca <_reclaim_reent+0x16>
 cd8:	6ce9      	ldr	r1, [r5, #76]	; 0x4c
 cda:	3604      	adds	r6, #4
 cdc:	2e80      	cmp	r6, #128	; 0x80
 cde:	d1f2      	bne.n	cc6 <_reclaim_reent+0x12>
 ce0:	4628      	mov	r0, r5
 ce2:	f7ff febd 	bl	a60 <_free_r>
 ce6:	6c29      	ldr	r1, [r5, #64]	; 0x40
 ce8:	b111      	cbz	r1, cf0 <_reclaim_reent+0x3c>
 cea:	4628      	mov	r0, r5
 cec:	f7ff feb8 	bl	a60 <_free_r>
 cf0:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 cf4:	b154      	cbz	r4, d0c <_reclaim_reent+0x58>
 cf6:	f505 76a6 	add.w	r6, r5, #332	; 0x14c
 cfa:	42b4      	cmp	r4, r6
 cfc:	d006      	beq.n	d0c <_reclaim_reent+0x58>
 cfe:	4621      	mov	r1, r4
 d00:	6824      	ldr	r4, [r4, #0]
 d02:	4628      	mov	r0, r5
 d04:	f7ff feac 	bl	a60 <_free_r>
 d08:	42a6      	cmp	r6, r4
 d0a:	d1f8      	bne.n	cfe <_reclaim_reent+0x4a>
 d0c:	6d69      	ldr	r1, [r5, #84]	; 0x54
 d0e:	b111      	cbz	r1, d16 <_reclaim_reent+0x62>
 d10:	4628      	mov	r0, r5
 d12:	f7ff fea5 	bl	a60 <_free_r>
 d16:	6bab      	ldr	r3, [r5, #56]	; 0x38
 d18:	b183      	cbz	r3, d3c <_reclaim_reent+0x88>
 d1a:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 d1c:	4628      	mov	r0, r5
 d1e:	4798      	blx	r3
 d20:	f8d5 42e0 	ldr.w	r4, [r5, #736]	; 0x2e0
 d24:	b154      	cbz	r4, d3c <_reclaim_reent+0x88>
 d26:	6821      	ldr	r1, [r4, #0]
 d28:	b111      	cbz	r1, d30 <_reclaim_reent+0x7c>
 d2a:	4628      	mov	r0, r5
 d2c:	f7ff ff9e 	bl	c6c <cleanup_glue>
 d30:	4621      	mov	r1, r4
 d32:	4628      	mov	r0, r5
 d34:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 d38:	f7ff be92 	b.w	a60 <_free_r>
 d3c:	bd70      	pop	{r4, r5, r6, pc}
 d3e:	4770      	bx	lr
 d40:	20000030 	.word	0x20000030

00000d44 <_sbrk>:
 d44:	4a04      	ldr	r2, [pc, #16]	; (d58 <_sbrk+0x14>)
 d46:	4905      	ldr	r1, [pc, #20]	; (d5c <_sbrk+0x18>)
 d48:	6813      	ldr	r3, [r2, #0]
 d4a:	2b00      	cmp	r3, #0
 d4c:	bf08      	it	eq
 d4e:	460b      	moveq	r3, r1
 d50:	4418      	add	r0, r3
 d52:	6010      	str	r0, [r2, #0]
 d54:	4618      	mov	r0, r3
 d56:	4770      	bx	lr
 d58:	200008d0 	.word	0x200008d0
 d5c:	200008d4 	.word	0x200008d4

00000d60 <_exit>:
 d60:	e7fe      	b.n	d60 <_exit>
 d62:	bf00      	nop

00000d64 <register_fini>:
 d64:	4b02      	ldr	r3, [pc, #8]	; (d70 <register_fini+0xc>)
 d66:	b113      	cbz	r3, d6e <register_fini+0xa>
 d68:	4802      	ldr	r0, [pc, #8]	; (d74 <register_fini+0x10>)
 d6a:	f7ff ba2b 	b.w	1c4 <atexit>
 d6e:	4770      	bx	lr
 d70:	00000000 	.word	0x00000000
 d74:	000001f1 	.word	0x000001f1

00000d78 <__frame_dummy_init_array_entry>:
 d78:	00000069 00000d65                       i...e...

00000d80 <_init>:
 d80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 d82:	bf00      	nop
 d84:	bcf8      	pop	{r3, r4, r5, r6, r7}
 d86:	bc08      	pop	{r3}
 d88:	469e      	mov	lr, r3
 d8a:	4770      	bx	lr

00000d8c <_fini>:
 d8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 d8e:	bf00      	nop

00000d90 <__do_global_dtors_aux_fini_array_entry>:
 d90:	0041 0000 bcf8 bc08 469e 4770               A........FpG
