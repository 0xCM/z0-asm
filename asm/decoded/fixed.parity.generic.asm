------------------------------------------------------------------------------------------------------------------------
; bit odd<byte>(byte a), hex://fixed/parity.generic?odd#odd_g[8u](8u)
; odd_g[8u](8u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<sbyte>(sbyte a), hex://fixed/parity.generic?odd#odd_g[8i](8i)
; odd_g[8i](8i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<ushort>(ushort a), hex://fixed/parity.generic?odd#odd_g[16u](16u)
; odd_g[16u](16u)[17] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<short>(short a), hex://fixed/parity.generic?odd#odd_g[16i](16i)
; odd_g[16i](16i)[18] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<uint>(uint a), hex://fixed/parity.generic?odd#odd_g[32u](32u)
; odd_g[32u](32u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<int>(int a), hex://fixed/parity.generic?odd#odd_g[32i](32i)
; odd_g[32i](32i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<ulong>(ulong a), hex://fixed/parity.generic?odd#odd_g[64u](64u)
; odd_g[64u](64u)[15] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit odd<long>(long a), hex://fixed/parity.generic?odd#odd_g[64i](64i)
; odd_g[64i](64i)[15] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<byte>(byte a), hex://fixed/parity.generic?even#even_g[8u](8u)
; even_g[8u](8u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<sbyte>(sbyte a), hex://fixed/parity.generic?even#even_g[8i](8i)
; even_g[8i](8i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbe,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<ushort>(ushort a), hex://fixed/parity.generic?even#even_g[16u](16u)
; even_g[16u](16u)[22] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb7,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<short>(short a), hex://fixed/parity.generic?even#even_g[16i](16i)
; even_g[16i](16i)[23] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x0f,0xbf,0xc1,0xa8,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<uint>(uint a), hex://fixed/parity.generic?even#even_g[32u](32u)
; even_g[32u](32u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<int>(int a), hex://fixed/parity.generic?even#even_g[32i](32i)
; even_g[32i](32i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<ulong>(ulong a), hex://fixed/parity.generic?even#even_g[64u](64u)
; even_g[64u](64u)[20] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<long>(long a), hex://fixed/parity.generic?even#even_g[64i](64i)
; even_g[64i](64i)[20] = {0x0f,0x1f,0x44,0x00,0x00,0xf6,0xc1,0x01,0x0f,0x95,0xc0,0x0f,0xb6,0xc0,0xf7,0xd0,0x83,0xe0,0x01,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
