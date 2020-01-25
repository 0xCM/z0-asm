; Vector128<Int16> vgather(N128 w, in Int16 src, Vector128<Int16> vidx)
; vgather__n128_128x16i[7ff7c71ce8f0h, 7ff7c71ce945h][85] = {50 c5 f8 77 90 c4 c1 79 10 01 c4 e2 7d 33 c0 c5 f5 76 c9 c4 c2 75 90 14 40 c4 e3 7d 19 d0 00 c4 e3 7d 19 d1 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:01:848
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 01}
000ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
000fh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0013h vpgatherdd ymm2,[r8+ymm0*2],ymm1        ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 c2 75 90 14 40}
0019h vextractf128 xmm0,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d0 00}
001fh vextractf128 xmm1,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d1 01}
0025h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
002dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0032h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0039h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
003dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0041h vpackusdw xmm0,xmm0,xmm1                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c1}
0046h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0050h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
