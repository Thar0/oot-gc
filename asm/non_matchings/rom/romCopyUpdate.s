glabel romCopyUpdate
/* 06929C 8006E83C 7C0802A6 */  mflr    r0
/* 0692A0 8006E840 38A00000 */  li      r5, 0
/* 0692A4 8006E844 90010004 */  stw     r0, 4(r1)
/* 0692A8 8006E848 9421FFD0 */  stwu    r1, -0x30(r1)
/* 0692AC 8006E84C BF410018 */  stmw    r26, 0x18(r1)
/* 0692B0 8006E850 3BA30000 */  addi    r29, r3, 0
/* 0692B4 8006E854 3C7D0001 */  addis   r3, r29, 1
/* 0692B8 8006E858 80030E58 */  lwz     r0, 0xe58(r3)
/* 0692BC 8006E85C 809D0000 */  lwz     r4, 0(r29)
/* 0692C0 8006E860 28000000 */  cmplwi  r0, 0
/* 0692C4 8006E864 83C40024 */  lwz     r30, 0x24(r4)
/* 0692C8 8006E868 40820014 */  bne     lbl_8006E87C
/* 0692CC 8006E86C 80030E5C */  lwz     r0, 0xe5c(r3)
/* 0692D0 8006E870 28000000 */  cmplwi  r0, 0
/* 0692D4 8006E874 40820008 */  bne     lbl_8006E87C
/* 0692D8 8006E878 38A00001 */  li      r5, 1
lbl_8006E87C:
/* 0692DC 8006E87C 2C050000 */  cmpwi   r5, 0
/* 0692E0 8006E880 4182000C */  beq     lbl_8006E88C
/* 0692E4 8006E884 38000000 */  li      r0, 0
/* 0692E8 8006E888 48000008 */  b       lbl_8006E890
lbl_8006E88C:
/* 0692EC 8006E88C 38000001 */  li      r0, 1
lbl_8006E890:
/* 0692F0 8006E890 2C000000 */  cmpwi   r0, 0
/* 0692F4 8006E894 40820020 */  bne     lbl_8006E8B4
/* 0692F8 8006E898 3FFD0001 */  addis   r31, r29, 1
/* 0692FC 8006E89C 801F0E30 */  lwz     r0, 0xe30(r31)
/* 069300 8006E8A0 28000000 */  cmplwi  r0, 0
/* 069304 8006E8A4 41820010 */  beq     lbl_8006E8B4
/* 069308 8006E8A8 801F0E24 */  lwz     r0, 0xe24(r31)
/* 06930C 8006E8AC 2C000000 */  cmpwi   r0, 0
/* 069310 8006E8B0 418201C8 */  beq     lbl_8006EA78
lbl_8006E8B4:
/* 069314 8006E8B4 38600001 */  li      r3, 1
/* 069318 8006E8B8 480001F4 */  b       lbl_8006EAAC
/* 06931C 8006E8BC 480001BC */  b       lbl_8006EA78
lbl_8006E8C0:
/* 069320 8006E8C0 801F0E28 */  lwz     r0, 0xe28(r31)
/* 069324 8006E8C4 28000000 */  cmplwi  r0, 0
/* 069328 8006E8C8 4182001C */  beq     lbl_8006E8E4
/* 06932C 8006E8CC 807E0B5C */  lwz     r3, 0xb5c(r30)
/* 069330 8006E8D0 801E0B60 */  lwz     r0, 0xb60(r30)
/* 069334 8006E8D4 7C030040 */  cmplw   r3, r0
/* 069338 8006E8D8 4182000C */  beq     lbl_8006E8E4
/* 06933C 8006E8DC 38600001 */  li      r3, 1
/* 069340 8006E8E0 480001CC */  b       lbl_8006EAAC
lbl_8006E8E4:
/* 069344 8006E8E4 38600000 */  li      r3, 0
/* 069348 8006E8E8 38800000 */  li      r4, 0
/* 06934C 8006E8EC 38A00001 */  li      r5, 1
/* 069350 8006E8F0 38C00000 */  li      r6, 0
/* 069354 8006E8F4 4BF9A2E9 */  bl      simulatorTestReset
/* 069358 8006E8F8 2C030000 */  cmpwi   r3, 0
/* 06935C 8006E8FC 4082000C */  bne     lbl_8006E908
/* 069360 8006E900 38600000 */  li      r3, 0
/* 069364 8006E904 480001A8 */  b       lbl_8006EAAC
lbl_8006E908:
/* 069368 8006E908 801F0E34 */  lwz     r0, 0xe34(r31)
/* 06936C 8006E90C 807F021C */  lwz     r3, 0x21c(r31)
/* 069370 8006E910 54059B7E */  srwi    r5, r0, 0xd
/* 069374 8006E914 5404BA76 */  rlwinm  r4, r0, 0x17, 9, 0x1b
/* 069378 8006E918 3B84021C */  addi    r28, r4, 0x21c
/* 06937C 8006E91C 7F9DE214 */  add     r28, r29, r28
/* 069380 8006E920 837C0008 */  lwz     r27, 8(r28)
/* 069384 8006E924 38030001 */  addi    r0, r3, 1
/* 069388 8006E928 3B450000 */  addi    r26, r5, 0
/* 06938C 8006E92C 901F021C */  stw     r0, 0x21c(r31)
/* 069390 8006E930 901C0008 */  stw     r0, 8(r28)
/* 069394 8006E934 801C0004 */  lwz     r0, 4(r28)
/* 069398 8006E938 28000000 */  cmplwi  r0, 0
/* 06939C 8006E93C 41820030 */  beq     lbl_8006E96C
/* 0693A0 8006E940 801C0000 */  lwz     r0, 0(r28)
/* 0693A4 8006E944 2C000000 */  cmpwi   r0, 0
/* 0693A8 8006E948 408000BC */  bge     lbl_8006EA04
/* 0693AC 8006E94C 387D0000 */  addi    r3, r29, 0
/* 0693B0 8006E950 389A0000 */  addi    r4, r26, 0
/* 0693B4 8006E954 38A00000 */  li      r5, 0
/* 0693B8 8006E958 48000E89 */  bl      romSetBlockCache
/* 0693BC 8006E95C 2C030000 */  cmpwi   r3, 0
/* 0693C0 8006E960 408200A4 */  bne     lbl_8006EA04
/* 0693C4 8006E964 38600000 */  li      r3, 0
/* 0693C8 8006E968 48000144 */  b       lbl_8006EAAC
lbl_8006E96C:
/* 0693CC 8006E96C 387D0000 */  addi    r3, r29, 0
/* 0693D0 8006E970 3881000C */  addi    r4, r1, 0xc
/* 0693D4 8006E974 38A00000 */  li      r5, 0
/* 0693D8 8006E978 480010C1 */  bl      romMakeFreeCache
/* 0693DC 8006E97C 2C030000 */  cmpwi   r3, 0
/* 0693E0 8006E980 4082000C */  bne     lbl_8006E98C
/* 0693E4 8006E984 38600000 */  li      r3, 0
/* 0693E8 8006E988 48000124 */  b       lbl_8006EAAC
lbl_8006E98C:
/* 0693EC 8006E98C 801F0E28 */  lwz     r0, 0xe28(r31)
/* 0693F0 8006E990 28000000 */  cmplwi  r0, 0
/* 0693F4 8006E994 40820028 */  bne     lbl_8006E9BC
/* 0693F8 8006E998 80A1000C */  lwz     r5, 0xc(r1)
/* 0693FC 8006E99C 387D0000 */  addi    r3, r29, 0
/* 069400 8006E9A0 389A0000 */  addi    r4, r26, 0
/* 069404 8006E9A4 38C00000 */  li      r6, 0
/* 069408 8006E9A8 48000C2D */  bl      romLoadBlock
/* 06940C 8006E9AC 2C030000 */  cmpwi   r3, 0
/* 069410 8006E9B0 40820054 */  bne     lbl_8006EA04
/* 069414 8006E9B4 38600000 */  li      r3, 0
/* 069418 8006E9B8 480000F4 */  b       lbl_8006EAAC
lbl_8006E9BC:
/* 06941C 8006E9BC 937C0008 */  stw     r27, 8(r28)
/* 069420 8006E9C0 3C608007 */  lis     r3, __romCopyUpdate_Complete@ha
/* 069424 8006E9C4 38C3EAC0 */  addi    r6, r3, __romCopyUpdate_Complete@l
/* 069428 8006E9C8 809F021C */  lwz     r4, 0x21c(r31)
/* 06942C 8006E9CC 38000001 */  li      r0, 1
/* 069430 8006E9D0 387D0000 */  addi    r3, r29, 0
/* 069434 8006E9D4 3884FFFF */  addi    r4, r4, -1
/* 069438 8006E9D8 909F021C */  stw     r4, 0x21c(r31)
/* 06943C 8006E9DC 7F44D378 */  mr      r4, r26
/* 069440 8006E9E0 901F0E24 */  stw     r0, 0xe24(r31)
/* 069444 8006E9E4 80A1000C */  lwz     r5, 0xc(r1)
/* 069448 8006E9E8 48000BED */  bl      romLoadBlock
/* 06944C 8006E9EC 2C030000 */  cmpwi   r3, 0
/* 069450 8006E9F0 4082000C */  bne     lbl_8006E9FC
/* 069454 8006E9F4 38600000 */  li      r3, 0
/* 069458 8006E9F8 480000B4 */  b       lbl_8006EAAC
lbl_8006E9FC:
/* 06945C 8006E9FC 38600001 */  li      r3, 1
/* 069460 8006EA00 480000AC */  b       lbl_8006EAAC
lbl_8006EA04:
/* 069464 8006EA04 807F0E34 */  lwz     r3, 0xe34(r31)
/* 069468 8006EA08 801C0004 */  lwz     r0, 4(r28)
/* 06946C 8006EA0C 546604FE */  clrlwi  r6, r3, 0x13
/* 069470 8006EA10 807F0E30 */  lwz     r3, 0xe30(r31)
/* 069474 8006EA14 7F460050 */  subf    r26, r6, r0
/* 069478 8006EA18 7C1A1840 */  cmplw   r26, r3
/* 06947C 8006EA1C 40810008 */  ble     lbl_8006EA24
/* 069480 8006EA20 7C7A1B78 */  mr      r26, r3
lbl_8006EA24:
/* 069484 8006EA24 801C0000 */  lwz     r0, 0(r28)
/* 069488 8006EA28 7F45D378 */  mr      r5, r26
/* 06948C 8006EA2C 809F0220 */  lwz     r4, 0x220(r31)
/* 069490 8006EA30 54006824 */  slwi    r0, r0, 0xd
/* 069494 8006EA34 807F0E2C */  lwz     r3, 0xe2c(r31)
/* 069498 8006EA38 7C040214 */  add     r0, r4, r0
/* 06949C 8006EA3C 7C803214 */  add     r4, r0, r6
/* 0694A0 8006EA40 4BF980B1 */  bl      xlHeapCopy
/* 0694A4 8006EA44 2C030000 */  cmpwi   r3, 0
/* 0694A8 8006EA48 4082000C */  bne     lbl_8006EA54
/* 0694AC 8006EA4C 38600000 */  li      r3, 0
/* 0694B0 8006EA50 4800005C */  b       lbl_8006EAAC
lbl_8006EA54:
/* 0694B4 8006EA54 801F0E2C */  lwz     r0, 0xe2c(r31)
/* 0694B8 8006EA58 7C00D214 */  add     r0, r0, r26
/* 0694BC 8006EA5C 901F0E2C */  stw     r0, 0xe2c(r31)
/* 0694C0 8006EA60 801F0E30 */  lwz     r0, 0xe30(r31)
/* 0694C4 8006EA64 7C1A0050 */  subf    r0, r26, r0
/* 0694C8 8006EA68 901F0E30 */  stw     r0, 0xe30(r31)
/* 0694CC 8006EA6C 801F0E34 */  lwz     r0, 0xe34(r31)
/* 0694D0 8006EA70 7C00D214 */  add     r0, r0, r26
/* 0694D4 8006EA74 901F0E34 */  stw     r0, 0xe34(r31)
lbl_8006EA78:
/* 0694D8 8006EA78 801F0E30 */  lwz     r0, 0xe30(r31)
/* 0694DC 8006EA7C 28000000 */  cmplwi  r0, 0
/* 0694E0 8006EA80 4082FE40 */  bne     lbl_8006E8C0
/* 0694E4 8006EA84 819F0E28 */  lwz     r12, 0xe28(r31)
/* 0694E8 8006EA88 280C0000 */  cmplwi  r12, 0
/* 0694EC 8006EA8C 4182001C */  beq     lbl_8006EAA8
/* 0694F0 8006EA90 7D8803A6 */  mtlr    r12
/* 0694F4 8006EA94 4E800021 */  blrl    
/* 0694F8 8006EA98 2C030000 */  cmpwi   r3, 0
/* 0694FC 8006EA9C 4082000C */  bne     lbl_8006EAA8
/* 069500 8006EAA0 38600000 */  li      r3, 0
/* 069504 8006EAA4 48000008 */  b       lbl_8006EAAC
lbl_8006EAA8:
/* 069508 8006EAA8 38600001 */  li      r3, 1
lbl_8006EAAC:
/* 06950C 8006EAAC BB410018 */  lmw     r26, 0x18(r1)
/* 069510 8006EAB0 80010034 */  lwz     r0, 0x34(r1)
/* 069514 8006EAB4 38210030 */  addi    r1, r1, 0x30
/* 069518 8006EAB8 7C0803A6 */  mtlr    r0
/* 06951C 8006EABC 4E800020 */  blr     
