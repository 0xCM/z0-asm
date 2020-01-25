; Vector256<byte> vreverse<byte>(Vector256<byte> x)
; vreverse_g256x8u[7ff7c7213f20h, 7ff7c7213f7ah][90] = {c5 f8 77 66 90 c5 fd 10 02 48 b8 b9 55 ab ba cf 01 00 00 c5 ff f0 08 48 b8 99 7b c5 ba cf 01 00 00 c5 ff f0 10 c5 f5 fc d2 c4 e2 7d 00 d2 c4 e3 7d 46 c0 03 48 b8 c9 79 c5 ba cf 01 00 00 c5 ff f0 18 c5 f5 fc cb c4 e2 7d 00 c1 c5 ed eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:12:114
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h mov rax,1cfbaab55b9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b9 55 ab ba cf 01 00 00}
0013h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
0017h mov rax,1cfbac57b99h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 99 7b c5 ba cf 01 00 00}
0021h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
0025h vpaddb ymm2,ymm1,ymm2                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc d2}
0029h vpshufb ymm2,ymm0,ymm2                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 7d 00 d2}
002eh vperm2i128 ymm0,ymm0,ymm0,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c0 03}
0034h mov rax,1cfbac579c9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c9 79 c5 ba cf 01 00 00}
003eh vlddqu ymm3,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 18}
0042h vpaddb ymm1,ymm1,ymm3                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc cb}
0046h vpshufb ymm0,ymm0,ymm1                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 7d 00 c1}
004bh vpor ymm0,ymm2,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c0}
004fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
