; Vector128<int> vabs(Vector128<int> src)
; vabs_128x32i[7ff7c71e22c0h, 7ff7c71e22d2h][18] = {c5 f8 77 66 90 c4 e2 79 1e 02 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:555
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpabsd xmm0,[rdx]                       ; VPABSD xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 1E /r || encoded[5]{c4 e2 79 1e 02}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
