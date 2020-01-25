; Span<ulong> or<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; or_g64u[7ff7c71a1e70h, 7ff7c71a1eb4h][68] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 1d 4d 63 da 4b 8d 34 d8 4a 8b 3c d8 4e 8b 1c da 4c 0b df 4c 89 1e 41 ff c2 45 3b d1 7c e3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:827
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 d8}
0021h mov rdi,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4a 8b 3c d8}
0025h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0029h or r11,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b df}
002ch mov [rsi],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 1e}
002fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0032h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0035h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0037h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
