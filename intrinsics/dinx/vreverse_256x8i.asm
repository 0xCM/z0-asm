; Vector256<sbyte> vreverse(Vector256<sbyte> src)
; vreverse_256x8i[7ff7c6be9750h, 7ff7c6be97a0h][80] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c0 01 48 b8 39 54 2c e0 fe 01 00 00 c5 fb f0 08 c4 e2 79 00 c1 c5 fd 10 0a c4 e3 7d 19 c9 00 c5 fb f0 10 c4 e2 71 00 ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:749
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh mov rax,1fee02c5439h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 39 54 2c e0 fe 01 00 00}
0019h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
001dh vpshufb xmm0,xmm0,xmm1                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 79 00 c1}
0022h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0026h vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
002ch vlddqu xmm2,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 10}
0030h vpshufb xmm1,xmm1,xmm2                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 ca}
0035h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0039h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
003fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0045h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
