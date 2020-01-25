; Vector128<Int16> vabs(Vector128<Int16> src)
; vabs_128x16i[7ff7c6bef310h, 7ff7c6bef322h][18] = {c5 f8 77 66 90 c4 e2 79 1d 02 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:02:200
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vpabsw xmm0,[rdx]                       ; VPABSW xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 1D /r || encoded[5]{c4 e2 79 1d 02}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
