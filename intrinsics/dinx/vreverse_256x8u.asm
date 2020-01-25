; Vector256<byte> vreverse(Vector256<byte> src)
; vreverse_256x8u[7ff7c6be96d0h, 7ff7c6be972ah][90] = {c5 f8 77 66 90 48 b8 b9 55 2c e0 fe 01 00 00 c5 ff f0 00 c5 fd 10 0a 48 b8 09 7b 99 f8 fe 01 00 00 c5 ff f0 10 c5 fd fc d2 c4 e2 75 00 d2 c4 e3 75 46 c9 03 48 b8 39 79 99 f8 fe 01 00 00 c5 ff f0 18 c5 fd fc c3 c4 e2 75 00 c0 c5 ed eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:747
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,1fee02c55b9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b9 55 2c e0 fe 01 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0017h mov rax,1fef8997b09h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 09 7b 99 f8 fe 01 00 00}
0021h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0025h vpaddb ymm2,ymm0,ymm2                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc d2}
0029h vpshufb ymm2,ymm1,ymm2                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 75 00 d2}
002eh vperm2i128 ymm1,ymm1,ymm1,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 75 46 c9 03}
0034h mov rax,1fef8997939h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 39 79 99 f8 fe 01 00 00}
003eh vlddqu ymm3,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 18}
0042h vpaddb ymm0,ymm0,ymm3                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 fd fc c3}
0046h vpshufb ymm0,ymm1,ymm0                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 75 00 c0}
004bh vpor ymm0,ymm2,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c0}
004fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
