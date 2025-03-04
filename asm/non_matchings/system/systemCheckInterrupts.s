glabel systemCheckInterrupts
/* 027D84 8002D324 7C0802A6 */  mflr    r0
/* 027D88 8002D328 90010004 */  stw     r0, 4(r1)
/* 027D8C 8002D32C 38000000 */  li      r0, 0
/* 027D90 8002D330 9421FFC0 */  stwu    r1, -0x40(r1)
/* 027D94 8002D334 BF210024 */  stmw    r25, 0x24(r1)
/* 027D98 8002D338 3B230000 */  addi    r25, r3, 0
/* 027D9C 8002D33C 3BA00000 */  li      r29, 0
/* 027DA0 8002D340 3B40FFFF */  li      r26, -1
/* 027DA4 8002D344 3B600000 */  li      r27, 0
/* 027DA8 8002D348 3BC00000 */  li      r30, 0
/* 027DAC 8002D34C 90030008 */  stw     r0, 8(r3)
lbl_8002D350:
/* 027DB0 8002D350 3BFE0074 */  addi    r31, r30, 0x74
/* 027DB4 8002D354 7FF9FA14 */  add     r31, r25, r31
/* 027DB8 8002D358 881F0000 */  lbz     r0, 0(r31)
/* 027DBC 8002D35C 28000000 */  cmplwi  r0, 0
/* 027DC0 8002D360 418200A8 */  beq     lbl_8002D408
/* 027DC4 8002D364 38000001 */  li      r0, 1
/* 027DC8 8002D368 2C1B0000 */  cmpwi   r27, 0
/* 027DCC 8002D36C 90190008 */  stw     r0, 8(r25)
/* 027DD0 8002D370 40820098 */  bne     lbl_8002D408
/* 027DD4 8002D374 38790000 */  addi    r3, r25, 0
/* 027DD8 8002D378 389E0000 */  addi    r4, r30, 0
/* 027DDC 8002D37C 38A1000C */  addi    r5, r1, 0xc
/* 027DE0 8002D380 48000815 */  bl      systemGetException
/* 027DE4 8002D384 2C030000 */  cmpwi   r3, 0
/* 027DE8 8002D388 4082000C */  bne     lbl_8002D394
/* 027DEC 8002D38C 38600000 */  li      r3, 0
/* 027DF0 8002D390 480000D8 */  b       lbl_8002D468
lbl_8002D394:
/* 027DF4 8002D394 80010014 */  lwz     r0, 0x14(r1)
/* 027DF8 8002D398 3B800000 */  li      r28, 0
/* 027DFC 8002D39C 2C000000 */  cmpwi   r0, 0
/* 027E00 8002D3A0 4082003C */  bne     lbl_8002D3DC
/* 027E04 8002D3A4 80790024 */  lwz     r3, 0x24(r25)
/* 027E08 8002D3A8 80810010 */  lwz     r4, 0x10(r1)
/* 027E0C 8002D3AC 48008F61 */  bl      cpuTestInterrupt
/* 027E10 8002D3B0 2C030000 */  cmpwi   r3, 0
/* 027E14 8002D3B4 4182003C */  beq     lbl_8002D3F0
/* 027E18 8002D3B8 8081001C */  lwz     r4, 0x1c(r1)
/* 027E1C 8002D3BC 2C04FFFF */  cmpwi   r4, -1
/* 027E20 8002D3C0 41820014 */  beq     lbl_8002D3D4
/* 027E24 8002D3C4 8079003C */  lwz     r3, 0x3c(r25)
/* 027E28 8002D3C8 480602D5 */  bl      mipsSetInterrupt
/* 027E2C 8002D3CC 2C030000 */  cmpwi   r3, 0
/* 027E30 8002D3D0 41820020 */  beq     lbl_8002D3F0
lbl_8002D3D4:
/* 027E34 8002D3D4 3B800001 */  li      r28, 1
/* 027E38 8002D3D8 48000018 */  b       lbl_8002D3F0
lbl_8002D3DC:
/* 027E3C 8002D3DC 2C1D0000 */  cmpwi   r29, 0
/* 027E40 8002D3E0 3B600001 */  li      r27, 1
/* 027E44 8002D3E4 4082000C */  bne     lbl_8002D3F0
/* 027E48 8002D3E8 3B800001 */  li      r28, 1
/* 027E4C 8002D3EC 7C1A0378 */  mr      r26, r0
lbl_8002D3F0:
/* 027E50 8002D3F0 2C1C0000 */  cmpwi   r28, 0
/* 027E54 8002D3F4 41820014 */  beq     lbl_8002D408
/* 027E58 8002D3F8 80610010 */  lwz     r3, 0x10(r1)
/* 027E5C 8002D3FC 38000000 */  li      r0, 0
/* 027E60 8002D400 981F0000 */  stb     r0, 0(r31)
/* 027E64 8002D404 7FBD1B78 */  or      r29, r29, r3
lbl_8002D408:
/* 027E68 8002D408 3BDE0001 */  addi    r30, r30, 1
/* 027E6C 8002D40C 2C1E0010 */  cmpwi   r30, 0x10
/* 027E70 8002D410 4180FF40 */  blt     lbl_8002D350
/* 027E74 8002D414 2C1D0000 */  cmpwi   r29, 0
/* 027E78 8002D418 41820024 */  beq     lbl_8002D43C
/* 027E7C 8002D41C 80790024 */  lwz     r3, 0x24(r25)
/* 027E80 8002D420 38BD0000 */  addi    r5, r29, 0
/* 027E84 8002D424 38800000 */  li      r4, 0
/* 027E88 8002D428 48008C25 */  bl      cpuException
/* 027E8C 8002D42C 2C030000 */  cmpwi   r3, 0
/* 027E90 8002D430 40820034 */  bne     lbl_8002D464
/* 027E94 8002D434 38600000 */  li      r3, 0
/* 027E98 8002D438 48000030 */  b       lbl_8002D468
lbl_8002D43C:
/* 027E9C 8002D43C 2C1AFFFF */  cmpwi   r26, -1
/* 027EA0 8002D440 41820024 */  beq     lbl_8002D464
/* 027EA4 8002D444 80790024 */  lwz     r3, 0x24(r25)
/* 027EA8 8002D448 389A0000 */  addi    r4, r26, 0
/* 027EAC 8002D44C 38A00000 */  li      r5, 0
/* 027EB0 8002D450 48008BFD */  bl      cpuException
/* 027EB4 8002D454 2C030000 */  cmpwi   r3, 0
/* 027EB8 8002D458 4082000C */  bne     lbl_8002D464
/* 027EBC 8002D45C 38600000 */  li      r3, 0
/* 027EC0 8002D460 48000008 */  b       lbl_8002D468
lbl_8002D464:
/* 027EC4 8002D464 38600001 */  li      r3, 1
lbl_8002D468:
/* 027EC8 8002D468 BB210024 */  lmw     r25, 0x24(r1)
/* 027ECC 8002D46C 80010044 */  lwz     r0, 0x44(r1)
/* 027ED0 8002D470 38210040 */  addi    r1, r1, 0x40
/* 027ED4 8002D474 7C0803A6 */  mtlr    r0
/* 027ED8 8002D478 4E800020 */  blr     
