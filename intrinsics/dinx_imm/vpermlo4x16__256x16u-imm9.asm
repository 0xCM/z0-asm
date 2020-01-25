; vpermlo4x16__256x16u-imm9
; vpermlo4x16__256x16u-imm9[7ff7c6ca8400h, 7ff7c6ca8417h][23] = {c5 f8 77 c5 fd 10 02 c5 ff 70 c0 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:01:687
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshuflw ymm0,ymm0,9                    ; VPSHUFLW ymm1, ymm2/m256, imm8 || VEX.256.F2.0F.WIG 70 /r ib || encoded[5]{c5 ff 70 c0 09}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
