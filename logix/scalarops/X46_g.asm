------------------------------------------------------------------------------------------------------------------------
; byte f46<byte>(byte a, byte b, byte c)
; X46_g8u[43] = {0f 1f 44 00 00 0f b6 c1 41 0f b6 c8 23 c1 0f b6 c0 f7 d0 0f b6 c0 0f b6 d2 41 0f b6 c8 33 d1 0f b6 d2 0f b6 c0 23 c2 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
001dh xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
001fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f46<sbyte>(sbyte a, sbyte b, sbyte c)
; X46_g8i[50] = {0f 1f 44 00 00 48 0f be c1 49 0f be c8 23 c1 48 0f be c0 f7 d0 48 0f be c0 48 0f be d2 49 0f be c8 33 d1 48 0f be d2 48 0f be c0 23 c2 48 0f be c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0019h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
001dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0027h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f46<ushort>(ushort a, ushort b, ushort c)
; X46_g16u[43] = {0f 1f 44 00 00 0f b7 c1 41 0f b7 c8 23 c1 0f b7 c0 f7 d0 0f b7 c0 0f b7 d2 41 0f b7 c8 33 d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0019h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
001dh xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
001fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0022h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short f46<short>(short a, short b, short c)
; X46_g16i[50] = {0f 1f 44 00 00 48 0f bf c1 49 0f bf c8 23 c1 48 0f bf c0 f7 d0 48 0f bf c0 48 0f bf d2 49 0f bf c8 33 d1 48 0f bf d2 48 0f bf c0 23 c2 48 0f bf c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0015h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0019h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0021h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0023h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0027h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f46<uint>(uint a, uint b, uint c)
; X46_g32u[18] = {0f 1f 44 00 00 41 23 c8 8b c1 f7 d0 41 33 d0 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f46<int>(int a, int b, int c)
; X46_g32i[18] = {0f 1f 44 00 00 41 23 c8 8b c1 f7 d0 41 33 d0 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ch xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
000fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f46<ulong>(ulong a, ulong b, ulong c)
; X46_g64u[21] = {0f 1f 44 00 00 49 23 c8 48 8b c1 48 f7 d0 49 33 d0 48 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f46<long>(long a, long b, long c)
; X46_g64i[21] = {0f 1f 44 00 00 49 23 c8 48 8b c1 48 f7 d0 49 33 d0 48 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
