------------------------------------------------------------------------------------------------------------------------
; void storeseq<byte>(byte src, Span<byte> dst, int offset)
; storeseq_g0o_span0o_0o[43] = {0f 1f 44 00 00 48 8b 02 0f b6 d1 49 63 c8 48 03 c1 c1 e2 03 48 63 d2 48 b9 21 1e c9 cb e3 01 00 00 48 03 d1 48 8b 12 48 89 10 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000eh add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
0011h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0014h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0017h mov rcx,1e3cbc91e21h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 21 1e c9 cb e3 01 00 00}
0021h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0024h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0027h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<ushort>(ushort src, Span<byte> dst, int offset)
; storeseq_g0o_span0o_0o[79] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 49 63 c8 48 03 c8 44 0f b6 ca 41 c1 e1 03 4d 63 c9 49 ba 21 1e c9 cb e3 01 00 00 4d 03 ca 4d 8b 09 4c 89 09 41 83 c0 08 49 63 c8 48 03 c1 c1 fa 08 0f b6 d2 c1 e2 03 48 63 d2 49 03 d2 48 8b 12 48 89 10 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
000eh add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
0011h movzx r9d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ca}
0015h shl r9d,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 03}
0019h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
001ch mov r10,1e3cbc91e21h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 ba 21 1e c9 cb e3 01 00 00}
0026h add r9,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 ca}
0029h mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
002ch mov [rcx],r9                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 09}
002fh add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0033h movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0036h add rax,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c1}
0039h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
003ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003fh shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0042h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0045h add rdx,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 d2}
0048h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
004bh mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<uint>(uint src, Span<byte> dst, int offset)
; storeseq_g0o_span0o_0o[74] = {0f 1f 44 00 00 48 8b 02 8b d1 45 33 c9 41 8b c9 c1 e1 03 45 8d 14 08 4d 63 d2 4c 03 d0 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 03 48 63 c9 49 bb 21 1e c9 cb e3 01 00 00 49 03 cb 48 8b 09 49 89 0a 41 ff c1 41 83 f9 04 7c c4 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000dh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0010h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
0013h lea r10d,[r8+rcx]                       ; LEA r32, m || o32 8D /r || encoded[4]{45 8d 14 08}
0017h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
001ah add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
001dh mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
0020h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
0023h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0027h shl ecx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 03}
002ah movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002dh mov r11,1e3cbc91e21h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 21 1e c9 cb e3 01 00 00}
0037h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003ah mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003dh mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
0040h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0043h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0047h jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void storeseq<ulong>(ulong src, Span<byte> dst, int offset)
; storeseq_g0o_span0o_0o[75] = {0f 1f 44 00 00 48 8b 02 48 8b d1 45 33 c9 41 8b c9 c1 e1 03 45 8d 14 08 4d 63 d2 4c 03 d0 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 03 48 63 c9 49 bb 21 1e c9 cb e3 01 00 00 49 03 cb 48 8b 09 49 89 0a 41 ff c1 41 83 f9 08 7c c4 c3}
; Capture completion code = RET_ZED_SBB
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
002eh mov r11,1e3cbc91e21h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 21 1e c9 cb e3 01 00 00}
0038h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003bh mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
003eh mov [r10],rcx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 0a}
0041h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0044h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
0048h jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c c4}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
