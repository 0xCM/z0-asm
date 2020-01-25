; Span<bit> neq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst)
; neq_g8i[7ff7c719e480h, 7ff7c719e4d6h][86] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2f 4d 63 da 4b 8d 34 98 4a 0f be 3c 18 4e 0f be 1c 1a 48 0f be ff 48 0f be ff 41 3b fb 41 0f 95 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d1 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:707
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movsx rdi,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4a 0f be 3c 18}
0026h movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h setne r11b                              ; SETNE r/m8 || 0F 95 /r || encoded[4]{41 0f 95 c3}
003ah movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003eh mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
