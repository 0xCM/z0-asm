; Span<Int16> clamp<Int16>(ReadOnlySpan<Int16> l, ReadOnlySpan<Int16> r, Span<Int16> dst)
; clamp_g16i[7ff7c71ace40h, 7ff7c71ace95h][85] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2e 4d 63 da 4b 8d 34 58 4a 0f bf 3c 58 4e 0f bf 1c 5a 48 0f bf ff 48 0f bf ff 41 3b fb 7f 02 eb 03 41 8b fb 66 89 3e 41 ff c2 45 3b d1 7c d2 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:59:575
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 58}
0021h movsx rdi,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4a 0f bf 3c 58}
0026h movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0033h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0036h jg short 003ah                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0038h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
003ah mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
003dh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
