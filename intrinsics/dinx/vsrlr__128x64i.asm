; Vector128<long> vsrlr(Vector128<long> src, long count)
; vsrlr__128x64i[7ff7c71d7a20h, 7ff7c71d7a3ah][26] = {c5 f8 77 66 90 c4 c1 f9 6e c0 c5 f9 10 0a c5 f1 d3 c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:02:839
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovq xmm0,r8                           ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 c1 f9 6e c0}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vpsrlq xmm0,xmm1,xmm0                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f1 d3 c0}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
