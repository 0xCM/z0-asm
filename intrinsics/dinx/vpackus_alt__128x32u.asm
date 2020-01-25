; Vector128<ushort> vpackus_alt(Vector128<uint> x, Vector128<uint> y)
; vpackus_alt__128x32u[7ff7c6a27070h, 7ff7c6a270b0h][64] = {c5 f8 77 66 90 48 b8 c9 54 2c e0 fe 01 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 48 b8 b9 56 2c e0 fe 01 00 00 c5 fb f0 08 c4 c1 79 10 10 c4 e2 69 00 c9 c5 f9 eb c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:832
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1fee02c54c9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c9 54 2c e0 fe 01 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch mov rax,1fee02c56b9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b9 56 2c e0 fe 01 00 00}
0026h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
002ah vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
002fh vpshufb xmm1,xmm2,xmm1                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 69 00 c9}
0034h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0038h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
