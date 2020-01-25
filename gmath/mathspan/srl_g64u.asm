; Span<ulong> srl<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst)
; srl_g64u[7ff7c71a8b10h, 7ff7c71a8b55h][69] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 45 33 db 45 85 c9 7e 24 45 0f b6 c0 41 83 e0 3f 49 63 cb 49 8d 34 ca 48 8b 3c ca 41 8b c8 48 d3 ef 48 89 3e 41 ff c3 45 3b d9 7c e4 4c 89 10 44 89 48 08 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:40:029
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
