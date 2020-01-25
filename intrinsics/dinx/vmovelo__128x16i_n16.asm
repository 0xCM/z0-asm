; Int16 vmovelo(Vector128<Int16> src, N16 w)
; vmovelo__128x16i_n16[7ff7c71e1a00h, 7ff7c71e1a12h][18] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 7e c0 48 0f bf c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:04:506
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovd eax,xmm0                          ; VMOVD r/m32, xmm1 || VEX.128.66.0F.W0 7E /r || encoded[4]{c5 f9 7e c0}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
