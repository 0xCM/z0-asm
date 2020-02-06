------------------------------------------------------------------------------------------------------------------------
; byte fma<byte>(byte x, byte y, byte z)
; fma_g8u_8u_8u[30] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 0f b6 c0 0f b6 d2 0f af c2 03 c1 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0018h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte fma<sbyte>(sbyte x, sbyte y, sbyte z)
; fma_g8i_8i_8i[35] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 48 0f be c0 48 0f be d2 0f af c2 03 c1 48 0f be c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0015h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0019h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
001ch add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort fma<ushort>(ushort x, ushort y, ushort z)
; fma_g16u_16u_16u[30] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 0f b7 c0 0f b7 d2 0f af c2 03 c1 0f b7 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0015h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0018h add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short fma<short>(short x, short y, short z)
; fma_g16i_16i_16i[35] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 48 0f bf c0 48 0f bf d2 0f af c2 03 c1 48 0f bf c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0019h imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
001ch add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
001eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint fma<uint>(uint x, uint y, uint z)
; fma_g32u_32u_32u[14] = {0f 1f 44 00 00 0f af d1 41 03 d0 8b c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int fma<int>(int x, int y, int z)
; fma_g32i_32i_32i[14] = {0f 1f 44 00 00 0f af d1 41 03 d0 8b c2 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul edx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af d1}
0008h add edx,r8d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{41 03 d0}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong fma<ulong>(ulong x, ulong y, ulong z)
; fma_g64u_64u_64u[16] = {0f 1f 44 00 00 48 0f af d1 49 03 d0 48 8b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
000ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long fma<long>(long x, long y, long z)
; fma_g64i_64i_64i[16] = {0f 1f 44 00 00 48 0f af d1 49 03 d0 48 8b c2 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul rdx,rcx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d1}
0009h add rdx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d0}
000ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
