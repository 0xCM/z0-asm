; Span<ulong> not<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst)
; not_g64u[7ff7c71a8420h, 7ff7c71a845eh][62] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 1c 4d 63 d1 4e 8d 14 d2 4d 63 d9 4e 8b 1c d8 49 f7 d3 4d 89 1a 41 ff c1 45 3b c8 7c e4 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:40:015
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
