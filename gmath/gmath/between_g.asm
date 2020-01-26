------------------------------------------------------------------------------------------------------------------------
; bit between<byte>(byte x, byte min, byte max)
; between_g8u[35] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 3b c2 72 0a 3b c1 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jb short 001dh                          ; JB rel8 || 72 cb || encoded[2]{72 0a}
0013h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0015h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<sbyte>(sbyte x, sbyte min, sbyte max)
; between_g8i[37] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 3b c2 7c 0a 3b c1 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c 0a}
0015h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0017h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<ushort>(ushort x, ushort min, ushort max)
; between_g16u[35] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 3b c2 72 0a 3b c1 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jb short 001dh                          ; JB rel8 || 72 cb || encoded[2]{72 0a}
0013h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0015h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<Int16>(Int16 x, Int16 min, Int16 max)
; between_g16i[37] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 3b c2 7c 0a 3b c1 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c 0a}
0015h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0017h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<uint>(uint x, uint min, uint max)
; between_g32u[26] = {0f 1f 44 00 00 3b ca 72 0b 41 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 0014h                          ; JB rel8 || 72 cb || encoded[2]{72 0b}
0009h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
000ch setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<int>(int x, int min, int max)
; between_g32i[26] = {0f 1f 44 00 00 3b ca 7c 0b 41 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 0b}
0009h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
000ch setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<ulong>(ulong x, ulong min, ulong max)
; between_g64u[27] = {0f 1f 44 00 00 48 3b ca 72 0b 49 3b c8 0f 96 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jb short 0015h                          ; JB rel8 || 72 cb || encoded[2]{72 0b}
000ah cmp rcx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c8}
000dh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit between<long>(long x, long min, long max)
; between_g64i[27] = {0f 1f 44 00 00 48 3b ca 7c 0b 49 3b c8 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c 0b}
000ah cmp rcx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c8}
000dh setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
