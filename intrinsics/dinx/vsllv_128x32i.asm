; Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
; vsllv_128x32i[7ff7c71da280h, 7ff7c71da29bh][27] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 10 0a c4 e2 71 47 c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:537
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vpsllvd xmm0,xmm1,xmm0                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 71 47 c0}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
