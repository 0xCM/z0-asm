; 2020-01-24 18:07:07:177
; byte hexcode_parse(Char c)
; hexcode_parse_Char_0o[7ff7c6ac3370h, 7ff7c6ac3385h][21] = {0f 1f 44 00 00 0f b7 c9 48 b8 d8 41 87 c6 f7 7f 00 00 48 ff e0}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h mov rax,7ff7c68741d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 41 87 c6 f7 7f 00 00}
0012h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[3]{48 ff e0}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> sub_128u_a(Pair<ulong> a, Pair<ulong> b)
; sub_128u_a_0o[7ff7c6ac37a0h, 7ff7c6ac37cfh][47] = {0f 1f 44 00 00 48 8b 02 48 8b 52 08 4c 8b c8 4d 2b 08 49 3b c1 0f 92 c0 0f b6 c0 49 2b 50 08 8b c0 48 2b d0 4c 89 09 48 89 51 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000ch mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000fh sub r9,[r8]                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4d 2b 08}
0012h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0015h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh sub rdx,[r8+8]                          ; SUB r64, r/m64 || REX.W 2B /r || encoded[4]{49 2b 50 08}
001fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0021h sub rdx,rax                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d0}
0024h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
0027h mov [rcx+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 51 08}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void sub_128u_b(in ulong a, in ulong b, ref ulong c)
; sub_128u_b_64u[7ff7c6ac37e0h, 7ff7c6ac380fh][47] = {0f 1f 44 00 00 48 8b 01 48 2b 02 49 89 00 48 8b 01 49 3b 00 0f 92 c0 0f b6 c0 49 83 c0 08 48 8b 49 08 48 2b 4a 08 8b c0 48 2b c8 49 89 08 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h sub rax,[rdx]                           ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b 02}
000bh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
000eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0011h cmp rax,[r8]                            ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b 00}
0014h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0017h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ah add r8,8                                ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{49 83 c0 08}
001eh mov rcx,[rcx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 08}
0022h sub rcx,[rdx+8]                         ; SUB r64, r/m64 || REX.W 2B /r || encoded[4]{48 2b 4a 08}
0026h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0028h sub rcx,rax                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b c8}
002bh mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void mul_128u(Pair<ulong> src, ref Pair<ulong> dst)
; mul_128u_64uVoid[7ff7c6ac3820h, 7ff7c6ac3849h][41] = {0f 1f 44 00 00 48 8b 01 48 8b 49 08 48 89 54 24 10 4c 8b c2 48 8b d0 c4 e2 b3 f6 c1 4d 89 08 48 8b 54 24 10 48 89 42 08 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov rcx,[rcx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 08}
000ch mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
0011h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0014h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0017h mulx rax,r9,rcx                         ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 b3 f6 c1}
001ch mov [r8],r9                             ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 08}
001fh mov rdx,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 10}
0024h mov [rdx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 42 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> add_128u(Pair<ulong> a, Pair<ulong> b)
; add_128u_0o[7ff7c6ac3860h, 7ff7c6ac388fh][47] = {0f 1f 44 00 00 48 8b 02 48 8b 52 08 4c 8b c8 4d 03 08 49 3b c1 0f 97 c0 0f b6 c0 49 03 50 08 8b c0 48 03 c2 4c 89 09 48 89 41 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000ch mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000fh add r9,[r8]                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 08}
0012h cmp rax,r9                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c1}
0015h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh add rdx,[r8+8]                          ; ADD r64, r/m64 || REX.W 03 /r || encoded[4]{49 03 50 08}
001fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0021h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0024h mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
0027h mov [rcx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 08}
002bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002eh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> xor_128u(Pair<ulong> a, Pair<ulong> b)
; xor_128u_0o[7ff7c6ac38a0h, 7ff7c6ac38beh][30] = {0f 1f 44 00 00 48 8b 02 49 33 00 48 8b 52 08 49 33 50 08 48 89 01 48 89 51 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h xor rax,[r8]                            ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 00}
000bh mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000fh xor rdx,[r8+8]                          ; XOR r64, r/m64 || REX.W 33 /r || encoded[4]{49 33 50 08}
0013h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0016h mov [rcx+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 51 08}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> xnor_128u(Pair<ulong> a, Pair<ulong> b)
; xnor_128u_0o[7ff7c6ac38d0h, 7ff7c6ac38f4h][36] = {0f 1f 44 00 00 48 8b 02 49 33 00 48 8b 52 08 49 33 50 08 48 f7 d0 48 f7 d2 48 89 01 48 89 51 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h xor rax,[r8]                            ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 00}
000bh mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000fh xor rdx,[r8+8]                          ; XOR r64, r/m64 || REX.W 33 /r || encoded[4]{49 33 50 08}
0013h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
001ch mov [rcx+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 51 08}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> negate_128u(Pair<ulong> a)
; negate_128u_0o[7ff7c6ac3910h, 7ff7c6ac393dh][45] = {0f 1f 44 00 00 48 8b 02 48 8b 52 08 48 f7 d0 48 f7 d2 4c 8d 40 01 49 3b c0 0f 97 c0 0f b6 c0 48 03 c2 4c 89 01 48 89 41 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000fh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0012h lea r8,[rax+1]                          ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 40 01}
0016h cmp rax,r8                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{49 3b c0}
0019h seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0022h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0025h mov [rcx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 08}
0029h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ref Pair<ulong> inc_128u(ref Pair<ulong> a)
; inc_128u_0o[7ff7c6ac3950h, 7ff7c6ac3979h][41] = {0f 1f 44 00 00 48 8b 01 48 8d 50 01 48 3b c2 0f 97 c0 0f b6 c0 4c 8b 41 08 8b c0 49 03 c0 48 89 11 48 89 41 08 48 8b c1 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h lea rdx,[rax+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 01}
000ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
000fh seta al                                 ; SETA r/m8 || 0F 97 /r || encoded[3]{0f 97 c0}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h mov r8,[rcx+8]                          ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 41 08}
0019h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
001bh add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
001eh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0021h mov [rcx+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 08}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> srl_128u(Pair<ulong> a, int offset)
; srl_128u_64u_0o[7ff7c6ac3990h, 7ff7c6ac39fah][106] = {0f 1f 44 00 00 48 8b c1 4c 8b 0a 48 8b 52 08 41 83 f8 40 7c 20 41 81 f8 80 00 00 00 7c 08 45 33 d2 45 33 db eb 3c 41 8d 48 c0 49 d3 e9 4d 8b d9 45 33 d2 eb 2d 45 8b d0 41 83 e2 3f 41 8b ca 4c 8b da 49 d3 eb 41 8b ca 49 d3 e9 41 8b c8 f7 d9 83 c1 3f 48 d1 e2 48 d3 e2 49 0b d1 4d 8b d3 4c 8b da 4c 89 10 4c 89 58 08 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
000bh mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000fh cmp r8d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 40}
0013h jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c 20}
0015h cmp r8d,80h                             ; CMP r/m32, imm32 || o32 81 /7 id || encoded[7]{41 81 f8 80 00 00 00}
001ch jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0024h jmp short 0062h                         ; JMP rel8 || EB cb || encoded[2]{eb 3c}
0026h lea ecx,[r8-40h]                        ; LEA r32, m || o32 8D /r || encoded[4]{41 8d 48 c0}
002ah shr r9,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e9}
002dh mov r11,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d9}
0030h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0033h jmp short 0062h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0035h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0038h and r10d,3fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 3f}
003ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003fh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0042h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0045h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0048h shr r9,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e9}
004bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
004eh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0050h add ecx,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 3f}
0053h shl rdx,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e2}
0056h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0059h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
005ch mov r10,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d3}
005fh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0062h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0065h mov [rax+8],r11                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 58 08}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; Pair<ulong> sll_128u(Pair<ulong> a, int offset)
; sll_128u_64u_0o[7ff7c6ac3a10h, 7ff7c6ac3a7ah][106] = {0f 1f 44 00 00 48 8b c1 4c 8b 0a 48 8b 52 08 41 83 f8 40 7c 20 41 81 f8 80 00 00 00 7c 08 45 33 d2 45 33 db eb 3c 41 8d 48 c0 49 d3 e1 4d 8b d1 45 33 db eb 2d 45 8b d0 41 83 e2 3f 41 8b ca 48 d3 e2 41 8b c8 f7 d9 83 c1 3f 4d 8b d9 49 d1 eb 49 d3 eb 49 0b d3 41 8b ca 4d 8b d9 49 d3 e3 4c 8b d2 4c 89 10 4c 89 58 08 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r9,[rdx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 0a}
000bh mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000fh cmp r8d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f8 40}
0013h jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c 20}
0015h cmp r8d,80h                             ; CMP r/m32, imm32 || o32 81 /7 id || encoded[7]{41 81 f8 80 00 00 00}
001ch jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0024h jmp short 0062h                         ; JMP rel8 || EB cb || encoded[2]{eb 3c}
0026h lea ecx,[r8-40h]                        ; LEA r32, m || o32 8D /r || encoded[4]{41 8d 48 c0}
002ah shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
002dh mov r10,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d1}
0030h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0033h jmp short 0062h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0035h mov r10d,r8d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d0}
0038h and r10d,3fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e2 3f}
003ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003fh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0042h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0045h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0047h add ecx,3fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 3f}
004ah mov r11,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d9}
004dh shr r11,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{49 d1 eb}
0050h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0053h or rdx,r11                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d3}
0056h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0059h mov r11,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d9}
005ch shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
005fh mov r10,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d2}
0062h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0065h mov [rax+8],r11                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 58 08}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit same_128u(Pair<ulong> a, Pair<ulong> b)
; same_128u_0o[7ff7c6ac3a90h, 7ff7c6ac3ab3h][35] = {0f 1f 44 00 00 48 8b 01 48 3b 02 75 10 48 8b 41 08 48 3b 42 08 0f 94 c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h cmp rax,[rdx]                           ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b 02}
000bh jne short 001dh                         ; JNE rel8 || 75 cb || encoded[2]{75 10}
000dh mov rax,[rcx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 41 08}
0011h cmp rax,[rdx+8]                         ; CMP r64, r/m64 || REX.W 3B /r || encoded[4]{48 3b 42 08}
0015h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh jmp short 001fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001dh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit lt_128u(Pair<ulong> a, Pair<ulong> b)
; lt_128u_0o[7ff7c6ac3ad0h, 7ff7c6ac3b07h][55] = {0f 1f 44 00 00 48 8b 02 48 8b 52 08 4c 8b 01 48 8b 49 08 48 3b ca 41 0f 92 c1 45 0f b6 c9 48 3b ca 75 0b 4c 3b c0 0f 92 c0 0f b6 c0 eb 02 33 c0 41 0b c1 0f b6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000ch mov r8,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 01}
000fh mov rcx,[rcx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 08}
0013h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0016h setb r9b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c1}
001ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
001eh cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0021h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 0b}
0023h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0026h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch jmp short 0030h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
002eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0030h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; bit gteq_128u(Pair<ulong> a, Pair<ulong> b)
; gteq_128u_0o[7ff7c6ac3b20h, 7ff7c6ac3b5ch][60] = {0f 1f 44 00 00 48 8b 02 48 8b 52 08 4c 8b 01 48 8b 49 08 48 3b ca 41 0f 92 c1 45 0f b6 c9 48 3b ca 75 0b 4c 3b c0 0f 92 c0 0f b6 c0 eb 02 33 c0 41 0b c1 0f b6 c0 f7 d0 83 e0 01 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[rdx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 52 08}
000ch mov r8,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 01}
000fh mov rcx,[rcx+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 49 08}
0013h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0016h setb r9b                                ; SETB r/m8 || 0F 92 /r || encoded[4]{41 0f 92 c1}
001ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
001eh cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0021h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 0b}
0023h cmp r8,rax                              ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{4c 3b c0}
0026h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch jmp short 0030h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
002eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0030h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0038h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void mul_32u(Pair<uint> src, ref Pair<uint> dst)
; mul_32u_32uVoid[7ff7c6ac3b70h, 7ff7c6ac3b9dh][45] = {0f 1f 44 00 00 48 89 4c 24 08 8b 44 24 08 8b 4c 24 0c 48 89 54 24 10 4c 8b c2 8b d0 c4 e2 33 f6 c1 45 89 08 48 8b 54 24 10 89 42 04 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov eax,[rsp+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 08}
000eh mov ecx,[rsp+0ch]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 0c}
0012h mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
0017h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
001ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
001ch mulx eax,r9d,ecx                        ; MULX r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F6 /r || encoded[5]{c4 e2 33 f6 c1}
0021h mov [r8],r9d                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 08}
0024h mov rdx,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 10}
0029h mov [rdx+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 42 04}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mod_const_16(uint a)
; mod_const_16_32u[7ff7c6ac3bb0h, 7ff7c6ac3bc6h][22] = {0f 1f 44 00 00 8b d1 48 c1 e2 3c b8 10 00 00 00 c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0007h shl rdx,3ch                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 3c}
000bh mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0010h mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint div_const_16(uint a)
; div_const_16_32u[7ff7c6ac3be0h, 7ff7c6ac3bf7h][23] = {0f 1f 44 00 00 8b c1 48 ba 00 00 00 00 00 00 00 10 c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rdx,1000000000000000h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 00 00 00 10}
0011h mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mod_const_25(uint a)
; mod_const_25_32u[7ff7c6ac3c10h, 7ff7c6ac3c30h][32] = {0f 1f 44 00 00 8b d1 48 b8 71 3d 0a d7 a3 70 3d 0a 48 0f af d0 b8 19 00 00 00 c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0007h mov rax,0a3d70a3d70a3d71h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 71 3d 0a d7 a3 70 3d 0a}
0011h imul rdx,rax                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af d0}
0015h mov eax,19h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 19 00 00 00}
001ah mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint div_const_25(uint a)
; div_const_25_32u[7ff7c6ac3c40h, 7ff7c6ac3c57h][23] = {0f 1f 44 00 00 8b c1 48 ba 71 3d 0a d7 a3 70 3d 0a c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rdx,0a3d70a3d70a3d71h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 71 3d 0a d7 a3 70 3d 0a}
0011h mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint mod_const_32(uint a)
; mod_const_32_32u[7ff7c6ac3c70h, 7ff7c6ac3c86h][22] = {0f 1f 44 00 00 8b d1 48 c1 e2 3b b8 20 00 00 00 c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0007h shl rdx,3bh                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 3b}
000bh mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
0010h mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint div_const_32(uint a)
; div_const_32_32u[7ff7c6ac3ca0h, 7ff7c6ac3cb7h][23] = {0f 1f 44 00 00 8b c1 48 ba 00 00 00 00 00 00 00 08 c4 e2 fb f6 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov rdx,800000000000000h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 00 00 00 08}
0011h mulx rax,rax,rax                        ; MULX r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F6 /r || encoded[5]{c4 e2 fb f6 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
