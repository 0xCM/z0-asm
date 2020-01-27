------------------------------------------------------------------------------------------------------------------------
; ref Block128<byte> vdec<byte>(in Block128<byte> a, in Block128<byte> c)
; vdec_gb128x8u_128x8u[108] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 0f 45 03 c1 41 c1 f8 04 45 33 c9 45 85 c0 7e 45 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 04 4d 63 d2 49 03 c2 c5 fb f0 00 48 b8 59 57 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 f8 c1 48 8b 02 45 8b d1 41 c1 e2 04 4d 63 d2 49 03 c2 c5 fa 7f 00 41 ff c1 45 3b c8 7c be 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 0f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 04}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0036h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003ah mov rax,1e6eb0e5759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 0e eb e6 01 00 00}
0044h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0048h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
004ch mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
004fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0052h shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0056h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0059h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
005ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0060h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0063h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0066h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0068h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<sbyte> vdec<sbyte>(in Block128<sbyte> a, in Block128<sbyte> c)
; vdec_gb128x8i_128x8i[108] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 0f 45 03 c1 41 c1 f8 04 45 33 c9 45 85 c0 7e 45 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 04 4d 63 d2 49 03 c2 c5 fb f0 00 48 b8 59 57 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 f8 c1 48 8b 02 45 8b d1 41 c1 e2 04 4d 63 d2 49 03 c2 c5 fa 7f 00 41 ff c1 45 3b c8 7c be 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 0f}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 04}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 0068h                         ; JLE rel8 || 7E cb || encoded[2]{7e 45}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
0036h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003ah mov rax,1e6eb0e5759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 0e eb e6 01 00 00}
0044h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0048h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
004ch mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
004fh mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0052h shl r10d,4                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 04}
0056h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0059h add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
005ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0060h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0063h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0066h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c be}
0068h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<ushort> vdec<ushort>(in Block128<ushort> a, in Block128<ushort> c)
; vdec_gb128x16u_128x16u[110] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 07 45 03 c1 41 c1 f8 03 45 33 c9 45 85 c0 7e 47 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 50 c5 fb f0 00 48 b8 59 54 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 f9 c1 48 8b 02 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 50 c5 fa 7f 00 41 ff c1 45 3b c8 7c bc 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 03}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0037h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003bh mov rax,1e6eb0e5459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 0e eb e6 01 00 00}
0045h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0049h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
004dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
005eh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0062h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0065h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0068h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
006ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<short> vdec<short>(in Block128<short> a, in Block128<short> c)
; vdec_gb128x16i_128x16i[110] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 07 45 03 c1 41 c1 f8 03 45 33 c9 45 85 c0 7e 47 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 50 c5 fb f0 00 48 b8 59 54 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 f9 c1 48 8b 02 45 8b d1 41 c1 e2 03 4d 63 d2 4a 8d 04 50 c5 fa 7f 00 41 ff c1 45 3b c8 7c bc 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 07}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 03}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
0037h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003bh mov rax,1e6eb0e5459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 0e eb e6 01 00 00}
0045h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0049h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
004dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,3                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 03}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea rax,[rax+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 50}
005eh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0062h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0065h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0068h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
006ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<uint> vdec<uint>(in Block128<uint> a, in Block128<uint> c)
; vdec_gb128x32u_128x32u[110] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 03 45 03 c1 41 c1 f8 02 45 33 c9 45 85 c0 7e 47 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 90 c5 fb f0 00 48 b8 29 54 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 fa c1 48 8b 02 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 90 c5 fa 7f 00 41 ff c1 45 3b c8 7c bc 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 02}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0037h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003bh mov rax,1e6eb0e5429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 0e eb e6 01 00 00}
0045h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0049h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
004dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
005eh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0062h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0065h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0068h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
006ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<int> vdec<int>(in Block128<int> a, in Block128<int> c)
; vdec_gb128x32i_128x32i[110] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 f9 1f 41 83 e1 03 45 03 c1 41 c1 f8 02 45 33 c9 45 85 c0 7e 47 48 8b 01 48 8b 01 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 90 c5 fb f0 00 48 b8 29 54 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 fa c1 48 8b 02 45 8b d1 41 c1 e2 02 4d 63 d2 4a 8d 04 90 c5 fa 7f 00 41 ff c1 45 3b c8 7c bc 48 8b c2 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r8d,[rdx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 42 08}
0009h mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
000ch sar r9d,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f9 1f}
0010h and r9d,3                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 03}
0014h add r8d,r9d                             ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c1}
0017h sar r8d,2                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[4]{41 c1 f8 02}
001bh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
001eh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0021h jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0023h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0026h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0029h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
002ch shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0030h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
0033h lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
0037h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
003bh mov rax,1e6eb0e5429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 0e eb e6 01 00 00}
0045h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0049h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
004dh mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0050h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0053h shl r10d,2                              ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e2 02}
0057h movsxd r10,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d2}
005ah lea rax,[rax+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 04 90}
005eh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0062h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0065h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0068h jl short 0026h                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
006ah mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref Block128<ulong> vdec<ulong>(in Block128<ulong> a, in Block128<ulong> c)
; vdec_gb128x64u_128x64u[103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 e9 1f 45 03 c1 41 d1 f8 45 33 c9 45 85 c0 7e 45 48 8b 01 48 8b 01 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fb f0 00 48 b8 19 56 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 fb c1 48 8b 02 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fa 7f 00 41 ff c1 45 3b c8 7c be 48 8b c2 c3}
; Capture completion code = RET_INTRx2
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
0035h mov rax,1e6eb0e5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 0e eb e6 01 00 00}
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
------------------------------------------------------------------------------------------------------------------------
; ref Block128<long> vdec<long>(in Block128<long> a, in Block128<long> c)
; vdec_gb128x64i_128x64i[103] = {c5 f8 77 66 90 44 8b 42 08 45 8b c8 41 c1 e9 1f 45 03 c1 41 d1 f8 45 33 c9 45 85 c0 7e 45 48 8b 01 48 8b 01 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fb f0 00 48 b8 19 56 0e eb e6 01 00 00 c5 fb f0 08 c5 f9 fb c1 48 8b 02 45 8b d1 41 d1 e2 4d 63 d2 4a 8d 04 d0 c5 fa 7f 00 41 ff c1 45 3b c8 7c be 48 8b c2 c3}
; Capture completion code = RET_INTRx2
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
0035h mov rax,1e6eb0e5619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 0e eb e6 01 00 00}
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