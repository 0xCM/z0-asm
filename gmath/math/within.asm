------------------------------------------------------------------------------------------------------------------------
; bit within(sbyte a, sbyte b, sbyte tolerance)
; within_8i_8i_8i[45] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 3b c2 7d 07 2b d0 48 63 ca eb 05 2b c2 48 63 c8 49 0f be c0 8b c0 48 3b c8 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jge short 0018h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0016h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0018h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ah movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001dh movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0021h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0023h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(byte a, byte b, byte tolerance)
; within_8u_8u_8u[41] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7d 07 2b d0 48 63 ca eb 05 2b c2 48 63 c8 41 0f b6 c0 48 3b c8 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jge short 0016h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0014h jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0016h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0018h movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001bh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
001fh cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0022h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(short a, short b, short tolerance)
; within_16i_16i_16i[45] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7d 07 2b d0 48 63 ca eb 05 2b c2 48 63 c8 49 0f bf c0 8b c0 48 3b c8 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jge short 0018h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0016h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0018h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ah movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001dh movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0021h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0023h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0026h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(ushort a, ushort b, ushort tolerance)
; within_16u_16u_16u[41] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7d 07 2b d0 48 63 ca eb 05 2b c2 48 63 c8 41 0f b7 c0 48 3b c8 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jge short 0016h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0014h jmp short 001bh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0016h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0018h movsxd rcx,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c8}
001bh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
001fh cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
0022h setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit within(int a, int b, int tolerance)
; within_32i_32i_32i[34] = {0f 1f 44 00 00 3b ca 7d 07 2b d1 48 63 c2 eb 05 2b ca 48 63 c1 41 8b d0 48 3b c2 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
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
; bit within(uint a, uint b, uint tolerance)
; within_32u_32u_32u[32] = {0f 1f 44 00 00 3b ca 73 06 2b d1 8b c2 eb 04 2b ca 8b c1 41 8b d0 48 3b c2 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_SBB
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
; bit within(long a, long b, long tolerance)
; within_64i_64i_64i[31] = {0f 1f 44 00 00 48 3b ca 7d 05 48 2b d1 eb 06 48 2b ca 48 8b d1 49 3b d0 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_ZED_SBB
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
------------------------------------------------------------------------------------------------------------------------
; bit within(ulong a, ulong b, ulong tolerance)
; within_64u_64u_64u[31] = {0f 1f 44 00 00 48 3b ca 73 05 48 2b d1 eb 06 48 2b ca 48 8b d1 49 3b d0 0f 96 c0 0f b6 c0 c3}
; TermCode = CTC_RET_ZED_SBB
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
