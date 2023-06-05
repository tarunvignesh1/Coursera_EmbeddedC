
c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4803      	ldr	r0, [pc, #12]	; (150 <deregister_tm_clones+0x10>)
 142:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 144:	4283      	cmp	r3, r0
 146:	d002      	beq.n	14e <deregister_tm_clones+0xe>
 148:	4b03      	ldr	r3, [pc, #12]	; (158 <deregister_tm_clones+0x18>)
 14a:	b103      	cbz	r3, 14e <deregister_tm_clones+0xe>
 14c:	4718      	bx	r3
 14e:	4770      	bx	lr
 150:	20000438 	.word	0x20000438
 154:	20000438 	.word	0x20000438
 158:	00000000 	.word	0x00000000

0000015c <register_tm_clones>:
 15c:	4805      	ldr	r0, [pc, #20]	; (174 <register_tm_clones+0x18>)
 15e:	4906      	ldr	r1, [pc, #24]	; (178 <register_tm_clones+0x1c>)
 160:	1a0b      	subs	r3, r1, r0
 162:	0fd9      	lsrs	r1, r3, #31
 164:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 168:	1049      	asrs	r1, r1, #1
 16a:	d002      	beq.n	172 <register_tm_clones+0x16>
 16c:	4b03      	ldr	r3, [pc, #12]	; (17c <register_tm_clones+0x20>)
 16e:	b103      	cbz	r3, 172 <register_tm_clones+0x16>
 170:	4718      	bx	r3
 172:	4770      	bx	lr
 174:	20000438 	.word	0x20000438
 178:	20000438 	.word	0x20000438
 17c:	00000000 	.word	0x00000000

00000180 <__do_global_dtors_aux>:
 180:	b510      	push	{r4, lr}
 182:	4c06      	ldr	r4, [pc, #24]	; (19c <__do_global_dtors_aux+0x1c>)
 184:	7823      	ldrb	r3, [r4, #0]
 186:	b943      	cbnz	r3, 19a <__do_global_dtors_aux+0x1a>
 188:	f7ff ffda 	bl	140 <deregister_tm_clones>
 18c:	4b04      	ldr	r3, [pc, #16]	; (1a0 <__do_global_dtors_aux+0x20>)
 18e:	b113      	cbz	r3, 196 <__do_global_dtors_aux+0x16>
 190:	4804      	ldr	r0, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x24>)
 192:	f3af 8000 	nop.w
 196:	2301      	movs	r3, #1
 198:	7023      	strb	r3, [r4, #0]
 19a:	bd10      	pop	{r4, pc}
 19c:	20000438 	.word	0x20000438
 1a0:	00000000 	.word	0x00000000
 1a4:	00000aac 	.word	0x00000aac

000001a8 <frame_dummy>:
 1a8:	b508      	push	{r3, lr}
 1aa:	4b04      	ldr	r3, [pc, #16]	; (1bc <frame_dummy+0x14>)
 1ac:	b11b      	cbz	r3, 1b6 <frame_dummy+0xe>
 1ae:	4904      	ldr	r1, [pc, #16]	; (1c0 <frame_dummy+0x18>)
 1b0:	4804      	ldr	r0, [pc, #16]	; (1c4 <frame_dummy+0x1c>)
 1b2:	f3af 8000 	nop.w
 1b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1ba:	e7cf      	b.n	15c <register_tm_clones>
 1bc:	00000000 	.word	0x00000000
 1c0:	2000043c 	.word	0x2000043c
 1c4:	00000aac 	.word	0x00000aac

000001c8 <_stack_init>:
 1c8:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1cc:	4770      	bx	lr
 1ce:	bf00      	nop

000001d0 <_mainCRTStartup>:
 1d0:	4b15      	ldr	r3, [pc, #84]	; (228 <_mainCRTStartup+0x58>)
 1d2:	2b00      	cmp	r3, #0
 1d4:	bf08      	it	eq
 1d6:	4b11      	ldreq	r3, [pc, #68]	; (21c <_mainCRTStartup+0x4c>)
 1d8:	469d      	mov	sp, r3
 1da:	f7ff fff5 	bl	1c8 <_stack_init>
 1de:	2100      	movs	r1, #0
 1e0:	468b      	mov	fp, r1
 1e2:	460f      	mov	r7, r1
 1e4:	4811      	ldr	r0, [pc, #68]	; (22c <_mainCRTStartup+0x5c>)
 1e6:	4a12      	ldr	r2, [pc, #72]	; (230 <_mainCRTStartup+0x60>)
 1e8:	1a12      	subs	r2, r2, r0
 1ea:	f000 faed 	bl	7c8 <memset>
 1ee:	4b0c      	ldr	r3, [pc, #48]	; (220 <_mainCRTStartup+0x50>)
 1f0:	2b00      	cmp	r3, #0
 1f2:	d000      	beq.n	1f6 <_mainCRTStartup+0x26>
 1f4:	4798      	blx	r3
 1f6:	4b0b      	ldr	r3, [pc, #44]	; (224 <_mainCRTStartup+0x54>)
 1f8:	2b00      	cmp	r3, #0
 1fa:	d000      	beq.n	1fe <_mainCRTStartup+0x2e>
 1fc:	4798      	blx	r3
 1fe:	2000      	movs	r0, #0
 200:	2100      	movs	r1, #0
 202:	0004      	movs	r4, r0
 204:	000d      	movs	r5, r1
 206:	480b      	ldr	r0, [pc, #44]	; (234 <_mainCRTStartup+0x64>)
 208:	f000 fa8e 	bl	728 <atexit>
 20c:	f000 fab8 	bl	780 <__libc_init_array>
 210:	0020      	movs	r0, r4
 212:	0029      	movs	r1, r5
 214:	f000 f810 	bl	238 <main>
 218:	f000 fa8c 	bl	734 <exit>
 21c:	00080000 	.word	0x00080000
	...
 228:	20000460 	.word	0x20000460
 22c:	20000438 	.word	0x20000438
 230:	20000460 	.word	0x20000460
 234:	00000755 	.word	0x00000755

00000238 <main>:
 238:	b580      	push	{r7, lr}
 23a:	b082      	sub	sp, #8
 23c:	af00      	add	r7, sp, #0
 23e:	210a      	movs	r1, #10
 240:	4828      	ldr	r0, [pc, #160]	; (2e4 <main+0xac>)
 242:	f000 f89e 	bl	382 <clear_all>
 246:	4b28      	ldr	r3, [pc, #160]	; (2e8 <main+0xb0>)
 248:	2202      	movs	r2, #2
 24a:	212b      	movs	r1, #43	; 0x2b
 24c:	4618      	mov	r0, r3
 24e:	f000 f87c 	bl	34a <set_all>
 252:	2261      	movs	r2, #97	; 0x61
 254:	2100      	movs	r1, #0
 256:	4823      	ldr	r0, [pc, #140]	; (2e4 <main+0xac>)
 258:	f000 f848 	bl	2ec <set_value>
 25c:	2109      	movs	r1, #9
 25e:	4821      	ldr	r0, [pc, #132]	; (2e4 <main+0xac>)
 260:	f000 f864 	bl	32c <get_value>
 264:	4603      	mov	r3, r0
 266:	70fb      	strb	r3, [r7, #3]
 268:	78fb      	ldrb	r3, [r7, #3]
 26a:	3327      	adds	r3, #39	; 0x27
 26c:	b2db      	uxtb	r3, r3
 26e:	461a      	mov	r2, r3
 270:	2109      	movs	r1, #9
 272:	481c      	ldr	r0, [pc, #112]	; (2e4 <main+0xac>)
 274:	f000 f83a 	bl	2ec <set_value>
 278:	2237      	movs	r2, #55	; 0x37
 27a:	2103      	movs	r1, #3
 27c:	4819      	ldr	r0, [pc, #100]	; (2e4 <main+0xac>)
 27e:	f000 f835 	bl	2ec <set_value>
 282:	2258      	movs	r2, #88	; 0x58
 284:	2101      	movs	r1, #1
 286:	4817      	ldr	r0, [pc, #92]	; (2e4 <main+0xac>)
 288:	f000 f830 	bl	2ec <set_value>
 28c:	2232      	movs	r2, #50	; 0x32
 28e:	2104      	movs	r1, #4
 290:	4814      	ldr	r0, [pc, #80]	; (2e4 <main+0xac>)
 292:	f000 f82b 	bl	2ec <set_value>
 296:	2101      	movs	r1, #1
 298:	4812      	ldr	r0, [pc, #72]	; (2e4 <main+0xac>)
 29a:	f000 f847 	bl	32c <get_value>
 29e:	4603      	mov	r3, r0
 2a0:	70fb      	strb	r3, [r7, #3]
 2a2:	2279      	movs	r2, #121	; 0x79
 2a4:	2102      	movs	r1, #2
 2a6:	480f      	ldr	r0, [pc, #60]	; (2e4 <main+0xac>)
 2a8:	f000 f820 	bl	2ec <set_value>
 2ac:	78fb      	ldrb	r3, [r7, #3]
 2ae:	3b0c      	subs	r3, #12
 2b0:	b2db      	uxtb	r3, r3
 2b2:	461a      	mov	r2, r3
 2b4:	2107      	movs	r1, #7
 2b6:	480b      	ldr	r0, [pc, #44]	; (2e4 <main+0xac>)
 2b8:	f000 f818 	bl	2ec <set_value>
 2bc:	225f      	movs	r2, #95	; 0x5f
 2be:	2105      	movs	r1, #5
 2c0:	4808      	ldr	r0, [pc, #32]	; (2e4 <main+0xac>)
 2c2:	f000 f813 	bl	2ec <set_value>
 2c6:	2300      	movs	r3, #0
 2c8:	607b      	str	r3, [r7, #4]
 2ca:	e002      	b.n	2d2 <main+0x9a>
 2cc:	687b      	ldr	r3, [r7, #4]
 2ce:	3301      	adds	r3, #1
 2d0:	607b      	str	r3, [r7, #4]
 2d2:	687b      	ldr	r3, [r7, #4]
 2d4:	2b09      	cmp	r3, #9
 2d6:	d9f9      	bls.n	2cc <main+0x94>
 2d8:	2300      	movs	r3, #0
 2da:	4618      	mov	r0, r3
 2dc:	3708      	adds	r7, #8
 2de:	46bd      	mov	sp, r7
 2e0:	bd80      	pop	{r7, pc}
 2e2:	bf00      	nop
 2e4:	20000454 	.word	0x20000454
 2e8:	2000045c 	.word	0x2000045c

000002ec <set_value>:
 2ec:	b480      	push	{r7}
 2ee:	b085      	sub	sp, #20
 2f0:	af00      	add	r7, sp, #0
 2f2:	60f8      	str	r0, [r7, #12]
 2f4:	60b9      	str	r1, [r7, #8]
 2f6:	4613      	mov	r3, r2
 2f8:	71fb      	strb	r3, [r7, #7]
 2fa:	68fa      	ldr	r2, [r7, #12]
 2fc:	68bb      	ldr	r3, [r7, #8]
 2fe:	4413      	add	r3, r2
 300:	79fa      	ldrb	r2, [r7, #7]
 302:	701a      	strb	r2, [r3, #0]
 304:	bf00      	nop
 306:	3714      	adds	r7, #20
 308:	46bd      	mov	sp, r7
 30a:	f85d 7b04 	ldr.w	r7, [sp], #4
 30e:	4770      	bx	lr

00000310 <clear_value>:
 310:	b580      	push	{r7, lr}
 312:	b082      	sub	sp, #8
 314:	af00      	add	r7, sp, #0
 316:	6078      	str	r0, [r7, #4]
 318:	6039      	str	r1, [r7, #0]
 31a:	2200      	movs	r2, #0
 31c:	6839      	ldr	r1, [r7, #0]
 31e:	6878      	ldr	r0, [r7, #4]
 320:	f7ff ffe4 	bl	2ec <set_value>
 324:	bf00      	nop
 326:	3708      	adds	r7, #8
 328:	46bd      	mov	sp, r7
 32a:	bd80      	pop	{r7, pc}

0000032c <get_value>:
 32c:	b480      	push	{r7}
 32e:	b083      	sub	sp, #12
 330:	af00      	add	r7, sp, #0
 332:	6078      	str	r0, [r7, #4]
 334:	6039      	str	r1, [r7, #0]
 336:	687a      	ldr	r2, [r7, #4]
 338:	683b      	ldr	r3, [r7, #0]
 33a:	4413      	add	r3, r2
 33c:	781b      	ldrb	r3, [r3, #0]
 33e:	4618      	mov	r0, r3
 340:	370c      	adds	r7, #12
 342:	46bd      	mov	sp, r7
 344:	f85d 7b04 	ldr.w	r7, [sp], #4
 348:	4770      	bx	lr

0000034a <set_all>:
 34a:	b580      	push	{r7, lr}
 34c:	b086      	sub	sp, #24
 34e:	af00      	add	r7, sp, #0
 350:	60f8      	str	r0, [r7, #12]
 352:	460b      	mov	r3, r1
 354:	607a      	str	r2, [r7, #4]
 356:	72fb      	strb	r3, [r7, #11]
 358:	2300      	movs	r3, #0
 35a:	617b      	str	r3, [r7, #20]
 35c:	e008      	b.n	370 <set_all+0x26>
 35e:	7afb      	ldrb	r3, [r7, #11]
 360:	461a      	mov	r2, r3
 362:	6979      	ldr	r1, [r7, #20]
 364:	68f8      	ldr	r0, [r7, #12]
 366:	f7ff ffc1 	bl	2ec <set_value>
 36a:	697b      	ldr	r3, [r7, #20]
 36c:	3301      	adds	r3, #1
 36e:	617b      	str	r3, [r7, #20]
 370:	697a      	ldr	r2, [r7, #20]
 372:	687b      	ldr	r3, [r7, #4]
 374:	429a      	cmp	r2, r3
 376:	d3f2      	bcc.n	35e <set_all+0x14>
 378:	bf00      	nop
 37a:	bf00      	nop
 37c:	3718      	adds	r7, #24
 37e:	46bd      	mov	sp, r7
 380:	bd80      	pop	{r7, pc}

00000382 <clear_all>:
 382:	b580      	push	{r7, lr}
 384:	b082      	sub	sp, #8
 386:	af00      	add	r7, sp, #0
 388:	6078      	str	r0, [r7, #4]
 38a:	6039      	str	r1, [r7, #0]
 38c:	683a      	ldr	r2, [r7, #0]
 38e:	2100      	movs	r1, #0
 390:	6878      	ldr	r0, [r7, #4]
 392:	f7ff ffda 	bl	34a <set_all>
 396:	bf00      	nop
 398:	3708      	adds	r7, #8
 39a:	46bd      	mov	sp, r7
 39c:	bd80      	pop	{r7, pc}
	...

000003a0 <SystemCoreClockUpdate>:
 3a0:	b480      	push	{r7}
 3a2:	b089      	sub	sp, #36	; 0x24
 3a4:	af00      	add	r7, sp, #0
 3a6:	4ba4      	ldr	r3, [pc, #656]	; (638 <SystemCoreClockUpdate+0x298>)
 3a8:	689b      	ldr	r3, [r3, #8]
 3aa:	0c1b      	lsrs	r3, r3, #16
 3ac:	f003 0307 	and.w	r3, r3, #7
 3b0:	60fb      	str	r3, [r7, #12]
 3b2:	2201      	movs	r2, #1
 3b4:	68fb      	ldr	r3, [r7, #12]
 3b6:	fa02 f303 	lsl.w	r3, r2, r3
 3ba:	72fb      	strb	r3, [r7, #11]
 3bc:	4b9e      	ldr	r3, [pc, #632]	; (638 <SystemCoreClockUpdate+0x298>)
 3be:	689b      	ldr	r3, [r3, #8]
 3c0:	f003 0307 	and.w	r3, r3, #7
 3c4:	607b      	str	r3, [r7, #4]
 3c6:	687b      	ldr	r3, [r7, #4]
 3c8:	2b05      	cmp	r3, #5
 3ca:	f200 8163 	bhi.w	694 <SystemCoreClockUpdate+0x2f4>
 3ce:	a201      	add	r2, pc, #4	; (adr r2, 3d4 <SystemCoreClockUpdate+0x34>)
 3d0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3d4:	000003ed 	.word	0x000003ed
 3d8:	0000046d 	.word	0x0000046d
 3dc:	0000047f 	.word	0x0000047f
 3e0:	000004ad 	.word	0x000004ad
 3e4:	000005cd 	.word	0x000005cd
 3e8:	000005dd 	.word	0x000005dd
 3ec:	4b93      	ldr	r3, [pc, #588]	; (63c <SystemCoreClockUpdate+0x29c>)
 3ee:	781b      	ldrb	r3, [r3, #0]
 3f0:	b2db      	uxtb	r3, r3
 3f2:	2b00      	cmp	r3, #0
 3f4:	d031      	beq.n	45a <SystemCoreClockUpdate+0xba>
 3f6:	4b90      	ldr	r3, [pc, #576]	; (638 <SystemCoreClockUpdate+0x298>)
 3f8:	f646 125a 	movw	r2, #26970	; 0x695a
 3fc:	601a      	str	r2, [r3, #0]
 3fe:	4b8e      	ldr	r3, [pc, #568]	; (638 <SystemCoreClockUpdate+0x298>)
 400:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 402:	4a8d      	ldr	r2, [pc, #564]	; (638 <SystemCoreClockUpdate+0x298>)
 404:	f043 0301 	orr.w	r3, r3, #1
 408:	6513      	str	r3, [r2, #80]	; 0x50
 40a:	4b8b      	ldr	r3, [pc, #556]	; (638 <SystemCoreClockUpdate+0x298>)
 40c:	2201      	movs	r2, #1
 40e:	601a      	str	r2, [r3, #0]
 410:	4b8a      	ldr	r3, [pc, #552]	; (63c <SystemCoreClockUpdate+0x29c>)
 412:	781b      	ldrb	r3, [r3, #0]
 414:	b2db      	uxtb	r3, r3
 416:	2b00      	cmp	r3, #0
 418:	d016      	beq.n	448 <SystemCoreClockUpdate+0xa8>
 41a:	4b89      	ldr	r3, [pc, #548]	; (640 <SystemCoreClockUpdate+0x2a0>)
 41c:	781b      	ldrb	r3, [r3, #0]
 41e:	b2db      	uxtb	r3, r3
 420:	2b00      	cmp	r3, #0
 422:	d008      	beq.n	436 <SystemCoreClockUpdate+0x96>
 424:	7afb      	ldrb	r3, [r7, #11]
 426:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 42a:	fb92 f3f3 	sdiv	r3, r2, r3
 42e:	461a      	mov	r2, r3
 430:	4b84      	ldr	r3, [pc, #528]	; (644 <SystemCoreClockUpdate+0x2a4>)
 432:	601a      	str	r2, [r3, #0]
 434:	e12e      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 436:	7afb      	ldrb	r3, [r7, #11]
 438:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 43c:	fb92 f3f3 	sdiv	r3, r2, r3
 440:	461a      	mov	r2, r3
 442:	4b80      	ldr	r3, [pc, #512]	; (644 <SystemCoreClockUpdate+0x2a4>)
 444:	601a      	str	r2, [r3, #0]
 446:	e125      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 448:	7afb      	ldrb	r3, [r7, #11]
 44a:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 44e:	fb92 f3f3 	sdiv	r3, r2, r3
 452:	461a      	mov	r2, r3
 454:	4b7b      	ldr	r3, [pc, #492]	; (644 <SystemCoreClockUpdate+0x2a4>)
 456:	601a      	str	r2, [r3, #0]
 458:	e11c      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 45a:	7afb      	ldrb	r3, [r7, #11]
 45c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 460:	fb92 f3f3 	sdiv	r3, r2, r3
 464:	461a      	mov	r2, r3
 466:	4b77      	ldr	r3, [pc, #476]	; (644 <SystemCoreClockUpdate+0x2a4>)
 468:	601a      	str	r2, [r3, #0]
 46a:	e113      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 46c:	7afb      	ldrb	r3, [r7, #11]
 46e:	f242 7210 	movw	r2, #10000	; 0x2710
 472:	fb92 f3f3 	sdiv	r3, r2, r3
 476:	461a      	mov	r2, r3
 478:	4b72      	ldr	r3, [pc, #456]	; (644 <SystemCoreClockUpdate+0x2a4>)
 47a:	601a      	str	r2, [r3, #0]
 47c:	e10a      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 47e:	4b70      	ldr	r3, [pc, #448]	; (640 <SystemCoreClockUpdate+0x2a0>)
 480:	781b      	ldrb	r3, [r3, #0]
 482:	b2db      	uxtb	r3, r3
 484:	2b00      	cmp	r3, #0
 486:	d008      	beq.n	49a <SystemCoreClockUpdate+0xfa>
 488:	7afb      	ldrb	r3, [r7, #11]
 48a:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 48e:	fb92 f3f3 	sdiv	r3, r2, r3
 492:	461a      	mov	r2, r3
 494:	4b6b      	ldr	r3, [pc, #428]	; (644 <SystemCoreClockUpdate+0x2a4>)
 496:	601a      	str	r2, [r3, #0]
 498:	e0fc      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 49a:	7afb      	ldrb	r3, [r7, #11]
 49c:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4a0:	fb92 f3f3 	sdiv	r3, r2, r3
 4a4:	461a      	mov	r2, r3
 4a6:	4b67      	ldr	r3, [pc, #412]	; (644 <SystemCoreClockUpdate+0x2a4>)
 4a8:	601a      	str	r2, [r3, #0]
 4aa:	e0f3      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 4ac:	4b62      	ldr	r3, [pc, #392]	; (638 <SystemCoreClockUpdate+0x298>)
 4ae:	685b      	ldr	r3, [r3, #4]
 4b0:	b21b      	sxth	r3, r3
 4b2:	f3c3 0309 	ubfx	r3, r3, #0, #10
 4b6:	827b      	strh	r3, [r7, #18]
 4b8:	4b5f      	ldr	r3, [pc, #380]	; (638 <SystemCoreClockUpdate+0x298>)
 4ba:	685b      	ldr	r3, [r3, #4]
 4bc:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 4c0:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4c4:	d029      	beq.n	51a <SystemCoreClockUpdate+0x17a>
 4c6:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4ca:	d829      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4cc:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4d0:	d020      	beq.n	514 <SystemCoreClockUpdate+0x174>
 4d2:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4d6:	d823      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4d8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4dc:	d017      	beq.n	50e <SystemCoreClockUpdate+0x16e>
 4de:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4e2:	d81d      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4e4:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4e8:	d00e      	beq.n	508 <SystemCoreClockUpdate+0x168>
 4ea:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4ee:	d817      	bhi.n	520 <SystemCoreClockUpdate+0x180>
 4f0:	2b00      	cmp	r3, #0
 4f2:	d003      	beq.n	4fc <SystemCoreClockUpdate+0x15c>
 4f4:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4f8:	d003      	beq.n	502 <SystemCoreClockUpdate+0x162>
 4fa:	e011      	b.n	520 <SystemCoreClockUpdate+0x180>
 4fc:	4b52      	ldr	r3, [pc, #328]	; (648 <SystemCoreClockUpdate+0x2a8>)
 4fe:	617b      	str	r3, [r7, #20]
 500:	e00e      	b.n	520 <SystemCoreClockUpdate+0x180>
 502:	4b52      	ldr	r3, [pc, #328]	; (64c <SystemCoreClockUpdate+0x2ac>)
 504:	617b      	str	r3, [r7, #20]
 506:	e00b      	b.n	520 <SystemCoreClockUpdate+0x180>
 508:	4b51      	ldr	r3, [pc, #324]	; (650 <SystemCoreClockUpdate+0x2b0>)
 50a:	617b      	str	r3, [r7, #20]
 50c:	e008      	b.n	520 <SystemCoreClockUpdate+0x180>
 50e:	4b51      	ldr	r3, [pc, #324]	; (654 <SystemCoreClockUpdate+0x2b4>)
 510:	617b      	str	r3, [r7, #20]
 512:	e005      	b.n	520 <SystemCoreClockUpdate+0x180>
 514:	4b50      	ldr	r3, [pc, #320]	; (658 <SystemCoreClockUpdate+0x2b8>)
 516:	617b      	str	r3, [r7, #20]
 518:	e002      	b.n	520 <SystemCoreClockUpdate+0x180>
 51a:	4b50      	ldr	r3, [pc, #320]	; (65c <SystemCoreClockUpdate+0x2bc>)
 51c:	617b      	str	r3, [r7, #20]
 51e:	bf00      	nop
 520:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 524:	2b00      	cmp	r3, #0
 526:	d103      	bne.n	530 <SystemCoreClockUpdate+0x190>
 528:	4a46      	ldr	r2, [pc, #280]	; (644 <SystemCoreClockUpdate+0x2a4>)
 52a:	697b      	ldr	r3, [r7, #20]
 52c:	6013      	str	r3, [r2, #0]
 52e:	e0b1      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 530:	8a7b      	ldrh	r3, [r7, #18]
 532:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 536:	2b00      	cmp	r3, #0
 538:	d005      	beq.n	546 <SystemCoreClockUpdate+0x1a6>
 53a:	8a7b      	ldrh	r3, [r7, #18]
 53c:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 540:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 544:	827b      	strh	r3, [r7, #18]
 546:	4b46      	ldr	r3, [pc, #280]	; (660 <SystemCoreClockUpdate+0x2c0>)
 548:	781b      	ldrb	r3, [r3, #0]
 54a:	b2db      	uxtb	r3, r3
 54c:	2b00      	cmp	r3, #0
 54e:	d006      	beq.n	55e <SystemCoreClockUpdate+0x1be>
 550:	4b44      	ldr	r3, [pc, #272]	; (664 <SystemCoreClockUpdate+0x2c4>)
 552:	681b      	ldr	r3, [r3, #0]
 554:	61fb      	str	r3, [r7, #28]
 556:	4b44      	ldr	r3, [pc, #272]	; (668 <SystemCoreClockUpdate+0x2c8>)
 558:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 55a:	61bb      	str	r3, [r7, #24]
 55c:	e005      	b.n	56a <SystemCoreClockUpdate+0x1ca>
 55e:	4b43      	ldr	r3, [pc, #268]	; (66c <SystemCoreClockUpdate+0x2cc>)
 560:	681b      	ldr	r3, [r3, #0]
 562:	61fb      	str	r3, [r7, #28]
 564:	4b40      	ldr	r3, [pc, #256]	; (668 <SystemCoreClockUpdate+0x2c8>)
 566:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 568:	61bb      	str	r3, [r7, #24]
 56a:	697b      	ldr	r3, [r7, #20]
 56c:	ee07 3a90 	vmov	s15, r3
 570:	eef8 6a67 	vcvt.f32.u32	s13, s15
 574:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 578:	ee07 3a90 	vmov	s15, r3
 57c:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 580:	edd7 7a07 	vldr	s15, [r7, #28]
 584:	ee27 6a27 	vmul.f32	s12, s14, s15
 588:	69bb      	ldr	r3, [r7, #24]
 58a:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 58e:	ee07 3a90 	vmov	s15, r3
 592:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 596:	edd7 7a07 	vldr	s15, [r7, #28]
 59a:	ee67 7a27 	vmul.f32	s15, s14, s15
 59e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5a2:	ee77 7a87 	vadd.f32	s15, s15, s14
 5a6:	eeb2 7a00 	vmov.f32	s14, #32	; 0x41000000  8.0
 5aa:	ee27 7a87 	vmul.f32	s14, s15, s14
 5ae:	eec6 7a07 	vdiv.f32	s15, s12, s14
 5b2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5b6:	ee37 7a67 	vsub.f32	s14, s14, s15
 5ba:	eec6 7a87 	vdiv.f32	s15, s13, s14
 5be:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 5c2:	ee17 2a90 	vmov	r2, s15
 5c6:	4b1f      	ldr	r3, [pc, #124]	; (644 <SystemCoreClockUpdate+0x2a4>)
 5c8:	601a      	str	r2, [r3, #0]
 5ca:	e063      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 5cc:	7afb      	ldrb	r3, [r7, #11]
 5ce:	4a22      	ldr	r2, [pc, #136]	; (658 <SystemCoreClockUpdate+0x2b8>)
 5d0:	fb92 f3f3 	sdiv	r3, r2, r3
 5d4:	461a      	mov	r2, r3
 5d6:	4b1b      	ldr	r3, [pc, #108]	; (644 <SystemCoreClockUpdate+0x2a4>)
 5d8:	601a      	str	r2, [r3, #0]
 5da:	e05b      	b.n	694 <SystemCoreClockUpdate+0x2f4>
 5dc:	4b24      	ldr	r3, [pc, #144]	; (670 <SystemCoreClockUpdate+0x2d0>)
 5de:	781b      	ldrb	r3, [r3, #0]
 5e0:	b2db      	uxtb	r3, r3
 5e2:	2b00      	cmp	r3, #0
 5e4:	d04e      	beq.n	684 <SystemCoreClockUpdate+0x2e4>
 5e6:	4b14      	ldr	r3, [pc, #80]	; (638 <SystemCoreClockUpdate+0x298>)
 5e8:	f646 125a 	movw	r2, #26970	; 0x695a
 5ec:	601a      	str	r2, [r3, #0]
 5ee:	4b12      	ldr	r3, [pc, #72]	; (638 <SystemCoreClockUpdate+0x298>)
 5f0:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5f2:	4a11      	ldr	r2, [pc, #68]	; (638 <SystemCoreClockUpdate+0x298>)
 5f4:	f043 0302 	orr.w	r3, r3, #2
 5f8:	6513      	str	r3, [r2, #80]	; 0x50
 5fa:	4b0f      	ldr	r3, [pc, #60]	; (638 <SystemCoreClockUpdate+0x298>)
 5fc:	2201      	movs	r2, #1
 5fe:	601a      	str	r2, [r3, #0]
 600:	4b1b      	ldr	r3, [pc, #108]	; (670 <SystemCoreClockUpdate+0x2d0>)
 602:	781b      	ldrb	r3, [r3, #0]
 604:	b2db      	uxtb	r3, r3
 606:	2b00      	cmp	r3, #0
 608:	d034      	beq.n	674 <SystemCoreClockUpdate+0x2d4>
 60a:	4b0d      	ldr	r3, [pc, #52]	; (640 <SystemCoreClockUpdate+0x2a0>)
 60c:	781b      	ldrb	r3, [r3, #0]
 60e:	b2db      	uxtb	r3, r3
 610:	2b00      	cmp	r3, #0
 612:	d008      	beq.n	626 <SystemCoreClockUpdate+0x286>
 614:	7afb      	ldrb	r3, [r7, #11]
 616:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 61a:	fb92 f3f3 	sdiv	r3, r2, r3
 61e:	461a      	mov	r2, r3
 620:	4b08      	ldr	r3, [pc, #32]	; (644 <SystemCoreClockUpdate+0x2a4>)
 622:	601a      	str	r2, [r3, #0]
 624:	e035      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 626:	7afb      	ldrb	r3, [r7, #11]
 628:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 62c:	fb92 f3f3 	sdiv	r3, r2, r3
 630:	461a      	mov	r2, r3
 632:	4b04      	ldr	r3, [pc, #16]	; (644 <SystemCoreClockUpdate+0x2a4>)
 634:	601a      	str	r2, [r3, #0]
 636:	e02c      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 638:	40010400 	.word	0x40010400
 63c:	42208900 	.word	0x42208900
 640:	4220863c 	.word	0x4220863c
 644:	20000004 	.word	0x20000004
 648:	0016e360 	.word	0x0016e360
 64c:	002dc6c0 	.word	0x002dc6c0
 650:	005b8d80 	.word	0x005b8d80
 654:	00b71b00 	.word	0x00b71b00
 658:	016e3600 	.word	0x016e3600
 65c:	02dc6c00 	.word	0x02dc6c00
 660:	422080d8 	.word	0x422080d8
 664:	00201084 	.word	0x00201084
 668:	00201000 	.word	0x00201000
 66c:	00201064 	.word	0x00201064
 670:	42208904 	.word	0x42208904
 674:	7afb      	ldrb	r3, [r7, #11]
 676:	4a0a      	ldr	r2, [pc, #40]	; (6a0 <SystemCoreClockUpdate+0x300>)
 678:	fb92 f3f3 	sdiv	r3, r2, r3
 67c:	461a      	mov	r2, r3
 67e:	4b09      	ldr	r3, [pc, #36]	; (6a4 <SystemCoreClockUpdate+0x304>)
 680:	601a      	str	r2, [r3, #0]
 682:	e006      	b.n	692 <SystemCoreClockUpdate+0x2f2>
 684:	7afb      	ldrb	r3, [r7, #11]
 686:	4a06      	ldr	r2, [pc, #24]	; (6a0 <SystemCoreClockUpdate+0x300>)
 688:	fb92 f3f3 	sdiv	r3, r2, r3
 68c:	461a      	mov	r2, r3
 68e:	4b05      	ldr	r3, [pc, #20]	; (6a4 <SystemCoreClockUpdate+0x304>)
 690:	601a      	str	r2, [r3, #0]
 692:	bf00      	nop
 694:	bf00      	nop
 696:	3724      	adds	r7, #36	; 0x24
 698:	46bd      	mov	sp, r7
 69a:	f85d 7b04 	ldr.w	r7, [sp], #4
 69e:	4770      	bx	lr
 6a0:	02dc6c00 	.word	0x02dc6c00
 6a4:	20000004 	.word	0x20000004

000006a8 <SystemInit>:
 6a8:	b480      	push	{r7}
 6aa:	af00      	add	r7, sp, #0
 6ac:	4b19      	ldr	r3, [pc, #100]	; (714 <SystemInit+0x6c>)
 6ae:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 6b2:	4a18      	ldr	r2, [pc, #96]	; (714 <SystemInit+0x6c>)
 6b4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 6b8:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 6bc:	4b16      	ldr	r3, [pc, #88]	; (718 <SystemInit+0x70>)
 6be:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 6c2:	819a      	strh	r2, [r3, #12]
 6c4:	4b15      	ldr	r3, [pc, #84]	; (71c <SystemInit+0x74>)
 6c6:	2280      	movs	r2, #128	; 0x80
 6c8:	615a      	str	r2, [r3, #20]
 6ca:	4b15      	ldr	r3, [pc, #84]	; (720 <SystemInit+0x78>)
 6cc:	f646 125a 	movw	r2, #26970	; 0x695a
 6d0:	601a      	str	r2, [r3, #0]
 6d2:	4b13      	ldr	r3, [pc, #76]	; (720 <SystemInit+0x78>)
 6d4:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 6d8:	605a      	str	r2, [r3, #4]
 6da:	4b11      	ldr	r3, [pc, #68]	; (720 <SystemInit+0x78>)
 6dc:	689b      	ldr	r3, [r3, #8]
 6de:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6e2:	4a0f      	ldr	r2, [pc, #60]	; (720 <SystemInit+0x78>)
 6e4:	f043 0303 	orr.w	r3, r3, #3
 6e8:	6093      	str	r3, [r2, #8]
 6ea:	4b0d      	ldr	r3, [pc, #52]	; (720 <SystemInit+0x78>)
 6ec:	2200      	movs	r2, #0
 6ee:	601a      	str	r2, [r3, #0]
 6f0:	4b0c      	ldr	r3, [pc, #48]	; (724 <SystemInit+0x7c>)
 6f2:	691b      	ldr	r3, [r3, #16]
 6f4:	4a0b      	ldr	r2, [pc, #44]	; (724 <SystemInit+0x7c>)
 6f6:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6fa:	6113      	str	r3, [r2, #16]
 6fc:	4b09      	ldr	r3, [pc, #36]	; (724 <SystemInit+0x7c>)
 6fe:	695b      	ldr	r3, [r3, #20]
 700:	4a08      	ldr	r2, [pc, #32]	; (724 <SystemInit+0x7c>)
 702:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 706:	6153      	str	r3, [r2, #20]
 708:	bf00      	nop
 70a:	46bd      	mov	sp, r7
 70c:	f85d 7b04 	ldr.w	r7, [sp], #4
 710:	4770      	bx	lr
 712:	bf00      	nop
 714:	e000ed00 	.word	0xe000ed00
 718:	40004800 	.word	0x40004800
 71c:	e0043000 	.word	0xe0043000
 720:	40010400 	.word	0x40010400
 724:	40011000 	.word	0x40011000

00000728 <atexit>:
 728:	2300      	movs	r3, #0
 72a:	4601      	mov	r1, r0
 72c:	461a      	mov	r2, r3
 72e:	4618      	mov	r0, r3
 730:	f000 b89c 	b.w	86c <__register_exitproc>

00000734 <exit>:
 734:	b508      	push	{r3, lr}
 736:	2100      	movs	r1, #0
 738:	4604      	mov	r4, r0
 73a:	f000 f8cb 	bl	8d4 <__call_exitprocs>
 73e:	4b04      	ldr	r3, [pc, #16]	; (750 <exit+0x1c>)
 740:	6818      	ldr	r0, [r3, #0]
 742:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 744:	b103      	cbz	r3, 748 <exit+0x14>
 746:	4798      	blx	r3
 748:	4620      	mov	r0, r4
 74a:	f000 f91f 	bl	98c <_exit>
 74e:	bf00      	nop
 750:	00000a84 	.word	0x00000a84

00000754 <__libc_fini_array>:
 754:	b538      	push	{r3, r4, r5, lr}
 756:	4b08      	ldr	r3, [pc, #32]	; (778 <__libc_fini_array+0x24>)
 758:	4d08      	ldr	r5, [pc, #32]	; (77c <__libc_fini_array+0x28>)
 75a:	1b5b      	subs	r3, r3, r5
 75c:	109c      	asrs	r4, r3, #2
 75e:	d007      	beq.n	770 <__libc_fini_array+0x1c>
 760:	3b04      	subs	r3, #4
 762:	441d      	add	r5, r3
 764:	3c01      	subs	r4, #1
 766:	f855 3904 	ldr.w	r3, [r5], #-4
 76a:	4798      	blx	r3
 76c:	2c00      	cmp	r4, #0
 76e:	d1f9      	bne.n	764 <__libc_fini_array+0x10>
 770:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 774:	f000 b920 	b.w	9b8 <_fini>
	...

00000780 <__libc_init_array>:
 780:	b570      	push	{r4, r5, r6, lr}
 782:	4e0d      	ldr	r6, [pc, #52]	; (7b8 <__libc_init_array+0x38>)
 784:	4d0d      	ldr	r5, [pc, #52]	; (7bc <__libc_init_array+0x3c>)
 786:	1b76      	subs	r6, r6, r5
 788:	10b6      	asrs	r6, r6, #2
 78a:	d006      	beq.n	79a <__libc_init_array+0x1a>
 78c:	2400      	movs	r4, #0
 78e:	f855 3b04 	ldr.w	r3, [r5], #4
 792:	3401      	adds	r4, #1
 794:	4798      	blx	r3
 796:	42a6      	cmp	r6, r4
 798:	d1f9      	bne.n	78e <__libc_init_array+0xe>
 79a:	4e09      	ldr	r6, [pc, #36]	; (7c0 <__libc_init_array+0x40>)
 79c:	4d09      	ldr	r5, [pc, #36]	; (7c4 <__libc_init_array+0x44>)
 79e:	1b76      	subs	r6, r6, r5
 7a0:	f000 f904 	bl	9ac <_init>
 7a4:	10b6      	asrs	r6, r6, #2
 7a6:	d006      	beq.n	7b6 <__libc_init_array+0x36>
 7a8:	2400      	movs	r4, #0
 7aa:	f855 3b04 	ldr.w	r3, [r5], #4
 7ae:	3401      	adds	r4, #1
 7b0:	4798      	blx	r3
 7b2:	42a6      	cmp	r6, r4
 7b4:	d1f9      	bne.n	7aa <__libc_init_array+0x2a>
 7b6:	bd70      	pop	{r4, r5, r6, pc}
	...
 7c0:	000009ac 	.word	0x000009ac
 7c4:	000009a4 	.word	0x000009a4

000007c8 <memset>:
 7c8:	0783      	lsls	r3, r0, #30
 7ca:	b530      	push	{r4, r5, lr}
 7cc:	d048      	beq.n	860 <memset+0x98>
 7ce:	1e54      	subs	r4, r2, #1
 7d0:	2a00      	cmp	r2, #0
 7d2:	d03f      	beq.n	854 <memset+0x8c>
 7d4:	b2ca      	uxtb	r2, r1
 7d6:	4603      	mov	r3, r0
 7d8:	e001      	b.n	7de <memset+0x16>
 7da:	3c01      	subs	r4, #1
 7dc:	d33a      	bcc.n	854 <memset+0x8c>
 7de:	f803 2b01 	strb.w	r2, [r3], #1
 7e2:	079d      	lsls	r5, r3, #30
 7e4:	d1f9      	bne.n	7da <memset+0x12>
 7e6:	2c03      	cmp	r4, #3
 7e8:	d92d      	bls.n	846 <memset+0x7e>
 7ea:	b2cd      	uxtb	r5, r1
 7ec:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7f0:	2c0f      	cmp	r4, #15
 7f2:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 7f6:	d936      	bls.n	866 <memset+0x9e>
 7f8:	f1a4 0210 	sub.w	r2, r4, #16
 7fc:	f022 0c0f 	bic.w	ip, r2, #15
 800:	f103 0e20 	add.w	lr, r3, #32
 804:	44e6      	add	lr, ip
 806:	ea4f 1c12 	mov.w	ip, r2, lsr #4
 80a:	f103 0210 	add.w	r2, r3, #16
 80e:	e942 5504 	strd	r5, r5, [r2, #-16]
 812:	e942 5502 	strd	r5, r5, [r2, #-8]
 816:	3210      	adds	r2, #16
 818:	4572      	cmp	r2, lr
 81a:	d1f8      	bne.n	80e <memset+0x46>
 81c:	f10c 0201 	add.w	r2, ip, #1
 820:	f014 0f0c 	tst.w	r4, #12
 824:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 828:	f004 0c0f 	and.w	ip, r4, #15
 82c:	d013      	beq.n	856 <memset+0x8e>
 82e:	f1ac 0304 	sub.w	r3, ip, #4
 832:	f023 0303 	bic.w	r3, r3, #3
 836:	3304      	adds	r3, #4
 838:	4413      	add	r3, r2
 83a:	f842 5b04 	str.w	r5, [r2], #4
 83e:	4293      	cmp	r3, r2
 840:	d1fb      	bne.n	83a <memset+0x72>
 842:	f00c 0403 	and.w	r4, ip, #3
 846:	b12c      	cbz	r4, 854 <memset+0x8c>
 848:	b2ca      	uxtb	r2, r1
 84a:	441c      	add	r4, r3
 84c:	f803 2b01 	strb.w	r2, [r3], #1
 850:	429c      	cmp	r4, r3
 852:	d1fb      	bne.n	84c <memset+0x84>
 854:	bd30      	pop	{r4, r5, pc}
 856:	4664      	mov	r4, ip
 858:	4613      	mov	r3, r2
 85a:	2c00      	cmp	r4, #0
 85c:	d1f4      	bne.n	848 <memset+0x80>
 85e:	e7f9      	b.n	854 <memset+0x8c>
 860:	4603      	mov	r3, r0
 862:	4614      	mov	r4, r2
 864:	e7bf      	b.n	7e6 <memset+0x1e>
 866:	461a      	mov	r2, r3
 868:	46a4      	mov	ip, r4
 86a:	e7e0      	b.n	82e <memset+0x66>

0000086c <__register_exitproc>:
 86c:	b470      	push	{r4, r5, r6}
 86e:	4c18      	ldr	r4, [pc, #96]	; (8d0 <__register_exitproc+0x64>)
 870:	6825      	ldr	r5, [r4, #0]
 872:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 876:	b31c      	cbz	r4, 8c0 <__register_exitproc+0x54>
 878:	6865      	ldr	r5, [r4, #4]
 87a:	2d1f      	cmp	r5, #31
 87c:	dc25      	bgt.n	8ca <__register_exitproc+0x5e>
 87e:	b938      	cbnz	r0, 890 <__register_exitproc+0x24>
 880:	1cab      	adds	r3, r5, #2
 882:	3501      	adds	r5, #1
 884:	6065      	str	r5, [r4, #4]
 886:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
 88a:	2000      	movs	r0, #0
 88c:	bc70      	pop	{r4, r5, r6}
 88e:	4770      	bx	lr
 890:	eb04 0c85 	add.w	ip, r4, r5, lsl #2
 894:	2802      	cmp	r0, #2
 896:	f8cc 2088 	str.w	r2, [ip, #136]	; 0x88
 89a:	f8d4 6188 	ldr.w	r6, [r4, #392]	; 0x188
 89e:	f04f 0201 	mov.w	r2, #1
 8a2:	fa02 f205 	lsl.w	r2, r2, r5
 8a6:	ea46 0602 	orr.w	r6, r6, r2
 8aa:	f8c4 6188 	str.w	r6, [r4, #392]	; 0x188
 8ae:	f8cc 3108 	str.w	r3, [ip, #264]	; 0x108
 8b2:	d1e5      	bne.n	880 <__register_exitproc+0x14>
 8b4:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 8b8:	4313      	orrs	r3, r2
 8ba:	f8c4 318c 	str.w	r3, [r4, #396]	; 0x18c
 8be:	e7df      	b.n	880 <__register_exitproc+0x14>
 8c0:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8c4:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8c8:	e7d6      	b.n	878 <__register_exitproc+0xc>
 8ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8ce:	e7dd      	b.n	88c <__register_exitproc+0x20>
 8d0:	00000a84 	.word	0x00000a84

000008d4 <__call_exitprocs>:
 8d4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8d8:	4b2b      	ldr	r3, [pc, #172]	; (988 <__call_exitprocs+0xb4>)
 8da:	681f      	ldr	r7, [r3, #0]
 8dc:	f8d7 6148 	ldr.w	r6, [r7, #328]	; 0x148
 8e0:	ed2d 8b02 	vpush	{d8}
 8e4:	b1c6      	cbz	r6, 918 <__call_exitprocs+0x44>
 8e6:	ee08 0a10 	vmov	s16, r0
 8ea:	468b      	mov	fp, r1
 8ec:	f04f 0801 	mov.w	r8, #1
 8f0:	f04f 0900 	mov.w	r9, #0
 8f4:	6874      	ldr	r4, [r6, #4]
 8f6:	1e65      	subs	r5, r4, #1
 8f8:	d40e      	bmi.n	918 <__call_exitprocs+0x44>
 8fa:	3401      	adds	r4, #1
 8fc:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 900:	f1bb 0f00 	cmp.w	fp, #0
 904:	d00c      	beq.n	920 <__call_exitprocs+0x4c>
 906:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 90a:	455b      	cmp	r3, fp
 90c:	d008      	beq.n	920 <__call_exitprocs+0x4c>
 90e:	3d01      	subs	r5, #1
 910:	1c6b      	adds	r3, r5, #1
 912:	f1a4 0404 	sub.w	r4, r4, #4
 916:	d1f3      	bne.n	900 <__call_exitprocs+0x2c>
 918:	ecbd 8b02 	vpop	{d8}
 91c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 920:	6873      	ldr	r3, [r6, #4]
 922:	6822      	ldr	r2, [r4, #0]
 924:	3b01      	subs	r3, #1
 926:	42ab      	cmp	r3, r5
 928:	bf0c      	ite	eq
 92a:	6075      	streq	r5, [r6, #4]
 92c:	f8c4 9000 	strne.w	r9, [r4]
 930:	2a00      	cmp	r2, #0
 932:	d0ec      	beq.n	90e <__call_exitprocs+0x3a>
 934:	f8d6 0188 	ldr.w	r0, [r6, #392]	; 0x188
 938:	f8d6 a004 	ldr.w	sl, [r6, #4]
 93c:	fa08 f105 	lsl.w	r1, r8, r5
 940:	4201      	tst	r1, r0
 942:	d10b      	bne.n	95c <__call_exitprocs+0x88>
 944:	4790      	blx	r2
 946:	6872      	ldr	r2, [r6, #4]
 948:	4552      	cmp	r2, sl
 94a:	d113      	bne.n	974 <__call_exitprocs+0xa0>
 94c:	f8d7 3148 	ldr.w	r3, [r7, #328]	; 0x148
 950:	42b3      	cmp	r3, r6
 952:	d0dc      	beq.n	90e <__call_exitprocs+0x3a>
 954:	461e      	mov	r6, r3
 956:	2e00      	cmp	r6, #0
 958:	d1cc      	bne.n	8f4 <__call_exitprocs+0x20>
 95a:	e7dd      	b.n	918 <__call_exitprocs+0x44>
 95c:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
 960:	4201      	tst	r1, r0
 962:	d10c      	bne.n	97e <__call_exitprocs+0xaa>
 964:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 968:	ee18 0a10 	vmov	r0, s16
 96c:	4790      	blx	r2
 96e:	6872      	ldr	r2, [r6, #4]
 970:	4552      	cmp	r2, sl
 972:	d0eb      	beq.n	94c <__call_exitprocs+0x78>
 974:	f8d7 6148 	ldr.w	r6, [r7, #328]	; 0x148
 978:	2e00      	cmp	r6, #0
 97a:	d1bb      	bne.n	8f4 <__call_exitprocs+0x20>
 97c:	e7cc      	b.n	918 <__call_exitprocs+0x44>
 97e:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 982:	4790      	blx	r2
 984:	e7df      	b.n	946 <__call_exitprocs+0x72>
 986:	bf00      	nop
 988:	00000a84 	.word	0x00000a84

0000098c <_exit>:
 98c:	e7fe      	b.n	98c <_exit>
 98e:	bf00      	nop

00000990 <register_fini>:
 990:	4b02      	ldr	r3, [pc, #8]	; (99c <register_fini+0xc>)
 992:	b113      	cbz	r3, 99a <register_fini+0xa>
 994:	4802      	ldr	r0, [pc, #8]	; (9a0 <register_fini+0x10>)
 996:	f7ff bec7 	b.w	728 <atexit>
 99a:	4770      	bx	lr
 99c:	00000000 	.word	0x00000000
 9a0:	00000755 	.word	0x00000755

000009a4 <__frame_dummy_init_array_entry>:
 9a4:	000001a9 00000991                       ........

000009ac <_init>:
 9ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9ae:	bf00      	nop
 9b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 9b2:	bc08      	pop	{r3}
 9b4:	469e      	mov	lr, r3
 9b6:	4770      	bx	lr

000009b8 <_fini>:
 9b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 9ba:	bf00      	nop

000009bc <__do_global_dtors_aux_fini_array_entry>:
 9bc:	0181 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

000009c8 <Reset_Handler>:
 9c8:	4668      	mov	r0, sp
 9ca:	f020 0107 	bic.w	r1, r0, #7
 9ce:	468d      	mov	sp, r1
 9d0:	b581      	push	{r0, r7, lr}
 9d2:	b083      	sub	sp, #12
 9d4:	af00      	add	r7, sp, #0
 9d6:	4b12      	ldr	r3, [pc, #72]	; (a20 <zero_loop+0x20>)
 9d8:	607b      	str	r3, [r7, #4]
 9da:	4b12      	ldr	r3, [pc, #72]	; (a24 <zero_loop+0x24>)
 9dc:	603b      	str	r3, [r7, #0]
 9de:	e007      	b.n	9f0 <Reset_Handler+0x28>
 9e0:	687a      	ldr	r2, [r7, #4]
 9e2:	1d13      	adds	r3, r2, #4
 9e4:	607b      	str	r3, [r7, #4]
 9e6:	683b      	ldr	r3, [r7, #0]
 9e8:	1d19      	adds	r1, r3, #4
 9ea:	6039      	str	r1, [r7, #0]
 9ec:	6812      	ldr	r2, [r2, #0]
 9ee:	601a      	str	r2, [r3, #0]
 9f0:	683b      	ldr	r3, [r7, #0]
 9f2:	4a0d      	ldr	r2, [pc, #52]	; (a28 <zero_loop+0x28>)
 9f4:	4293      	cmp	r3, r2
 9f6:	d3f3      	bcc.n	9e0 <Reset_Handler+0x18>
 9f8:	480c      	ldr	r0, [pc, #48]	; (a2c <zero_loop+0x2c>)
 9fa:	490d      	ldr	r1, [pc, #52]	; (a30 <zero_loop+0x30>)
 9fc:	f04f 0200 	mov.w	r2, #0

00000a00 <zero_loop>:
 a00:	4288      	cmp	r0, r1
 a02:	bfb8      	it	lt
 a04:	f840 2b04 	strlt.w	r2, [r0], #4
 a08:	dbfa      	blt.n	a00 <zero_loop>
 a0a:	f7ff fe4d 	bl	6a8 <SystemInit>
 a0e:	f7ff fc13 	bl	238 <main>
 a12:	bf00      	nop
 a14:	370c      	adds	r7, #12
 a16:	46bd      	mov	sp, r7
 a18:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a1c:	4685      	mov	sp, r0
 a1e:	4770      	bx	lr
 a20:	00000ab8 	.word	0x00000ab8
 a24:	20000000 	.word	0x20000000
 a28:	20000438 	.word	0x20000438
 a2c:	20000438 	.word	0x20000438
 a30:	20000460 	.word	0x20000460

Disassembly of section .text:NMI_Handler:

00000a34 <NMI_Handler>:
 a34:	4668      	mov	r0, sp
 a36:	f020 0107 	bic.w	r1, r0, #7
 a3a:	468d      	mov	sp, r1
 a3c:	b481      	push	{r0, r7}
 a3e:	af00      	add	r7, sp, #0
 a40:	e7fe      	b.n	a40 <NMI_Handler+0xc>

Disassembly of section .text:HardFault_Handler:

00000a42 <HardFault_Handler>:
 a42:	4668      	mov	r0, sp
 a44:	f020 0107 	bic.w	r1, r0, #7
 a48:	468d      	mov	sp, r1
 a4a:	b481      	push	{r0, r7}
 a4c:	af00      	add	r7, sp, #0
 a4e:	e7fe      	b.n	a4e <HardFault_Handler+0xc>

Disassembly of section .text:Default_Handler:

00000a50 <Default_Handler>:
 a50:	4668      	mov	r0, sp
 a52:	f020 0107 	bic.w	r1, r0, #7
 a56:	468d      	mov	sp, r1
 a58:	b481      	push	{r0, r7}
 a5a:	af00      	add	r7, sp, #0
 a5c:	e7fe      	b.n	a5c <Default_Handler+0xc>
