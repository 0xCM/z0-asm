; Vector128<ulong> vsrlv(Vector128<ulong> x, Vector128<ulong> counts)
; vsrlv_128x64u[7ff7c71d8000h, 7ff7c71d8016h][22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c2 f9 45 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:864
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpsrlvq xmm0,xmm0,[r8]                  ; VPSRLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 45 /r || encoded[5]{c4 c2 f9 45 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
