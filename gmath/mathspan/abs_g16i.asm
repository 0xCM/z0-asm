; Span<Int16> abs<Int16>(ReadOnlySpan<Int16> src, Span<Int16> dst)
; abs_g16i[7ff7c71b00a0h, 7ff7c71b00ebh][75] = {56 0f 1f 40 00 48 8b 02 49 8b 10 45 8b 40 08 45 33 c9 45 85 c0 7e 28 4d 63 d1 4e 8d 1c 52 4e 0f bf 14 50 41 8b f2 c1 fe 0f 44 03 d6 44 33 d6 4d 0f bf d2 66 45 89 13 41 ff c1 45 3b c8 7c d8 48 89 11 44 89 41 08 48 8b c1 5e c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:59:730
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0026h sar esi,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 0f}
0029h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002ch xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002fh movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0033h mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
003fh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0042h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
