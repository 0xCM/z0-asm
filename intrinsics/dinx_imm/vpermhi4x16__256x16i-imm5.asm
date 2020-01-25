; vpermhi4x16__256x16i-imm5
; vpermhi4x16__256x16i-imm5[7ff7c7580320h, 7ff7c7580337h][23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:363
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,5                    ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 05}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
