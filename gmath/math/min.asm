------------------------------------------------------------------------------------------------------------------------
; sbyte min(sbyte a, sbyte b)
; min_8i_8i[21] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7c 03 8b c2 c3 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte min(byte a, byte b)
; min_8u_8u[19] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7c 03 8b c2 c3 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short min(short a, short b)
; min_16i_16i[21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7c 03 8b c2 c3 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort min(ushort a, ushort b)
; min_16u_16u[19] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7c 03 8b c2 c3 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int min(int a, int b)
; min_32i_32i[15] = {0f 1f 44 00 00 3b ca 7c 03 8b c2 c3 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 000ch                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint min(uint a, uint b)
; min_32u_32u[15] = {0f 1f 44 00 00 3b ca 72 03 8b c2 c3 8b c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 000ch                          ; JB rel8 || 72 cb || encoded[2]{72 03}
0009h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
000ch mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long min(long a, long b)
; min_64i_64i[18] = {0f 1f 44 00 00 48 3b ca 7c 04 48 8b c2 c3 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong min(ulong a, ulong b)
; min_64u_64u[18] = {0f 1f 44 00 00 48 3b ca 72 04 48 8b c2 c3 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 000eh                          ; JB rel8 || 72 cb || encoded[2]{72 04}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
