; Span<Int16> square<Int16>(ReadOnlySpan<Int16> src, Span<Int16> dst)
; square_g16i[7ff7c719c830h, 7ff7c719c875h][69] = {0f 1f 44 00 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 23 4d 63 d1 4e 8d 14 52 4d 63 d9 4e 0f bf 1c 58 45 0f af db 4d 0f bf db 66 45 89 1a 41 ff c1 45 3b c8 7c dd 48 89 11 44 89 41 08 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:664
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
002ah movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002eh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0032h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0035h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0038h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003ah mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003dh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
