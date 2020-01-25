; Span<long> increments<long>(Span<long> dst)
; increments_g[7ff7c718bc60h, 7ff7c718bc8eh][46] = {0f 1f 44 00 00 48 8b 02 8b 52 08 45 33 c0 85 d2 7e 12 4d 63 c8 4e 8d 14 c8 4d 89 0a 41 ff c0 44 3b c2 7c ee 48 89 01 89 51 08 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:205
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
