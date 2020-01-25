; Span<ulong> sllv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<ulong> counts, Span<ulong> dst)
; sllv_g64u[7ff7c71a9c40h, 7ff7c71a9c84h][68] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 20 49 63 cb 49 8d 34 ca 48 8b 3c ca 49 8b 0c c8 0f b6 c9 48 d3 e7 48 89 3e 41 ff c3 45 3b d9 7c e0 4c 89 10 44 89 48 08 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:40:074
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h mov rcx,[r8+rcx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 0c c8}
0029h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002ch shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
002fh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0032h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0035h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003dh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
