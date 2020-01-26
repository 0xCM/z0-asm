------------------------------------------------------------------------------------------------------------------------
; byte f27<byte>(byte a, byte b, byte c)
; X27_g8u[47] = {0f 1f 44 00 00 0f b6 c2 f7 d0 0f b6 c0 0f b6 d1 f7 d2 0f b6 d2 41 0f b6 c8 0f b6 c0 0f b6 c9 0f b6 c0 23 c1 c4 e2 70 f2 d2 0b c2 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0010h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0024h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0029h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f27<sbyte>(sbyte a, sbyte b, sbyte c)
; X27_g8i[63] = {0f 1f 44 00 00 48 0f be c2 f7 d0 48 0f be c0 48 0f be d1 f7 d2 48 0f be d2 49 0f be c8 48 0f be c0 23 c1 48 0f be c0 49 0f be c8 c4 e2 70 f2 d2 48 0f be d2 48 0f be c0 0b c2 48 0f be c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
000fh movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
0013h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0015h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0019h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
001dh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0021h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0023h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0027h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
002bh andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0030h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0034h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0038h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f27<ushort>(ushort a, ushort b, ushort c)
; X27_g16u[47] = {0f 1f 44 00 00 0f b7 c2 f7 d0 0f b7 c0 0f b7 d1 f7 d2 0f b7 d2 41 0f b7 c8 0f b7 c0 0f b7 c9 0f b7 c0 23 c1 c4 e2 70 f2 d2 0b c2 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0010h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0024h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0029h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 f27<Int16>(Int16 a, Int16 b, Int16 c)
; X27_g16i[63] = {0f 1f 44 00 00 48 0f bf c2 f7 d0 48 0f bf c0 48 0f bf d1 f7 d2 48 0f bf d2 49 0f bf c8 48 0f bf c0 23 c1 48 0f bf c0 49 0f bf c8 c4 e2 70 f2 d2 48 0f bf d2 48 0f bf c0 0b c2 48 0f bf c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
000fh movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0013h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0015h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0019h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
001dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0021h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0023h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0027h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
002bh andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0030h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0034h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0038h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f27<uint>(uint a, uint b, uint c)
; X27_g32u[24] = {0f 1f 44 00 00 8b c2 f7 d0 8b d1 f7 d2 41 23 c0 c4 e2 38 f2 d2 0b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0010h andn edx,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 d2}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f27<int>(int a, int b, int c)
; X27_g32i[24] = {0f 1f 44 00 00 8b c2 f7 d0 8b d1 f7 d2 41 23 c0 c4 e2 38 f2 d2 0b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0010h andn edx,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 d2}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f27<ulong>(ulong a, ulong b, ulong c)
; X27_g64u[29] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 48 8b d1 48 f7 d2 49 23 c0 c4 e2 b8 f2 d2 48 0b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000eh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0011h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0014h andn rdx,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 d2}
0019h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f27<long>(long a, long b, long c)
; X27_g64i[29] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 48 8b d1 48 f7 d2 49 23 c0 c4 e2 b8 f2 d2 48 0b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000eh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0011h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0014h andn rdx,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 d2}
0019h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
