; Span<bit> eq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst)
; eq_g16u[7ff7c719dda0h, 7ff7c719ddf4h][84] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 2d 4d 63 da 4b 8d 34 98 42 0f b7 3c 58 46 0f b7 1c 5a 0f b7 ff 0f b7 ff 41 3b fb 41 0f 94 c3 45 0f b6 db 44 89 1e 41 ff c2 45 3b d1 7c d3 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:692
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h movzx edi,word ptr [rax+r11*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{42 0f b7 3c 58}
0026h movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
002bh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002eh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0031h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
0034h sete r11b                               ; SETE r/m8 || 0F 94 /r || encoded[4]{41 0f 94 c3}
0038h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
003ch mov [rsi],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 1e}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
