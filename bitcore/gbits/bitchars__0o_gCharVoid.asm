; void bitchars<int>(int src, Span<Char> dst, int offset)
; bitchars__0o_gCharVoid[7ff7c6e8eb40h, 7ff7c6e8eb91h][81] = {c5 f8 77 66 90 48 8b 02 8b d1 45 33 c9 45 8b d1 41 c1 e2 03 41 8b ca 44 8b da 41 d3 eb 41 0f b6 cb c1 e1 04 48 63 c9 49 bb 51 1c 45 ba cf 01 00 00 49 03 cb 45 03 d0 4d 63 d2 4e 8d 14 50 c5 fa 6f 01 c4 c1 7a 7f 02 41 ff c1 41 83 f9 04 7c bd c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:386
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
0027h mov r11,1cfba451c51h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 51 1c 45 ba cf 01 00 00}
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
