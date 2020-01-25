; ulong dot<ulong>(ReadOnlySpan<ulong> lhs, ReadOnlySpan<ulong> rhs)
; dot_g64u[7ff7c71bccd0h, 7ff7c71bcd09h][57] = {0f 1f 44 00 00 8b 41 08 48 8b 09 48 8b 12 45 33 c0 45 33 c9 85 c0 7e 1d 4d 63 d1 4e 8b 14 d1 4d 63 d9 4e 8b 1c da 4d 0f af d3 4d 03 c2 41 ff c1 44 3b c8 7c e3 49 8b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:11:00:302
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r10,[rcx+r10*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 14 d1}
001fh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0022h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0026h imul r10,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af d3}
002ah add r8,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c2}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0033h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0035h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
