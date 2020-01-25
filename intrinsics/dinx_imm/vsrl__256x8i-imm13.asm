; vsrl__256x8i-imm13
; vsrl__256x8i-imm13[7ff7c6ca2280h, 7ff7c6ca2336h][182] = {50 c5 f8 77 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 79 20 d1 c4 e3 f9 16 c8 01 c4 e1 f9 6e c8 c4 e2 79 20 c9 c5 e4 57 db c4 e3 65 38 d2 00 c4 e3 6d 38 c9 01 c5 f5 71 d1 0d c4 e3 7d 19 c0 01 c4 e2 79 20 d0 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 79 20 c0 c5 e4 57 db c4 e3 65 38 d2 00 c4 e3 6d 38 c0 01 c5 fd 71 d0 0d c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 7d 78 54 24 04 c5 f5 db ca c5 fd db c2 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 7d 79 14 24 c5 f5 db ca c5 fd db c2 c5 f5 67 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:474
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0008h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000eh vpmovsxbw xmm2,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d1}
0013h vpextrq rax,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c8 01}
0019h vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
001eh vpmovsxbw xmm1,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c9}
0023h vxorps ymm3,ymm3,ymm3                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 e4 57 db}
0027h vinserti128 ymm2,ymm3,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 00}
002dh vinserti128 ymm1,ymm2,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 01}
0033h vpsrlw ymm1,ymm1,0dh                    ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 f5 71 d1 0d}
0038h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
003eh vpmovsxbw xmm2,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d0}
0043h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0049h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
004eh vpmovsxbw xmm0,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c0}
0053h vxorps ymm3,ymm3,ymm3                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 e4 57 db}
0057h vinserti128 ymm2,ymm3,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 00}
005dh vinserti128 ymm0,ymm2,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 01}
0063h vpsrlw ymm0,ymm0,0dh                    ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 fd 71 d0 0d}
0068h mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0070h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0075h vpbroadcastb ymm2,byte ptr [rsp+4]      ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 04}
007ch vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0080h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0084h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
008bh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
008fh vpbroadcastw ymm2,word ptr [rsp]        ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[6]{c4 e2 7d 79 14 24}
0095h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0099h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
009dh vpackuswb ymm0,ymm1,ymm0                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 f5 67 c0}
00a1h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00a7h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00abh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00aeh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b1h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
