------------------------------------------------------------------------------------------------------------------------
; bit within<byte>(byte a, byte b, byte delta)
; within_g8u[43] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 41 0f b6 c8 3b c2 73 07 2b d0 44 8b c2 eb 05 2b c2 44 8b c0 8b c1 4c 3b c0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jae short 001ah                         ; JAE rel8 || 73 cb || encoded[2]{73 07}
0013h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0015h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0018h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001ah sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
001fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0021h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0024h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<sbyte>(sbyte a, sbyte b, sbyte delta)
; within_g8i[45] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 3b c2 7d 07 2b d0 4c 63 c2 eb 05 2b c2 4c 63 c0 8b c1 4c 3b c0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jge short 001ch                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0015h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0017h movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
001ah jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001eh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
0021h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0023h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<ushort>(ushort a, ushort b, ushort delta)
; within_g16u[43] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 41 0f b7 c8 3b c2 73 07 2b d0 44 8b c2 eb 05 2b c2 44 8b c0 8b c1 4c 3b c0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0011h jae short 001ah                         ; JAE rel8 || 73 cb || encoded[2]{73 07}
0013h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0015h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0018h jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001ah sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
001fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0021h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0024h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<short>(short a, short b, short delta)
; within_g16i[45] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 3b c2 7d 07 2b d0 4c 63 c2 eb 05 2b c2 4c 63 c0 8b c1 4c 3b c0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jge short 001ch                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0015h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0017h movsxd r8,edx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c2}
001ah jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
001ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001eh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
0021h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0023h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<uint>(uint a, uint b, uint delta)
; within_g32u[32] = {0f 1f 44 00 00 3b ca 73 06 2b d1 8b c2 eb 04 2b ca 8b c1 41 8b d0 48 3b c2 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jae short 000fh                         ; JAE rel8 || 73 cb || encoded[2]{73 06}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh jmp short 0013h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
000fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0011h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0013h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0016h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
0019h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<int>(int a, int b, int delta)
; within_g32i[34] = {0f 1f 44 00 00 3b ca 7d 07 2b d1 48 63 c2 eb 05 2b ca 48 63 c1 41 8b d0 48 3b c2 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jge short 0010h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
000eh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0010h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0012h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0015h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0018h cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001bh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<ulong>(ulong a, ulong b, ulong delta)
; within_g64u[31] = {0f 1f 44 00 00 48 3b ca 73 05 48 2b d1 eb 06 48 2b ca 48 8b d1 49 3b d0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jae short 000fh                         ; JAE rel8 || 73 cb || encoded[2]{73 05}
000ah sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
000dh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
000fh sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0012h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0015h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0018h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within<long>(long a, long b, long delta)
; within_g64i[31] = {0f 1f 44 00 00 48 3b ca 7d 05 48 2b d1 eb 06 48 2b ca 48 8b d1 49 3b d0 0f 96 c0 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jge short 000fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 05}
000ah sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
000dh jmp short 0015h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
000fh sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0012h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
0015h cmp rdx,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b d0}
0018h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
