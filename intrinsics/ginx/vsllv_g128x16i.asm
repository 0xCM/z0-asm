; Vector128<Int16> vsllv<Int16>(Vector128<Int16> x, Vector128<Int16> counts)
; vsllv_g128x16i[7ff7c71f7590h, 7ff7c71f75c8h][56] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 e2 7d 23 c0 c4 e2 7d 23 c9 c4 e2 7d 47 c1 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c5 f1 6b c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:09:654
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
0013h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0018h vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
001dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0023h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0029h vpackssdw xmm0,xmm1,xmm0                ; VPACKSSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6B /r || encoded[4]{c5 f1 6b c0}
002dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
