------------------------------------------------------------------------------------------------------------------------
; BitVector<byte> select<byte>(BitVector<byte> x, BitVector<byte> y, BitVector<byte> z)
; XCA_g[34] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 0f b6 c0 0f b6 d2 23 d0 c4 e2 78 f2 c1 0b c2 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<sbyte> select<sbyte>(BitVector<sbyte> x, BitVector<sbyte> y, BitVector<sbyte> z)
; XCA_g[43] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 23 d0 48 0f be d2 49 0f be c8 c4 e2 78 f2 c1 48 0f be c0 48 0f be d2 0b c2 48 0f be c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0013h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0020h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0024h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0026h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ushort> select<ushort>(BitVector<ushort> x, BitVector<ushort> y, BitVector<ushort> z)
; XCA_g[34] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 0f b7 c0 0f b7 d2 23 d0 c4 e2 78 f2 c1 0b c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<short> select<short>(BitVector<short> x, BitVector<short> y, BitVector<short> z)
; XCA_g[43] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 23 d0 48 0f bf d2 49 0f bf c8 c4 e2 78 f2 c1 48 0f bf c0 48 0f bf d2 0b c2 48 0f bf c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0013h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0017h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
001ch movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0020h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0024h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0026h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<uint> select<uint>(BitVector<uint> x, BitVector<uint> y, BitVector<uint> z)
; XCA_g[15] = {0f 1f 44 00 00 23 d1 c4 c2 70 f2 c0 0b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h andn eax,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 c0}
000ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<int> select<int>(BitVector<int> x, BitVector<int> y, BitVector<int> z)
; XCA_g[15] = {0f 1f 44 00 00 23 d1 c4 c2 70 f2 c0 0b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h andn eax,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 c0}
000ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<ulong> select<ulong>(BitVector<ulong> x, BitVector<ulong> y, BitVector<ulong> z)
; XCA_g[17] = {0f 1f 44 00 00 48 23 d1 c4 c2 f0 f2 c0 48 0b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h andn rax,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 c0}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitVector<long> select<long>(BitVector<long> x, BitVector<long> y, BitVector<long> z)
; XCA_g[17] = {0f 1f 44 00 00 48 23 d1 c4 c2 f0 f2 c0 48 0b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h andn rax,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 c0}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
