------------------------------------------------------------------------------------------------------------------------
; void decrements<byte>(int count, ref byte dst)
; decrements_g32i_8u~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 44 0f b6 c8 45 88 08 ff c0 3b c1 7c ed c3}
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
; void decrements<sbyte>(int count, ref sbyte dst)
; decrements_g32i_8i~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4c 03 c2 4c 0f be c8 45 88 08 ff c0 3b c1 7c ed c3}
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
; void decrements<ushort>(int count, ref ushort dst)
; decrements_g32i_16u~ref[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 44 0f b7 c8 66 45 89 08 ff c0 3b c1 7c eb c3}
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
; void decrements<short>(int count, ref short dst)
; decrements_g32i_16i~ref[33] = {0f 1f 44 00 00 33 c0 85 c9 7e 15 4c 63 c0 4e 8d 04 42 4c 0f bf c8 66 45 89 08 ff c0 3b c1 7c eb c3}
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
; void decrements<uint>(int count, ref uint dst)
; decrements_g32i_32u~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
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
; void decrements<int>(int count, ref int dst)
; decrements_g32i_32i~ref[31] = {0f 1f 44 00 00 33 c0 85 c9 7e 13 4c 63 c0 4e 8d 04 82 44 8b c8 45 89 08 ff c0 3b c1 7c ed c3}
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
; void decrements<ulong>(int count, ref ulong dst)
; decrements_g32i_64u~ref[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
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
; void decrements<long>(int count, ref long dst)
; decrements_g32i_64i~ref[28] = {0f 1f 44 00 00 33 c0 85 c9 7e 10 4c 63 c0 4e 8d 0c c2 4d 89 01 ff c0 3b c1 7c f0 c3}
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
; void decrements<byte>(byte first, int count, ref byte dst)
; decrements_g8u_32i_8u~ref[44] = {0f 1f 44 00 00 33 c0 85 d2 7e 20 0f b6 c9 4c 63 c8 4d 03 c8 44 0f b6 d0 44 8b d9 45 2b da 45 0f b6 d3 45 88 11 ff c0 3b c2 7c e3 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
000bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
000eh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0011h add r9,r8                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c8}
0014h movzx r10d,al                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 d0}
0018h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001bh sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001eh movzx r10d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d3}
0022h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0025h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0027h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0029h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<sbyte>(sbyte first, int count, ref sbyte dst)
; decrements_g8i_32i_8i~ref[45] = {0f 1f 44 00 00 33 c0 85 d2 7e 21 48 0f be c9 4c 63 c8 4d 03 c8 4c 0f be d0 44 8b d9 45 2b da 4d 0f be d3 45 88 11 ff c0 3b c2 7c e3 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
000bh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000fh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0012h add r9,r8                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c8}
0015h movsx r10,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be d0}
0019h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001ch sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001fh movsx r10,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d3}
0023h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0026h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0028h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002ah jl short 000fh                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<ushort>(ushort first, int count, ref ushort dst)
; decrements_g16u_32i_16u~ref[46] = {0f 1f 44 00 00 33 c0 85 d2 7e 22 0f b7 c9 4c 63 c8 4f 8d 0c 48 44 0f b7 d0 44 8b d9 45 2b da 45 0f b7 d3 66 45 89 11 ff c0 3b c2 7c e1 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
000bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000eh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0011h lea r9,[r8+r9*2]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 48}
0015h movzx r10d,ax                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 d0}
0019h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001ch sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001fh movzx r10d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d3}
0023h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0027h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0029h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002bh jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<short>(short first, int count, ref short dst)
; decrements_g16i_32i_16i~ref[47] = {0f 1f 44 00 00 33 c0 85 d2 7e 23 48 0f bf c9 4c 63 c8 4f 8d 0c 48 4c 0f bf d0 44 8b d9 45 2b da 4d 0f bf d3 66 45 89 11 ff c0 3b c2 7c e1 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
000bh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000fh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0012h lea r9,[r8+r9*2]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 48}
0016h movsx r10,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf d0}
001ah mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001dh sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
0020h movsx r10,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d3}
0024h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0028h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
002ah cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002ch jl short 000fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<uint>(uint first, int count, ref uint dst)
; decrements_g32u_32i_32u~ref[37] = {0f 1f 44 00 00 33 c0 85 d2 7e 19 4c 63 c8 4f 8d 0c 88 44 8b d0 44 8b d9 45 2b da 45 89 19 ff c0 3b c2 7c e7 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r9,[r8+r9*4]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 88}
0012h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
0015h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
0018h sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001bh mov [r9],r11d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 19}
001eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0020h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0022h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<int>(int first, int count, ref int dst)
; decrements_g32i_32i_32i~ref[37] = {0f 1f 44 00 00 33 c0 85 d2 7e 19 4c 63 c8 4f 8d 0c 88 44 8b d0 44 8b d9 45 2b da 45 89 19 ff c0 3b c2 7c e7 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r9,[r8+r9*4]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 88}
0012h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
0015h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
0018h sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001bh mov [r9],r11d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 19}
001eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0020h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0022h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<ulong>(ulong first, int count, ref ulong dst)
; decrements_g64u_32i_64u~ref[34] = {0f 1f 44 00 00 33 c0 85 d2 7e 16 4c 63 c8 4f 8d 14 c8 4c 8b d9 4d 2b d9 4d 89 1a ff c0 3b c2 7c ea c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0021h                         ; JLE rel8 || 7E cb || encoded[2]{7e 16}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r10,[r8+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 c8}
0012h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0015h sub r11,r9                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4d 2b d9}
0018h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
001bh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
001fh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ea}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void decrements<long>(long first, int count, ref long dst)
; decrements_g64i_32i_64i~ref[34] = {0f 1f 44 00 00 33 c0 85 d2 7e 16 4c 63 c8 4f 8d 14 c8 4c 8b d9 4d 2b d9 4d 89 1a ff c0 3b c2 7c ea c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0021h                         ; JLE rel8 || 7E cb || encoded[2]{7e 16}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r10,[r8+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 c8}
0012h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0015h sub r11,r9                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4d 2b d9}
0018h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
001bh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
001fh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ea}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
