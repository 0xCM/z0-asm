; ref Block128<ulong> vdec<ulong>(in Block128<ulong> a, in Block128<ulong> c)
; vdec__b128x64u[7ff7c6de44a0h, 7ff7c6de4507h][103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 e9 1f 45 03 c1 41 d1 f8 45 33 c9 45 85 c0 7e 45 48 8b 01 48 8b 01 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fb f0 00 48 b8 19 56 2c e0 fe 01 00 00 c5 fb f0 08 c5 f9 fb c1 48 8b 02 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fa 7f 00 41 ff c1 45 3b c8 7c be 48 8b c2 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:13:604
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch shr r9d,1fh                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e9 1f}
0010h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0013h sar r8d,1                               ; SAR r/m32, 1 || o32 D1 /7 || encoded[3]{41 d1 f8}
0016h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0019h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
001ch jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
001eh mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0021h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0024h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0027h shl r10d,1                              ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e2}
002ah movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
002dh lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0031h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0035h mov rax,1fee02c5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 2c e0 fe 01 00 00}
003fh vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0043h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
0047h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
004ah mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
004dh shl r10d,1                              ; SHL r/m32, 1 || o32 D1 /4 || encoded[3]{41 d1 e2}
0050h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0053h lea rax,[rax+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 d0}
0057h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
005bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
005eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0061h jl short 0021h                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0063h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
