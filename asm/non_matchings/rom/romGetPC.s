glabel romGetPC
/* 068C38 8006E1D8 7C0802A6 */  mflr    r0
/* 068C3C 8006E1DC 38A00000 */  li      r5, 0
/* 068C40 8006E1E0 90010004 */  stw     r0, 4(r1)
/* 068C44 8006E1E4 38C01000 */  li      r6, 0x1000
/* 068C48 8006E1E8 38E00000 */  li      r7, 0
/* 068C4C 8006E1EC 9421EFE0 */  stwu    r1, -0x1020(r1)
/* 068C50 8006E1F0 93E1101C */  stw     r31, 0x101c(r1)
/* 068C54 8006E1F4 3BE40000 */  addi    r31, r4, 0
/* 068C58 8006E1F8 38810018 */  addi    r4, r1, 0x18
/* 068C5C 8006E1FC 4BFFF9FD */  bl      romCopy
/* 068C60 8006E200 2C030000 */  cmpwi   r3, 0
/* 068C64 8006E204 418201B8 */  beq     lbl_8006E3BC
/* 068C68 8006E208 3800002A */  li      r0, 0x2a
/* 068C6C 8006E20C 7C0903A6 */  mtctr   r0
/* 068C70 8006E210 38810018 */  addi    r4, r1, 0x18
/* 068C74 8006E214 38A00000 */  li      r5, 0
lbl_8006E218:
/* 068C78 8006E218 80640040 */  lwz     r3, 0x40(r4)
/* 068C7C 8006E21C 80040044 */  lwz     r0, 0x44(r4)
/* 068C80 8006E220 7CA51A14 */  add     r5, r5, r3
/* 068C84 8006E224 80640048 */  lwz     r3, 0x48(r4)
/* 068C88 8006E228 7CA50214 */  add     r5, r5, r0
/* 068C8C 8006E22C 8004004C */  lwz     r0, 0x4c(r4)
/* 068C90 8006E230 7CA51A14 */  add     r5, r5, r3
/* 068C94 8006E234 80640050 */  lwz     r3, 0x50(r4)
/* 068C98 8006E238 7CA50214 */  add     r5, r5, r0
/* 068C9C 8006E23C 80040054 */  lwz     r0, 0x54(r4)
/* 068CA0 8006E240 7CA51A14 */  add     r5, r5, r3
/* 068CA4 8006E244 80640058 */  lwz     r3, 0x58(r4)
/* 068CA8 8006E248 7CA50214 */  add     r5, r5, r0
/* 068CAC 8006E24C 8004005C */  lwz     r0, 0x5c(r4)
/* 068CB0 8006E250 7CA51A14 */  add     r5, r5, r3
/* 068CB4 8006E254 80640060 */  lwz     r3, 0x60(r4)
/* 068CB8 8006E258 7CA50214 */  add     r5, r5, r0
/* 068CBC 8006E25C 80040064 */  lwz     r0, 0x64(r4)
/* 068CC0 8006E260 7CA51A14 */  add     r5, r5, r3
/* 068CC4 8006E264 80640068 */  lwz     r3, 0x68(r4)
/* 068CC8 8006E268 7CA50214 */  add     r5, r5, r0
/* 068CCC 8006E26C 8004006C */  lwz     r0, 0x6c(r4)
/* 068CD0 8006E270 7CA51A14 */  add     r5, r5, r3
/* 068CD4 8006E274 80640070 */  lwz     r3, 0x70(r4)
/* 068CD8 8006E278 7CA50214 */  add     r5, r5, r0
/* 068CDC 8006E27C 80040074 */  lwz     r0, 0x74(r4)
/* 068CE0 8006E280 7CA51A14 */  add     r5, r5, r3
/* 068CE4 8006E284 80640078 */  lwz     r3, 0x78(r4)
/* 068CE8 8006E288 7CA50214 */  add     r5, r5, r0
/* 068CEC 8006E28C 8004007C */  lwz     r0, 0x7c(r4)
/* 068CF0 8006E290 7CA51A14 */  add     r5, r5, r3
/* 068CF4 8006E294 80640080 */  lwz     r3, 0x80(r4)
/* 068CF8 8006E298 7CA50214 */  add     r5, r5, r0
/* 068CFC 8006E29C 80040084 */  lwz     r0, 0x84(r4)
/* 068D00 8006E2A0 7CA51A14 */  add     r5, r5, r3
/* 068D04 8006E2A4 80640088 */  lwz     r3, 0x88(r4)
/* 068D08 8006E2A8 7CA50214 */  add     r5, r5, r0
/* 068D0C 8006E2AC 8004008C */  lwz     r0, 0x8c(r4)
/* 068D10 8006E2B0 7CA51A14 */  add     r5, r5, r3
/* 068D14 8006E2B4 80640090 */  lwz     r3, 0x90(r4)
/* 068D18 8006E2B8 7CA50214 */  add     r5, r5, r0
/* 068D1C 8006E2BC 80040094 */  lwz     r0, 0x94(r4)
/* 068D20 8006E2C0 7CA51A14 */  add     r5, r5, r3
/* 068D24 8006E2C4 80640098 */  lwz     r3, 0x98(r4)
/* 068D28 8006E2C8 7CA50214 */  add     r5, r5, r0
/* 068D2C 8006E2CC 8004009C */  lwz     r0, 0x9c(r4)
/* 068D30 8006E2D0 7CA51A14 */  add     r5, r5, r3
/* 068D34 8006E2D4 7CA50214 */  add     r5, r5, r0
/* 068D38 8006E2D8 38840060 */  addi    r4, r4, 0x60
/* 068D3C 8006E2DC 4200FF3C */  bdnz    lbl_8006E218
/* 068D40 8006E2E0 3C602AE0 */  lis     r3, 0x2ae0
/* 068D44 8006E2E4 3803E50A */  addi    r0, r3, -6902
/* 068D48 8006E2E8 7C050000 */  cmpw    r5, r0
/* 068D4C 8006E2EC 41820094 */  beq     lbl_8006E380
/* 068D50 8006E2F0 40800054 */  bge     lbl_8006E344
/* 068D54 8006E2F4 3C60FB63 */  lis     r3, 0xfb63
/* 068D58 8006E2F8 38031223 */  addi    r0, r3, 0x1223
/* 068D5C 8006E2FC 7C050000 */  cmpw    r5, r0
/* 068D60 8006E300 41820080 */  beq     lbl_8006E380
/* 068D64 8006E304 4080002C */  bge     lbl_8006E330
/* 068D68 8006E308 3C60E6DF */  lis     r3, 0xe6df
/* 068D6C 8006E30C 3803CB4B */  addi    r0, r3, -13493
/* 068D70 8006E310 7C050000 */  cmpw    r5, r0
/* 068D74 8006E314 41820074 */  beq     lbl_8006E388
/* 068D78 8006E318 40800080 */  bge     lbl_8006E398
/* 068D7C 8006E31C 3C60D5BE */  lis     r3, 0xd5be
/* 068D80 8006E320 38035580 */  addi    r0, r3, 0x5580
/* 068D84 8006E324 7C050000 */  cmpw    r5, r0
/* 068D88 8006E328 41820068 */  beq     lbl_8006E390
/* 068D8C 8006E32C 4800006C */  b       lbl_8006E398
lbl_8006E330:
/* 068D90 8006E330 3C6027C5 */  lis     r3, 0x27c5
/* 068D94 8006E334 3803ED44 */  addi    r0, r3, -4796
/* 068D98 8006E338 7C050000 */  cmpw    r5, r0
/* 068D9C 8006E33C 4182004C */  beq     lbl_8006E388
/* 068DA0 8006E340 48000058 */  b       lbl_8006E398
lbl_8006E344:
/* 068DA4 8006E344 3C6049F6 */  lis     r3, 0x49f6
/* 068DA8 8006E348 38030E96 */  addi    r0, r3, 0xe96
/* 068DAC 8006E34C 7C050000 */  cmpw    r5, r0
/* 068DB0 8006E350 41820030 */  beq     lbl_8006E380
/* 068DB4 8006E354 40800018 */  bge     lbl_8006E36C
/* 068DB8 8006E358 3C60497E */  lis     r3, 0x497e
/* 068DBC 8006E35C 3803414B */  addi    r0, r3, 0x414b
/* 068DC0 8006E360 7C050000 */  cmpw    r5, r0
/* 068DC4 8006E364 41820024 */  beq     lbl_8006E388
/* 068DC8 8006E368 48000030 */  b       lbl_8006E398
lbl_8006E36C:
/* 068DCC 8006E36C 3C6057C8 */  lis     r3, 0x57c8
/* 068DD0 8006E370 38035244 */  addi    r0, r3, 0x5244
/* 068DD4 8006E374 7C050000 */  cmpw    r5, r0
/* 068DD8 8006E378 41820008 */  beq     lbl_8006E380
/* 068DDC 8006E37C 4800001C */  b       lbl_8006E398
lbl_8006E380:
/* 068DE0 8006E380 38A00000 */  li      r5, 0
/* 068DE4 8006E384 4800001C */  b       lbl_8006E3A0
lbl_8006E388:
/* 068DE8 8006E388 3CA00010 */  lis     r5, 0x10
/* 068DEC 8006E38C 48000014 */  b       lbl_8006E3A0
lbl_8006E390:
/* 068DF0 8006E390 3CA00020 */  lis     r5, 0x20
/* 068DF4 8006E394 4800000C */  b       lbl_8006E3A0
lbl_8006E398:
/* 068DF8 8006E398 38600000 */  li      r3, 0
/* 068DFC 8006E39C 48000024 */  b       lbl_8006E3C0
lbl_8006E3A0:
/* 068E00 8006E3A0 80810020 */  lwz     r4, 0x20(r1)
/* 068E04 8006E3A4 38000000 */  li      r0, 0
/* 068E08 8006E3A8 38600001 */  li      r3, 1
/* 068E0C 8006E3AC 7C852050 */  subf    r4, r5, r4
/* 068E10 8006E3B0 909F0004 */  stw     r4, 4(r31)
/* 068E14 8006E3B4 901F0000 */  stw     r0, 0(r31)
/* 068E18 8006E3B8 48000008 */  b       lbl_8006E3C0
lbl_8006E3BC:
/* 068E1C 8006E3BC 38600000 */  li      r3, 0
lbl_8006E3C0:
/* 068E20 8006E3C0 80011024 */  lwz     r0, 0x1024(r1)
/* 068E24 8006E3C4 83E1101C */  lwz     r31, 0x101c(r1)
/* 068E28 8006E3C8 38211020 */  addi    r1, r1, 0x1020
/* 068E2C 8006E3CC 7C0803A6 */  mtlr    r0
/* 068E30 8006E3D0 4E800020 */  blr     
