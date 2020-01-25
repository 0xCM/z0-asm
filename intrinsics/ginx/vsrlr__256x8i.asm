; Vector256<sbyte> vsrlr<sbyte>(Vector256<sbyte> x, sbyte count)
; vsrlr__256x8i[7ff7c6c14d40h, 7ff7c6c14dc4h][132] = {c5 f8 77 66 90 c5 fd 10 02 49 0f be c0 c5 f9 6e c8 c4 e3 7d 19 c2 00 c4 e2 79 20 da c4 e3 f9 16 d0 01 c4 e1 f9 6e d0 c4 e2 79 20 d2 c5 dc 57 e4 c4 e3 5d 38 db 00 c4 e3 65 38 d2 01 c5 ed d1 d1 c4 e3 7d 19 c0 01 c4 e2 79 20 d8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 79 20 c0 c5 dc 57 e4 c4 e3 5d 38 db 00 c4 e3 65 38 c0 01 c5 fd d1 c1 c5 ed 63 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:269
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
000dh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0011h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0017h vpmovsxbw xmm3,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 da}
001ch vpextrq rax,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d0 01}
0022h vmovq xmm2,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d0}
0027h vpmovsxbw xmm2,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d2}
002ch vxorps ymm4,ymm4,ymm4                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 dc 57 e4}
0030h vinserti128 ymm3,ymm4,xmm3,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 00}
0036h vinserti128 ymm2,ymm3,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 01}
003ch vpsrlw ymm2,ymm2,xmm1                   ; VPSRLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D1 /r || encoded[4]{c5 ed d1 d1}
0040h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0046h vpmovsxbw xmm3,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d8}
004bh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0051h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0056h vpmovsxbw xmm0,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c0}
005bh vxorps ymm4,ymm4,ymm4                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 dc 57 e4}
005fh vinserti128 ymm3,ymm4,xmm3,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 00}
0065h vinserti128 ymm0,ymm3,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 c0 01}
006bh vpsrlw ymm0,ymm0,xmm1                   ; VPSRLW ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D1 /r || encoded[4]{c5 fd d1 c1}
006fh vpacksswb ymm0,ymm2,ymm0                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 ed 63 c0}
0073h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0079h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
007dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0080h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
