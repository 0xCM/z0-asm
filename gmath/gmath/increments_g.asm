------------------------------------------------------------------------------------------------------------------------
; Span<byte> increments<byte>(Span<byte> dst)
; increments_gspan8u[49] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 15 4d 63 c8 4c 03 c8 45 0f b6 d0 45 88 11 41 ff c0 44 3b c2 7c eb 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h add r9,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c8}
0018h movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
001ch mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0025h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0027h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> increments<sbyte>(Span<sbyte> dst)
; increments_gspan8i[49] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 15 4d 63 c8 4c 03 c8 4d 0f be d0 45 88 11 41 ff c0 44 3b c2 7c eb 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h add r9,rax                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c8}
0018h movsx r10,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d0}
001ch mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0025h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0027h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> increments<ushort>(Span<ushort> dst)
; increments_gspan16u[51] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 17 4d 63 c8 4e 8d 0c 48 45 0f b7 d0 66 45 89 11 41 ff c0 44 3b c2 7c e9 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r9,[rax+r9*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 48}
0019h movzx r10d,r8w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d0}
001dh mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0021h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0024h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0027h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
0029h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> increments<short>(Span<short> dst)
; increments_gspan16i[51] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 17 4d 63 c8 4e 8d 0c 48 4d 0f bf d0 66 45 89 11 41 ff c0 44 3b c2 7c e9 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r9,[rax+r9*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 48}
0019h movsx r10,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d0}
001dh mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0021h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0024h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0027h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
0029h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ch mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> increments<uint>(Span<uint> dst)
; increments_gspan32u[49] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 15 4d 63 c8 4e 8d 0c 88 45 8b d0 45 89 11 41 ff c0 44 3b c2 7c eb 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
0019h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
001ch mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0025h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0027h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> increments<int>(Span<int> dst)
; increments_gspan32i[49] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 15 4d 63 c8 4e 8d 0c 88 45 8b d0 45 89 11 41 ff c0 44 3b c2 7c eb 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0027h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r9,[rax+r9*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 88}
0019h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
001ch mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0025h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0027h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
002ah mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> increments<ulong>(Span<ulong> dst)
; increments_gspan64u[46] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 12 4d 63 c8 4e 8d 14 c8 4d 89 0a 41 ff c0 44 3b c2 7c ee 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e 12}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h mov [r10],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 0a}
001ch inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
001fh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0022h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c ee}
0024h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0027h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> increments<long>(Span<long> dst)
; increments_gspan64i[46] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 12 4d 63 c8 4e 8d 14 c8 4d 89 0a 41 ff c0 44 3b c2 7c ee 48 89 01 89 51 08 48 8b c1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 52 08}
000bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
000eh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0010h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e 12}
0012h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0015h lea r10,[rax+r9*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 c8}
0019h mov [r10],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 0a}
001ch inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
001fh cmp r8d,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c2}
0022h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c ee}
0024h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0027h mov [rcx+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 51 08}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<byte>(int count, ref byte dst)
; increments_g32i_8u~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 44 0f b6 c8 45 88 08 ff c0 3b c1 7c ed c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<sbyte>(int count, ref sbyte dst)
; increments_g32i_8i~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 4c 0f be c8 45 88 08 ff c0 3b c1 7c ed c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh add r8,rdx                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 c2}
0011h movsx r9,al                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c8}
0015h mov [r8],r9b                            ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<ushort>(int count, ref ushort dst)
; increments_g32i_16u~ref[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 44 0f b7 c8 66 45 89 08 ff c0 3b c1 7c eb c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 0020h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 42}
0012h movzx r9d,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c8}
0016h mov [r8],r9w                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 08}
001ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001eh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<short>(int count, ref short dst)
; increments_g32i_16i~ref[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 4c 0f bf c8 66 45 89 08 ff c0 3b c1 7c eb c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 0020h                         ; JLE rel8 || 7E cb || encoded[2]{7e 15}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 42}
0012h movsx r9,ax                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c8}
0016h mov [r8],r9w                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 08}
001ah inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ch cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001eh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c eb}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<uint>(int count, ref uint dst)
; increments_g32i_32u~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<int>(int count, ref int dst)
; increments_g32i_32i~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 13}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r8,[rdx+r8*4]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 04 82}
0012h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0015h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0018h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001ah cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
001ch jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ed}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<ulong>(int count, ref ulong dst)
; increments_g32i_64u~ref[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 10}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r9,[rdx+r8*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c2}
0012h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
0015h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0017h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0019h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void increments<long>(int count, ref long dst)
; increments_g32i_64i~ref[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0009h jle short 001bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 10}
000bh movsxd r8,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c0}
000eh lea r9,[rdx+r8*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c c2}
0012h mov [r9],r8                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 01}
0015h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0017h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0019h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c f0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
