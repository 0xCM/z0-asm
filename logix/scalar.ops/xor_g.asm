------------------------------------------------------------------------------------------------------------------------
; byte xor<byte>(byte a, byte b)
; xor_g8u_8u[17] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 33 c2 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xor<sbyte>(sbyte a, sbyte b)
; xor_g8i_8i[20] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 33 c2 48 0f be c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort xor<ushort>(ushort a, ushort b)
; xor_g16u_16u[17] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 33 c2 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xor<short>(short a, short b)
; xor_g16i_16i[20] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 33 c2 48 0f bf c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint xor<uint>(uint a, uint b)
; xor_g32u_32u[10] = {0f 1f 44 00 00 33 d1 8b c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xor<int>(int a, int b)
; xor_g32i_32i[10] = {0f 1f 44 00 00 33 d1 8b c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong xor<ulong>(ulong a, ulong b)
; xor_g64u_64u[12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xor<long>(long a, long b)
; xor_g64i_64i[12] = {0f 1f 44 00 00 48 33 d1 48 8b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
