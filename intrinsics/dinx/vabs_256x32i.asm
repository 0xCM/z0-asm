; Vector256<int> vabs(Vector256<int> src)
; vabs_256x32i[7ff7c6bef420h, 7ff7c6bef435h][21] = {c5 f8 77 66 90 c4 e2 7d 1e 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:205
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpabsd ymm0,[rdx]                       ; VPABSD ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 1E /r || encoded[5]{c4 e2 7d 1e 02}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
