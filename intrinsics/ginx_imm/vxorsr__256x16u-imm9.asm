; vxorsr__256x16u-imm9
; vxorsr__256x16u-imm9[7ff7c7586370h, 7ff7c758638bh][27] = {c5 f8 77 c5 fd 10 02 c5 f5 71 d0 09 c5 fd ef c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:10:174
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsrlw ymm1,ymm0,9                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 f5 71 d0 09}
000ch vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0010h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0014h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0017h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
