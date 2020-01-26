------------------------------------------------------------------------------------------------------------------------
; byte f37<byte>(byte a, byte b, byte c)
; X37_g8u[28] = {0f 1f 44 00 00 0f b6 c1 41 0f b6 c8 0b c1 0f b6 c0 0f b6 d2 23 c2 f7 d0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0014h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f37<sbyte>(sbyte a, sbyte b, sbyte c)
; X37_g8i[32] = {0f 1f 44 00 00 48 0f be c1 49 0f be c8 0b c1 48 0f be c0 48 0f be d2 23 c2 f7 d0 48 0f be c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
000dh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0013h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f37<ushort>(ushort a, ushort b, ushort c)
; X37_g16u[28] = {0f 1f 44 00 00 0f b7 c1 41 0f b7 c8 0b c1 0f b7 c0 0f b7 d2 23 c2 f7 d0 0f b7 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000ch or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0014h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short f37<short>(short a, short b, short c)
; X37_g16i[32] = {0f 1f 44 00 00 48 0f bf c1 49 0f bf c8 0b c1 48 0f bf c0 48 0f bf d2 23 c2 f7 d0 48 0f bf c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
000dh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f37<uint>(uint a, uint b, uint c)
; X37_g32u[15] = {0f 1f 44 00 00 41 0b c8 23 d1 8b c2 f7 d0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f37<int>(int a, int b, int c)
; X37_g32i[15] = {0f 1f 44 00 00 41 0b c8 23 d1 8b c2 f7 d0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
0008h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f37<ulong>(ulong a, ulong b, ulong c)
; X37_g64u[18] = {0f 1f 44 00 00 49 0b c8 48 23 d1 48 8b c2 48 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0008h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f37<long>(long a, long b, long c)
; X37_g64i[18] = {0f 1f 44 00 00 49 0b c8 48 23 d1 48 8b c2 48 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0008h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
