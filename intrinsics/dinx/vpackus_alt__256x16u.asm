; Vector256<byte> vpackus_alt(Vector256<ushort> x, Vector256<ushort> y)
; vpackus_alt__256x16u[7ff7c6a27160h, 7ff7c6a271a3h][67] = {c5 f8 77 66 90 48 b8 d9 54 2c e0 fe 01 00 00 c5 ff f0 00 c5 fd 10 0a c4 e2 75 00 c0 48 b8 89 54 2c e0 fe 01 00 00 c5 ff f0 08 c4 c1 7d 10 10 c4 e2 6d 00 c9 c5 fd eb c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:839
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1fee02c54d9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d9 54 2c e0 fe 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0017h vpshufb ymm0,ymm1,ymm0                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 75 00 c0}
001ch mov rax,1fee02c5489h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 89 54 2c e0 fe 01 00 00}
0026h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
002ah vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
002fh vpshufb ymm1,ymm2,ymm1                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 6d 00 c9}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
