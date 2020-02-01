------------------------------------------------------------------------------------------------------------------------
; void bitchars<byte>(byte src, Span<char> dst, int offset)
; bitchars_g8u_32i[46] = {c5 f8 77 66 90 48 8b 02 0f b6 d1 c1 e2 04 48 63 d2 48 b9 b5 9e 83 cc be 01 00 00 48 03 d1 49 63 c8 48 8d 04 48 c5 fa 6f 02 c5 fa 7f 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
000bh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0011h mov rcx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b5 9e 83 cc be 01 00 00}
001bh add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
001eh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0021h lea rax,[rax+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 48}
0025h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<sbyte>(sbyte src, Span<char> dst, int offset)
; bitchars_g8i_32i[50] = {c5 f8 77 66 90 48 8b 02 48 0f be d1 0f b6 d2 c1 e2 04 48 63 d2 48 b9 b5 9e 83 cc be 01 00 00 48 03 d1 49 63 c8 48 8d 04 48 c5 fa 6f 02 c5 fa 7f 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
000ch movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000fh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0012h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0015h mov rcx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b5 9e 83 cc be 01 00 00}
001fh add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0022h movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0025h lea rax,[rax+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 48}
0029h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
002dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<ushort>(ushort src, Span<char> dst, int offset)
; bitchars_g16u_32i[94] = {c5 f8 77 66 90 48 8b 02 0f b7 d1 0f b6 ca c1 e1 04 48 63 c9 49 b9 b5 9e 83 cc be 01 00 00 49 03 c9 4d 63 c8 4e 8d 0c 48 c5 fa 6f 01 c4 c1 7a 7f 01 c1 fa 08 0f b6 d2 c1 e2 04 48 63 d2 48 b9 b5 9e 83 cc be 01 00 00 48 03 d1 41 83 c0 08 49 63 c8 48 8d 04 48 c5 fa 6f 02 c5 fa 7f 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000eh shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0011h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0014h mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
001eh add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0021h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0024h lea r9,[rax+r9*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 48}
0028h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
002ch vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0031h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0034h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0037h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
003ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
003dh mov rcx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b5 9e 83 cc be 01 00 00}
0047h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
004ah add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
004eh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0051h lea rax,[rax+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 48}
0055h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0059h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<short>(short src, Span<char> dst, int offset)
; bitchars_g16i_32i[98] = {c5 f8 77 66 90 48 8b 02 48 0f bf d1 0f b7 d2 0f b6 ca c1 e1 04 48 63 c9 49 b9 b5 9e 83 cc be 01 00 00 49 03 c9 4d 63 c8 4e 8d 0c 48 c5 fa 6f 01 c4 c1 7a 7f 01 c1 fa 08 0f b6 d2 c1 e2 04 48 63 d2 48 b9 b5 9e 83 cc be 01 00 00 48 03 d1 41 83 c0 08 49 63 c8 48 8d 04 48 c5 fa 6f 02 c5 fa 7f 00 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000ch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000fh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0012h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0015h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0018h mov r9,1becc839eb5h                     ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b9 b5 9e 83 cc be 01 00 00}
0022h add rcx,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c9}
0025h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
0028h lea r9,[rax+r9*2]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 0c 48}
002ch vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0030h vmovdqu xmmword ptr [r9],xmm0           ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 01}
0035h sar edx,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 08}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
003eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0041h mov rcx,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b5 9e 83 cc be 01 00 00}
004bh add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
004eh add r8d,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[4]{41 83 c0 08}
0052h movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0055h lea rax,[rax+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 48}
0059h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
005dh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<uint>(uint src, Span<char> dst, int offset)
; bitchars_g32u_32i[81] = {c5 f8 77 66 90 48 8b 02 8b d1 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000dh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0010h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0014h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0017h mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
001ah shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
001dh movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0021h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0024h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0027h mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0031h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
0034h add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
0037h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
003ah lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
003eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0042h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0047h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
004ah cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004eh jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<int>(int src, Span<char> dst, int offset)
; bitchars_g32i_32i[81] = {c5 f8 77 66 90 48 8b 02 8b d1 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000dh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0010h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0014h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0017h mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
001ah shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
001dh movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0021h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0024h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0027h mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0031h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
0034h add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
0037h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
003ah lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
003eh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0042h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0047h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
004ah cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
004eh jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<ulong>(ulong src, Span<char> dst, int offset)
; bitchars_g64u_32i[82] = {c5 f8 77 66 90 48 8b 02 48 8b d1 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000eh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0011h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0015h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0018h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
001bh shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
001eh movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0022h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0025h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0028h mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0032h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
0035h add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
0038h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
003bh lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
003fh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0043h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0048h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
004bh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
004fh jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<long>(long src, Span<char> dst, int offset)
; bitchars_g64i_32i[82] = {c5 f8 77 66 90 48 8b 02 48 8b d1 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
000eh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0011h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0015h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0018h mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
001bh shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
001eh movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0022h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
0025h movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0028h mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0032h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
0035h add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
0038h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
003bh lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
003fh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0043h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
0048h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
004bh cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
004fh jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<float>(float src, Span<char> dst, int offset)
; bitchars_g32f_32i[93] = {50 c5 f8 77 90 48 8b 02 c5 fa 11 44 24 04 8b 54 24 04 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000eh mov edx,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 04}
0012h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0015h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0018h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
001ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
001fh mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
0022h shr r11d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 eb}
0025h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0029h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
002ch movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002fh mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0039h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003ch add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
003fh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0042h lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
0046h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
004ah vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
004fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0052h cmp r9d,4                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 04}
0056h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0058h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void bitchars<double>(double src, Span<char> dst, int offset)
; bitchars_g64f_32i[92] = {50 c5 f8 77 90 48 8b 02 c5 fb 11 04 24 48 8b 14 24 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 4c 8b da 49 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb b5 9e 83 cc be 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 08 7c bd 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0017h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
001bh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
001eh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
0021h shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0024h movzx ecx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 cb}
0028h shl ecx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 04}
002bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
002eh mov r11,1becc839eb5h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b5 9e 83 cc be 01 00 00}
0038h add rcx,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 cb}
003bh add r10d,r8d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 d0}
003eh movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0041h lea r10,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 50}
0045h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0049h vmovdqu xmmword ptr [r10],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c4 c1 7a 7f 02}
004eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0051h cmp r9d,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 08}
0055h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
