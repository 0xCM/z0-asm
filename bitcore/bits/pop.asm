------------------------------------------------------------------------------------------------------------------------
; uint pop(sbyte src)
; pop_8i[14] = {0f 1f 44 00 00 48 0f be c1 f3 0f b8 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(byte src)
; pop_8u[13] = {0f 1f 44 00 00 0f b6 c1 f3 0f b8 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(short src)
; pop_16i[14] = {0f 1f 44 00 00 48 0f bf c1 f3 0f b8 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ushort src)
; pop_16u[13] = {0f 1f 44 00 00 0f b7 c1 f3 0f b8 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h popcnt eax,eax                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(int src)
; pop_32i[12] = {0f 1f 44 00 00 33 c0 f3 0f b8 c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(uint src)
; pop_32u[12] = {0f 1f 44 00 00 33 c0 f3 0f b8 c1 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt eax,ecx                          ; POPCNT r32, r/m32 || o32 F3 0F B8 /r || encoded[4]{f3 0f b8 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(long src)
; pop_64i[13] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong src)
; pop_64u[13] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1)
; pop_64u_64u[20] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 f3 48 0f b8 d2 03 c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x, ulong y, ulong z)
; pop_64u_64u_64u[187] = {0f 1f 44 00 00 48 8b c1 48 33 c2 4c 8b c8 4d 23 c8 48 23 d1 49 0b d1 49 33 c0 48 8b ca 48 d1 e9 49 b8 55 55 55 55 55 55 55 55 49 23 c8 48 2b d1 48 8b c8 48 d1 e9 49 23 c8 48 2b c1 48 b9 33 33 33 33 33 33 33 33 48 23 ca 48 c1 ea 02 49 b8 33 33 33 33 33 33 33 33 49 23 d0 48 03 d1 4c 23 c0 48 c1 e8 02 48 b9 33 33 33 33 33 33 33 33 48 23 c1 49 03 c0 48 8b ca 48 c1 e9 04 48 03 ca 48 ba 0f 0f 0f 0f 0f 0f 0f 0f 48 23 d1 48 8b c8 48 c1 e9 04 48 03 c8 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 23 c1 48 03 d2 48 03 d0 48 b8 01 01 01 01 01 01 01 01 48 0f af c2 48 c1 e8 38 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
000bh mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000eh and r9,r8                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c8}
0011h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0014h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
0017h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
001ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
001dh shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0020h mov r8,5555555555555555h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 55 55 55 55 55 55 55 55}
002ah and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
002dh sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
0030h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0033h shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0036h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0039h sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
003ch mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0046h and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0049h shr rdx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 02}
004dh mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0057h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
005ah add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
005dh and r8,rax                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c0}
0060h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0064h mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
006eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0071h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0074h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0077h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
007bh add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
007eh mov rdx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 0f 0f 0f 0f 0f 0f 0f 0f}
0088h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
008bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
008eh shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0092h add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
0095h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
009fh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00a2h add rdx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d2}
00a5h add rdx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d0}
00a8h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
00b2h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
00b6h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
00bah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3)
; pop_64u_64u_64u_64u[38] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 f3 48 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0015h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
001ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
001ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001eh popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0023h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
; pop_64u_64u_64u_64u_64u_64u_64u_64u[82] = {0f 1f 44 00 00 33 c0 f3 48 0f b8 c1 f3 48 0f b8 d2 03 c2 33 d2 f3 49 0f b8 d0 03 c2 33 d2 f3 49 0f b8 d1 03 c2 33 d2 f3 48 0f b8 54 24 28 03 c2 33 d2 f3 48 0f b8 54 24 30 03 c2 33 d2 f3 48 0f b8 54 24 38 03 c2 33 d2 f3 48 0f b8 54 24 40 03 c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h popcnt rax,rcx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c1}
000ch popcnt rdx,rdx                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 d2}
0011h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0013h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0015h popcnt rdx,r8                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d0}
001ah add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
001ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001eh popcnt rdx,r9                           ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 49 0f b8 d1}
0023h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0025h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0027h popcnt rdx,[rsp+28h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 28}
002eh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0030h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0032h popcnt rdx,[rsp+30h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 30}
0039h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
003bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
003dh popcnt rdx,[rsp+38h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 38}
0044h add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0046h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0048h popcnt rdx,[rsp+40h]                    ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[7]{f3 48 0f b8 54 24 40}
004fh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5)
; pop_64u_64u_64u_64u_64u_64u[385] = {56 0f 1f 40 00 48 8b 44 24 30 4c 8b 54 24 38 4c 8b d9 4c 33 da 49 8b f3 49 23 f0 48 23 d1 48 0b d6 4d 33 c3 48 8b ca 48 d1 e9 49 bb 55 55 55 55 55 55 55 55 49 23 cb 48 2b d1 49 8b c8 48 d1 e9 49 23 cb 4c 2b c1 48 b9 33 33 33 33 33 33 33 33 48 23 ca 48 c1 ea 02 49 bb 33 33 33 33 33 33 33 33 49 23 d3 48 03 d1 4d 23 d8 49 c1 e8 02 48 b9 33 33 33 33 33 33 33 33 4c 23 c1 4d 03 c3 48 8b ca 48 c1 e9 04 48 03 ca 48 ba 0f 0f 0f 0f 0f 0f 0f 0f 48 23 d1 49 8b c8 48 c1 e9 04 49 03 c8 49 b8 0f 0f 0f 0f 0f 0f 0f 0f 4c 23 c1 48 03 d2 49 03 d0 49 b8 01 01 01 01 01 01 01 01 4c 0f af c2 49 c1 e8 38 41 8b d0 49 8b c9 48 33 c8 4c 8b c1 4d 23 c2 49 23 c1 49 0b c0 49 33 ca 4c 8b c0 49 d1 e8 49 b9 55 55 55 55 55 55 55 55 4d 23 c1 49 2b c0 4c 8b c1 49 d1 e8 4d 23 c1 49 2b c8 49 b8 33 33 33 33 33 33 33 33 4c 23 c0 48 c1 e8 02 49 b9 33 33 33 33 33 33 33 33 49 23 c1 49 03 c0 4c 23 c9 48 c1 e9 02 49 b8 33 33 33 33 33 33 33 33 49 23 c8 49 03 c9 4c 8b c0 49 c1 e8 04 4c 03 c0 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 49 23 c0 4c 8b c1 49 c1 e8 04 4c 03 c1 48 b9 0f 0f 0f 0f 0f 0f 0f 0f 49 23 c8 48 03 c0 48 03 c1 48 b9 01 01 01 01 01 01 01 01 48 0f af c8 48 c1 e9 38 8d 04 0a 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 30}
000ah mov r10,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 54 24 38}
000fh mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0012h xor r11,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 da}
0015h mov rsi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f3}
0018h and rsi,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 f0}
001bh and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
001eh or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
0021h xor r8,r11                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4d 33 c3}
0024h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0027h shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
002ah mov r11,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 55 55 55 55 55 55 55 55}
0034h and rcx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 cb}
0037h sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
003ah mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
003dh shr rcx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e9}
0040h and rcx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 cb}
0043h sub r8,rcx                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4c 2b c1}
0046h mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0050h and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0053h shr rdx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 02}
0057h mov r11,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 33 33 33 33 33 33 33 33}
0061h and rdx,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d3}
0064h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0067h and r11,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 d8}
006ah shr r8,2                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 02}
006eh mov rcx,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 33 33 33 33 33 33 33 33}
0078h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
007bh add r8,r11                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c3}
007eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0081h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0085h add rcx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 ca}
0088h mov rdx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 0f 0f 0f 0f 0f 0f 0f 0f}
0092h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0095h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0098h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
009ch add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
009fh mov r8,0f0f0f0f0f0f0f0fh                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 0f 0f 0f 0f 0f 0f 0f 0f}
00a9h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
00ach add rdx,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d2}
00afh add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
00b2h mov r8,101010101010101h                 ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 01 01 01 01 01 01 01 01}
00bch imul r8,rdx                             ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4c 0f af c2}
00c0h shr r8,38h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 38}
00c4h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
00c7h mov rcx,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c9}
00cah xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
00cdh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
00d0h and r8,r10                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c2}
00d3h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
00d6h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00d9h xor rcx,r10                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 ca}
00dch mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
00dfh shr r8,1                                ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{49 d1 e8}
00e2h mov r9,5555555555555555h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 55 55 55 55 55 55 55 55}
00ech and r8,r9                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c1}
00efh sub rax,r8                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b c0}
00f2h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
00f5h shr r8,1                                ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{49 d1 e8}
00f8h and r8,r9                               ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4d 23 c1}
00fbh sub rcx,r8                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{49 2b c8}
00feh mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0108h and r8,rax                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c0}
010bh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
010fh mov r9,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 33 33 33 33 33 33 33 33}
0119h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
011ch add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
011fh and r9,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c9}
0122h shr rcx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 02}
0126h mov r8,3333333333333333h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 33 33 33 33 33 33 33 33}
0130h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0133h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0136h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0139h shr r8,4                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 04}
013dh add r8,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c0}
0140h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
014ah and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
014dh mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0150h shr r8,4                                ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 04}
0154h add r8,rcx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c1}
0157h mov rcx,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 0f 0f 0f 0f 0f 0f 0f 0f}
0161h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0164h add rax,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c0}
0167h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
016ah mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0174h imul rcx,rax                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c8}
0178h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
017ch lea eax,[rdx+rcx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 0a}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
