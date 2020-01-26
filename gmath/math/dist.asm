------------------------------------------------------------------------------------------------------------------------
; ulong dist(byte a, byte b)
; dist_8u[27] = {0f 1f 44 00 00 0f b6 c9 0f b6 d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000dh jge short 0015h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
000fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0011h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
0015h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0017h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(sbyte a, sbyte b)
; dist_8i[29] = {0f 1f 44 00 00 48 0f be c9 48 0f be d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000fh jge short 0017h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0011h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
0017h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0019h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(Int16 a, Int16 b)
; dist_16i[29] = {0f 1f 44 00 00 48 0f bf c9 48 0f bf d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000fh jge short 0017h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0011h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
0017h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0019h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(ushort a, ushort b)
; dist_16u[27] = {0f 1f 44 00 00 0f b7 c9 0f b7 d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000dh jge short 0015h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
000fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0011h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
0015h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0017h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(int a, int b)
; dist_32i[21] = {0f 1f 44 00 00 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jge short 000fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0011h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(uint a, uint b)
; dist_32u[19] = {0f 1f 44 00 00 3b ca 73 05 2b d1 8b c2 c3 2b ca 8b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jae short 000eh                         ; JAE rel8 || 73 cb || encoded[2]{73 05}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0010h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(long a, long b)
; dist_64i[24] = {0f 1f 44 00 00 48 3b ca 7d 07 48 8b c2 48 2b c1 c3 48 2b ca 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jge short 0011h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dist(ulong a, ulong b)
; dist_64u[24] = {0f 1f 44 00 00 48 3b ca 73 07 48 8b c2 48 2b c1 c3 48 2b ca 48 8b c1 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jae short 0011h                         ; JAE rel8 || 73 cb || encoded[2]{73 07}
000ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000dh sub rax,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
0011h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
