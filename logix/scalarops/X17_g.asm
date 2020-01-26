------------------------------------------------------------------------------------------------------------------------
; byte f17<byte>(byte a, byte b, byte c)
; X17_g8u[59] = {0f 1f 44 00 00 0f b6 c2 8b d0 45 0f b6 c0 45 8b c8 41 0b d1 0f b6 d2 41 23 c0 0f b6 c0 0f b6 c9 0f b6 d2 0f b6 c9 0f b6 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b6 c0 f7 d0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000eh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0011h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0014h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0017h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0020h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0023h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0026h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0029h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002bh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0030h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0037h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f17<sbyte>(sbyte a, sbyte b, sbyte c)
; X17_g8i[80] = {0f 1f 44 00 00 48 0f be c2 4d 0f be c8 41 0b c1 48 0f be c0 48 0f be d2 4d 0f be c0 41 23 d0 48 0f be d2 4c 0f be c1 48 0f be c0 41 23 c0 48 0f be c0 48 0f be c9 c4 e2 70 f2 d2 48 0f be d2 48 0f be c0 0b c2 48 0f be c0 f7 d0 48 0f be c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx r9,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c8}
000dh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0018h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
001ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
001fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0023h movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
0027h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0036h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
003bh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
003fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0043h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0045h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0049h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f17<ushort>(ushort a, ushort b, ushort c)
; X17_g16u[59] = {0f 1f 44 00 00 0f b7 c2 8b d0 45 0f b7 c0 45 8b c8 41 0b d1 0f b7 d2 41 23 c0 0f b7 c0 0f b7 c9 0f b7 d2 0f b7 c9 0f b7 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b7 c0 f7 d0 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
000eh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0011h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0014h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0017h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0020h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0023h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0026h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0029h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002bh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0030h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0032h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0035h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0037h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 f17<Int16>(Int16 a, Int16 b, Int16 c)
; X17_g16i[80] = {0f 1f 44 00 00 48 0f bf c2 4d 0f bf c8 41 0b c1 48 0f bf c0 48 0f bf d2 4d 0f bf c0 41 23 d0 48 0f bf d2 4c 0f bf c1 48 0f bf c0 41 23 c0 48 0f bf c0 48 0f bf c9 c4 e2 70 f2 d2 48 0f bf d2 48 0f bf c0 0b c2 48 0f bf c0 f7 d0 48 0f bf c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx r9,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c8}
000dh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0018h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
001ch and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
001fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0023h movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
0027h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002bh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
002eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0032h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0036h andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
003bh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
003fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0043h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0045h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0049h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f17<uint>(uint a, uint b, uint c)
; X17_g32u[25] = {0f 1f 44 00 00 8b c2 41 0b c0 41 23 d0 23 c1 c4 e2 70 f2 d2 0b c2 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f17<int>(int a, int b, int c)
; X17_g32i[25] = {0f 1f 44 00 00 8b c2 41 0b c0 41 23 d0 23 c1 c4 e2 70 f2 d2 0b c2 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ah and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
000dh and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000fh andn edx,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 d2}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f17<ulong>(ulong a, ulong b, ulong c)
; X17_g64u[29] = {0f 1f 44 00 00 48 8b c2 49 0b c0 49 23 d0 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 48 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000bh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0011h andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0016h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0019h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f17<long>(long a, long b, long c)
; X17_g64i[29] = {0f 1f 44 00 00 48 8b c2 49 0b c0 49 23 d0 48 23 c1 c4 e2 f0 f2 d2 48 0b c2 48 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
000bh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000eh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0011h andn rdx,rcx,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 f0 f2 d2}
0016h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0019h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
