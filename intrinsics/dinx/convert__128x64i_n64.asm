; long convert(Vector128<long> src, N64 w, long t)
; convert__128x64i_n64[7ff7c6bd4940h, 7ff7c6bd494fh][15] = {c5 f8 77 66 90 c5 f9 10 01 c4 e1 f9 7e c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:976
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
