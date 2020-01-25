; void storeseq<ulong>(ulong src, Span<byte> dst, int offset)
; storeseq__0o_g8u_0oVoid[7ff7c6e82990h, 7ff7c6e829dbh][75] = {0f 1f 44 00 00 48 8b 02 48 8b d1 45 33 c9 41 8b c9 c1 e1 03 45 8d 14 08 4d 63 d2 4c 03 d0 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 03 48 63 c9 49 bb a5 1a dc ed c8 01 00 00 49 03 cb 48 8b 09 49 89 0a 41 ff c1 41 83 f9 08 7c c4 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:34:124
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000eh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0011h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0014h lea r10d,[r8+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{45 8d 14 08}
0018h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
001bh add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
001eh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0021h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0024h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0028h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002eh mov r11,1c8eddc1aa5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a5 1a dc ed c8 01 00 00}
0038h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003bh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003eh mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
0041h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0044h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
0048h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
