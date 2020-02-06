------------------------------------------------------------------------------------------------------------------------
; byte f97<byte>(byte a, byte b, byte c)
; f97_g8u_8u_8u[58] = {0f 1f 44 00 00 0f b6 c2 8b d0 41 0f b6 c8 44 8b c1 41 33 d0 f7 d2 0f b6 d2 44 8b c1 41 23 c0 f7 d0 0f b6 c0 0f b6 d2 0f b6 c9 0f b6 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0011h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
0014h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
001fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0027h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002dh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002fh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0034h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0036h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f97<sbyte>(sbyte a, sbyte b, sbyte c)
; f97_g8i_8i_8i[75] = {0f 1f 44 00 00 48 0f be c2 49 0f be c8 44 8b c1 41 33 c0 f7 d0 48 0f be c0 48 0f be d2 44 8b c1 41 23 d0 f7 d2 48 0f be d2 44 8b c1 48 0f be c0 41 23 c0 48 0f be c0 c4 e2 70 f2 d2 48 0f be d2 48 0f be c0 0b c2 48 0f be c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
000dh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0010h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
001dh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0020h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0023h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0025h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0029h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
002ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0030h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0033h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0037h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
003ch movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0040h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0044h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0046h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f97<ushort>(ushort a, ushort b, ushort c)
; f97_g16u_16u_16u[58] = {0f 1f 44 00 00 0f b7 c2 8b d0 41 0f b7 c8 44 8b c1 41 33 d0 f7 d2 0f b7 d2 44 8b c1 41 23 c0 f7 d0 0f b7 c0 0f b7 d2 0f b7 c9 0f b7 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000eh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0011h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
0014h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0016h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0019h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
001fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0027h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
002ah movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002dh and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002fh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0034h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0036h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short f97<short>(short a, short b, short c)
; f97_g16i_16i_16i[75] = {0f 1f 44 00 00 48 0f bf c2 49 0f bf c8 44 8b c1 41 33 c0 f7 d0 48 0f bf c0 48 0f bf d2 44 8b c1 41 23 d0 f7 d2 48 0f bf d2 44 8b c1 48 0f bf c0 41 23 c0 48 0f bf c0 c4 e2 70 f2 d2 48 0f bf d2 48 0f bf c0 0b c2 48 0f bf c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
000dh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0010h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001dh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0020h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0023h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0025h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0029h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
002ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0030h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0033h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0037h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
003ch movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0040h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0044h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0046h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f97<uint>(uint a, uint b, uint c)
; f97_g32u_32u_32u[28] = {0f 1f 44 00 00 8b c2 41 33 c0 f7 d0 41 23 d0 f7 d2 41 23 c0 c4 e2 38 f2 d2 0b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0011h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0014h andn edx,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 d2}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f97<int>(int a, int b, int c)
; f97_g32i_32i_32i[28] = {0f 1f 44 00 00 8b c2 41 33 c0 f7 d0 41 23 d0 f7 d2 41 23 c0 c4 e2 38 f2 d2 0b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0011h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0014h andn edx,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 d2}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f97<ulong>(ulong a, ulong b, ulong c)
; f97_g64u_64u_64u[32] = {0f 1f 44 00 00 48 8b c2 49 33 c0 48 f7 d0 49 23 d0 48 f7 d2 49 23 c0 c4 e2 b8 f2 d2 48 0b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0011h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0014h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0017h andn rdx,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 d2}
001ch or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f97<long>(long a, long b, long c)
; f97_g64i_64i_64i[32] = {0f 1f 44 00 00 48 8b c2 49 33 c0 48 f7 d0 49 23 d0 48 f7 d2 49 23 c0 c4 e2 b8 f2 d2 48 0b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
0011h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0014h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0017h andn rdx,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 d2}
001ch or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
