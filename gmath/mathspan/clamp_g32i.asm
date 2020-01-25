; Span<int> clamp<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; clamp_g32i[7ff7c719a560h, 7ff7c719a5aah][74] = {57 56 0f 1f 00 48 8b 02 49 8b 10 4d 8b 01 45 8b 49 08 45 33 d2 45 85 c9 7e 23 4d 63 da 4b 8d 34 98 42 8b 3c 98 46 8b 1c 9a 41 3b fb 7f 02 eb 03 41 8b fb 89 3e 41 ff c2 45 3b d1 7c dd 4c 89 01 44 89 49 08 48 8b c1 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:601
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea rsi,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4b 8d 34 98}
0021h mov edi,[rax+r11*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 3c 98}
0025h mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0029h cmp edi,r11d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b fb}
002ch jg short 0030h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
002eh jmp short 0033h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0030h mov edi,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b fb}
0033h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
