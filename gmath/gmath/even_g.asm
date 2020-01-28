------------------------------------------------------------------------------------------------------------------------
; bit even<byte>(byte a)
; even_g8u[22] = {0f 1f 44 00 00 0f b6 c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<sbyte>(sbyte a)
; even_g8i[23] = {0f 1f 44 00 00 48 0f be c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<ushort>(ushort a)
; even_g16u[22] = {0f 1f 44 00 00 0f b7 c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000ah setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0012h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<short>(short a)
; even_g16i[23] = {0f 1f 44 00 00 48 0f bf c1 a8 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h test al,1                               ; TEST AL, imm8 || A8 ib || encoded[2]{a8 01}
000bh setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<uint>(uint a)
; even_g32u[20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<int>(int a)
; even_g32i[20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<ulong>(ulong a)
; even_g64u[20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit even<long>(long a)
; even_g64i[20] = {0f 1f 44 00 00 f6 c1 01 0f 95 c0 0f b6 c0 f7 d0 83 e0 01 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test cl,1                               ; TEST r/m8, imm8 || F6 /0 ib || encoded[3]{f6 c1 01}
0008h setne al                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
