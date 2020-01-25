; Vector256<byte> vshuf32x8<byte>(Vector256<byte> src, Vector256<byte> spec)
; vshuf32x8_g256x8u[7ff7c7202860h, 7ff7c72028b1h][81] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 48 b8 99 7b c5 ba cf 01 00 00 c5 ff f0 10 c5 f5 fc d2 c4 e2 7d 00 d2 c4 e3 7d 46 c0 03 48 b8 c9 79 c5 ba cf 01 00 00 c5 ff f0 18 c5 f5 fc cb c4 e2 7d 00 c1 c5 ed eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:205
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh mov rax,1cfbac57b99h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 99 7b c5 ba cf 01 00 00}
0018h vlddqu ymm2,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 10}
001ch vpaddb ymm2,ymm1,ymm2                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc d2}
0020h vpshufb ymm2,ymm0,ymm2                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 7d 00 d2}
0025h vperm2i128 ymm0,ymm0,ymm0,3             ; VPERM2I128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 46 /r ib || encoded[6]{c4 e3 7d 46 c0 03}
002bh mov rax,1cfbac579c9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c9 79 c5 ba cf 01 00 00}
0035h vlddqu ymm3,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 18}
0039h vpaddb ymm1,ymm1,ymm3                   ; VPADDB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FC /r || encoded[4]{c5 f5 fc cb}
003dh vpshufb ymm0,ymm0,ymm1                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 7d 00 c1}
0042h vpor ymm0,ymm2,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c0}
0046h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
