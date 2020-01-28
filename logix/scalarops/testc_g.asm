------------------------------------------------------------------------------------------------------------------------
; bit testc<byte>(byte a)
; testc_g8u[23] = {0f 1f 44 00 00 0f b6 c1 f3 0f b8 c0 48 83 f8 08 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch cmp rax,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 08}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<sbyte>(sbyte a)
; testc_g8i[24] = {0f 1f 44 00 00 48 0f be c1 f3 0f b8 c0 48 83 f8 08 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh cmp rax,8                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 08}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<ushort>(ushort a)
; testc_g16u[23] = {0f 1f 44 00 00 0f b7 c1 f3 0f b8 c0 48 83 f8 10 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0010h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<short>(short a)
; testc_g16i[24] = {0f 1f 44 00 00 48 0f bf c1 f3 0f b8 c0 48 83 f8 10 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0011h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<uint>(uint a)
; testc_g32u[22] = {0f 1f 44 00 00 33 c0 f3 0f b8 c1 48 83 f8 20 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh cmp rax,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 20}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<int>(int a)
; testc_g32i[22] = {0f 1f 44 00 00 33 c0 f3 0f b8 c1 48 83 f8 20 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh cmp rax,20h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 20}
000fh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<ulong>(ulong a)
; testc_g64u[25] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 8b c0 48 83 f8 40 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000eh cmp rax,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 40}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit testc<long>(long a)
; testc_g64i[25] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 8b c0 48 83 f8 40 0f 94 c0 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
000eh cmp rax,40h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 40}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
