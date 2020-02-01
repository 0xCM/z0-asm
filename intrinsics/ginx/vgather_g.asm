------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vgather<byte>(in byte src, Vector128<byte> vidx)
; vgather_g8u(in)_v128x8u[149] = {50 c5 f8 77 90 c4 c1 79 10 00 c4 e2 7d 31 c8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 31 c0 48 8b c2 c5 ed 76 d2 c4 e2 6d 90 1c 08 c5 f5 76 c9 c4 e2 75 90 14 02 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 e5 db c8 c5 ed db c0 c4 e2 75 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpmovzxbd ymm1,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c8}
000fh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0015h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001ah vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0026h vpgatherdd ymm3,[rax+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 08}
002ch vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0030h vpgatherdd ymm2,[rdx+ymm0],ymm1         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 02}
0036h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0043h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
004ah vpand ymm1,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c8}
004eh vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
0052h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0057h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
005dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0063h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0069h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0070h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0074h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
007ah vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
007eh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0082h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0086h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
008dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0090h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vgather<sbyte>(in sbyte src, Vector128<sbyte> vidx)
; vgather_g8i(in)_v128x8i[149] = {50 c5 f8 77 90 c4 c1 79 10 00 c4 e2 7d 31 c8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 31 c0 48 8b c2 c5 ed 76 d2 c4 e2 6d 90 1c 08 c5 f5 76 c9 c4 e2 75 90 14 02 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 e5 db c8 c5 ed db c0 c4 e2 75 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpmovzxbd ymm1,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c8}
000fh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0015h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
001ah vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
001fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0022h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0026h vpgatherdd ymm3,[rax+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 08}
002ch vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0030h vpgatherdd ymm2,[rdx+ymm0],ymm1         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 02}
0036h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003eh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0043h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
004ah vpand ymm1,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c8}
004eh vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
0052h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0057h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
005dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0063h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0069h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0070h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0074h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
007ah vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
007eh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0082h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0086h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
008dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0090h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0094h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vgather<ushort>(in ushort src, Vector128<ushort> vidx)
; vgather_g16u(in)_v128x16u[85] = {50 c5 f8 77 90 c4 c1 79 10 00 c4 e2 7d 33 c0 c5 f5 76 c9 c4 e2 75 90 14 42 c4 e3 7d 19 d0 00 c4 e3 7d 19 d1 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
000fh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0013h vpgatherdd ymm2,[rdx+ymm0*2],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 42}
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
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vgather<short>(in short src, Vector128<short> vidx)
; vgather_g16i(in)_v128x16i[85] = {50 c5 f8 77 90 c4 c1 79 10 00 c4 e2 7d 33 c0 c5 f5 76 c9 c4 e2 75 90 14 42 c4 e3 7d 19 d0 00 c4 e3 7d 19 d1 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
000fh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0013h vpgatherdd ymm2,[rdx+ymm0*2],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 42}
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
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vgather<uint>(in uint src, Vector128<uint> vidx)
; vgather_g32u(in)_v128x32u[28] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 71 90 14 82 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherdd xmm2,[rdx+xmm0*4],xmm1       ; VPGATHERDD xmm1, vm32x, xmm2 || VEX.128.66.0F38.W0 90 /r || encoded[6]{c4 e2 71 90 14 82}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vgather<int>(in int src, Vector128<int> vidx)
; vgather_g32i(in)_v128x32i[28] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 71 90 14 82 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherdd xmm2,[rdx+xmm0*4],xmm1       ; VPGATHERDD xmm1, vm32x, xmm2 || VEX.128.66.0F38.W0 90 /r || encoded[6]{c4 e2 71 90 14 82}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vgather<ulong>(in ulong src, Vector128<ulong> vidx)
; vgather_g64u(in)_v128x64u[28] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 f1 91 14 c2 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherqq xmm2,[rdx+xmm0*8],xmm1       ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 e2 f1 91 14 c2}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vgather<long>(in long src, Vector128<long> vidx)
; vgather_g64i(in)_v128x64i[28] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 f1 91 14 c2 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
000eh vpgatherqq xmm2,[rdx+xmm0*8],xmm1       ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 e2 f1 91 14 c2}
0014h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vgather<byte>(in byte src, Vector256<byte> vidx)
; vgather_g8u(in)_v256x8u[316] = {48 83 ec 18 c5 f8 77 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 c4 e2 7d 31 d0 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 31 c0 48 8b c2 c5 e5 76 db c4 e2 65 90 24 10 48 8b c2 c5 ed 76 d2 c4 e2 6d 90 1c 00 c7 44 24 14 ff ff 00 00 48 8d 44 24 14 c4 e2 7d 58 44 24 14 c5 dd db d0 c5 e5 db c0 c4 e2 6d 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c2 00 c4 e3 7d 19 c0 01 c7 44 24 10 ff 00 00 00 48 8d 44 24 10 c4 e2 79 79 5c 24 10 c5 e9 db d3 c5 f9 db c3 c5 e9 67 c0 c4 e3 7d 19 c9 01 c4 e2 7d 31 d1 c4 e3 f9 16 c8 01 c4 e1 f9 6e c8 c4 e2 7d 31 c9 48 8b c2 c5 e5 76 db c4 e2 65 90 24 10 c5 ed 76 d2 c4 e2 6d 90 1c 0a c7 44 24 0c ff ff 00 00 48 8d 44 24 0c c4 e2 7d 58 4c 24 0c c5 dd db d1 c5 e5 db c9 c4 e2 6d 2b c9 c4 e3 fd 00 c9 d8 c4 e3 7d 19 ca 00 c4 e3 7d 19 c9 01 c7 44 24 08 ff 00 00 00 48 8d 44 24 08 c4 e2 79 79 5c 24 08 c5 e9 db d3 c5 f1 db cb c5 e9 67 c9 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ch vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0010h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0016h vpmovzxbd ymm2,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d0}
001bh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0021h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0026h vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
002bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002eh vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
0032h vpgatherdd ymm4,[rax+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 10}
0038h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003bh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
003fh vpgatherdd ymm3,[rax+ymm0],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 00}
0045h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
004dh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0052h vpbroadcastd ymm0,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 14}
0059h vpand ymm2,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d0}
005dh vpand ymm0,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c0}
0061h vpackusdw ymm0,ymm2,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c0}
0066h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
006ch vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0072h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0078h mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0080h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0085h vpbroadcastw xmm3,word ptr [rsp+10h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 10}
008ch vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0090h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
0094h vpackuswb xmm0,xmm2,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c0}
0098h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
009eh vpmovzxbd ymm2,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d1}
00a3h vpextrq rax,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c8 01}
00a9h vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
00aeh vpmovzxbd ymm1,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c9}
00b3h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00b6h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
00bah vpgatherdd ymm4,[rax+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 10}
00c0h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
00c4h vpgatherdd ymm3,[rdx+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 0a}
00cah mov dword ptr [rsp+0ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff ff 00 00}
00d2h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
00d7h vpbroadcastd ymm1,dword ptr [rsp+0ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 0c}
00deh vpand ymm2,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d1}
00e2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00e6h vpackusdw ymm1,ymm2,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c9}
00ebh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00f1h vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
00f7h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00fdh mov dword ptr [rsp+8],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 08 ff 00 00 00}
0105h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
010ah vpbroadcastw xmm3,word ptr [rsp+8]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 08}
0111h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0115h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
0119h vpackuswb xmm1,xmm2,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c9}
011dh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0121h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0127h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
012dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0131h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0134h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0137h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
013bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vgather<sbyte>(in sbyte src, Vector256<sbyte> vidx)
; vgather_g8i(in)_v256x8i[316] = {48 83 ec 18 c5 f8 77 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 c4 e2 7d 31 d0 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 7d 31 c0 48 8b c2 c5 e5 76 db c4 e2 65 90 24 10 48 8b c2 c5 ed 76 d2 c4 e2 6d 90 1c 00 c7 44 24 14 ff ff 00 00 48 8d 44 24 14 c4 e2 7d 58 44 24 14 c5 dd db d0 c5 e5 db c0 c4 e2 6d 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c2 00 c4 e3 7d 19 c0 01 c7 44 24 10 ff 00 00 00 48 8d 44 24 10 c4 e2 79 79 5c 24 10 c5 e9 db d3 c5 f9 db c3 c5 e9 67 c0 c4 e3 7d 19 c9 01 c4 e2 7d 31 d1 c4 e3 f9 16 c8 01 c4 e1 f9 6e c8 c4 e2 7d 31 c9 48 8b c2 c5 e5 76 db c4 e2 65 90 24 10 c5 ed 76 d2 c4 e2 6d 90 1c 0a c7 44 24 0c ff ff 00 00 48 8d 44 24 0c c4 e2 7d 58 4c 24 0c c5 dd db d1 c5 e5 db c9 c4 e2 6d 2b c9 c4 e3 fd 00 c9 d8 c4 e3 7d 19 ca 00 c4 e3 7d 19 c9 01 c7 44 24 08 ff 00 00 00 48 8d 44 24 08 c4 e2 79 79 5c 24 08 c5 e9 db d3 c5 f1 db cb c5 e9 67 c9 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ch vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0010h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0016h vpmovzxbd ymm2,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d0}
001bh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0021h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0026h vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
002bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002eh vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
0032h vpgatherdd ymm4,[rax+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 10}
0038h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003bh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
003fh vpgatherdd ymm3,[rax+ymm0],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 00}
0045h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
004dh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0052h vpbroadcastd ymm0,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 14}
0059h vpand ymm2,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d0}
005dh vpand ymm0,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c0}
0061h vpackusdw ymm0,ymm2,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c0}
0066h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
006ch vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0072h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0078h mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0080h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0085h vpbroadcastw xmm3,word ptr [rsp+10h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 10}
008ch vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0090h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
0094h vpackuswb xmm0,xmm2,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c0}
0098h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
009eh vpmovzxbd ymm2,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d1}
00a3h vpextrq rax,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c8 01}
00a9h vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
00aeh vpmovzxbd ymm1,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c9}
00b3h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00b6h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
00bah vpgatherdd ymm4,[rax+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 10}
00c0h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
00c4h vpgatherdd ymm3,[rdx+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 0a}
00cah mov dword ptr [rsp+0ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff ff 00 00}
00d2h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
00d7h vpbroadcastd ymm1,dword ptr [rsp+0ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 0c}
00deh vpand ymm2,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d1}
00e2h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00e6h vpackusdw ymm1,ymm2,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c9}
00ebh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00f1h vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
00f7h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00fdh mov dword ptr [rsp+8],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 08 ff 00 00 00}
0105h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
010ah vpbroadcastw xmm3,word ptr [rsp+8]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 08}
0111h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0115h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
0119h vpackuswb xmm1,xmm2,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c9}
011dh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0121h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0127h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
012dh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0131h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0134h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0137h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
013bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vgather<ushort>(in ushort src, Vector256<ushort> vidx)
; vgather_g16u(in)_v256x16u[177] = {50 c5 f8 77 90 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 48 8b c2 c4 e2 7d 33 c0 c5 ed 76 d2 c4 e2 6d 90 1c 40 c4 e3 7d 19 d8 00 c4 e3 7d 19 da 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 5c 24 04 c5 f9 db c3 c5 e9 db d3 c4 e2 79 2b c2 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c5 ed 76 d2 c4 e2 6d 90 1c 4a c4 e3 7d 19 d9 00 c4 e3 7d 19 da 01 c7 04 24 ff ff 00 00 48 8d 04 24 c4 e2 79 58 1c 24 c5 f1 db cb c5 e9 db d3 c4 e2 71 2b ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000eh vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0014h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0017h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001ch vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0020h vpgatherdd ymm3,[rax+ymm0*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 40}
0026h vextractf128 xmm0,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d8 00}
002ch vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0032h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
003fh vpbroadcastd xmm3,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 5c 24 04}
0046h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
004ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
004eh vpackusdw xmm0,xmm0,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c2}
0053h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0059h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
005eh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0062h vpgatherdd ymm3,[rdx+ymm1*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 4a}
0068h vextractf128 xmm1,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d9 00}
006eh vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0074h mov dword ptr [rsp],0ffffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff ff 00 00}
007bh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
007fh vpbroadcastd xmm3,dword ptr [rsp]       ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[6]{c4 e2 79 58 1c 24}
0085h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
0089h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
008dh vpackusdw xmm1,xmm1,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b ca}
0092h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0096h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
009ch vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00a2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00a9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ach add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00b0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vgather<short>(in short src, Vector256<short> vidx)
; vgather_g16i(in)_v256x16i[177] = {50 c5 f8 77 90 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 48 8b c2 c4 e2 7d 33 c0 c5 ed 76 d2 c4 e2 6d 90 1c 40 c4 e3 7d 19 d8 00 c4 e3 7d 19 da 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 5c 24 04 c5 f9 db c3 c5 e9 db d3 c4 e2 79 2b c2 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c5 ed 76 d2 c4 e2 6d 90 1c 4a c4 e3 7d 19 d9 00 c4 e3 7d 19 da 01 c7 04 24 ff ff 00 00 48 8d 04 24 c4 e2 79 58 1c 24 c5 f1 db cb c5 e9 db d3 c4 e2 71 2b ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000eh vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0014h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0017h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001ch vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0020h vpgatherdd ymm3,[rax+ymm0*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 40}
0026h vextractf128 xmm0,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d8 00}
002ch vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0032h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003ah lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
003fh vpbroadcastd xmm3,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 5c 24 04}
0046h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
004ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
004eh vpackusdw xmm0,xmm0,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c2}
0053h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0059h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
005eh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0062h vpgatherdd ymm3,[rdx+ymm1*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 4a}
0068h vextractf128 xmm1,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d9 00}
006eh vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0074h mov dword ptr [rsp],0ffffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff ff 00 00}
007bh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
007fh vpbroadcastd xmm3,dword ptr [rsp]       ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[6]{c4 e2 79 58 1c 24}
0085h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
0089h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
008dh vpackusdw xmm1,xmm1,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b ca}
0092h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0096h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
009ch vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00a2h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a6h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00a9h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00ach add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00b0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vgather<uint>(in uint src, Vector256<uint> vidx)
; vgather_g32u(in)_v256x32u[31] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 75 90 14 82 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherdd ymm2,[rdx+ymm0*4],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 82}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vgather<int>(in int src, Vector256<int> vidx)
; vgather_g32i(in)_v256x32i[31] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 75 90 14 82 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherdd ymm2,[rdx+ymm0*4],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 82}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vgather<ulong>(in ulong src, Vector256<ulong> vidx)
; vgather_g64u(in)_v256x64u[31] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 f5 91 14 c2 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherqq ymm2,[rdx+ymm0*8],ymm1       ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 e2 f5 91 14 c2}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vgather<long>(in long src, Vector256<long> vidx)
; vgather_g64i(in)_v256x64i[31] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 f5 91 14 c2 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
000eh vpgatherqq ymm2,[rdx+ymm0*8],ymm1       ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 e2 f5 91 14 c2}
0014h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vgather<byte>(ReadOnlySpan<byte> src, Vector128<byte> vidx)
; vgather_gspan8u_v128x8u[152] = {50 c5 f8 77 90 48 8b 02 c4 c1 79 10 00 c4 e2 7d 31 c8 c4 e3 f9 16 c2 01 c4 e1 f9 6e c2 c4 e2 7d 31 c0 48 8b d0 c5 ed 76 d2 c4 e2 6d 90 1c 0a c5 f5 76 c9 c4 e2 75 90 14 00 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 e5 db c8 c5 ed db c0 c4 e2 75 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpmovzxbd ymm1,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c8}
0012h vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0018h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001dh vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
0022h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0025h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0029h vpgatherdd ymm3,[rdx+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 0a}
002fh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0033h vpgatherdd ymm2,[rax+ymm0],ymm1         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 00}
0039h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0041h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0046h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
004dh vpand ymm1,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c8}
0051h vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
0055h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
005ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0060h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0066h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
006ch mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0073h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0077h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
007dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0081h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0085h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0097h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vgather<sbyte>(ReadOnlySpan<sbyte> src, Vector128<sbyte> vidx)
; vgather_gspan8i_v128x8i[152] = {50 c5 f8 77 90 48 8b 02 c4 c1 79 10 00 c4 e2 7d 31 c8 c4 e3 f9 16 c2 01 c4 e1 f9 6e c2 c4 e2 7d 31 c0 48 8b d0 c5 ed 76 d2 c4 e2 6d 90 1c 0a c5 f5 76 c9 c4 e2 75 90 14 00 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 44 24 04 c5 e5 db c8 c5 ed db c0 c4 e2 75 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpmovzxbd ymm1,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c8}
0012h vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0018h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
001dh vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
0022h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0025h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0029h vpgatherdd ymm3,[rdx+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 0a}
002fh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0033h vpgatherdd ymm2,[rax+ymm0],ymm1         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 00}
0039h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0041h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0046h vpbroadcastd ymm0,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 04}
004dh vpand ymm1,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c8}
0051h vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
0055h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
005ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0060h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0066h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
006ch mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0073h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0077h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
007dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0081h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0085h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0089h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
008dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0090h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0093h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0097h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vgather<ushort>(ReadOnlySpan<ushort> src, Vector128<ushort> vidx)
; vgather_gspan16u_v128x16u[88] = {50 c5 f8 77 90 48 8b 02 c4 c1 79 10 00 c4 e2 7d 33 c0 c5 f5 76 c9 c4 e2 75 90 14 40 c4 e3 7d 19 d0 00 c4 e3 7d 19 d1 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
0012h vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0016h vpgatherdd ymm2,[rax+ymm0*2],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 40}
001ch vextractf128 xmm0,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d0 00}
0022h vextractf128 xmm1,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d1 01}
0028h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0030h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0035h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
003ch vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0040h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0044h vpackusdw xmm0,xmm0,xmm1                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c1}
0049h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vgather<short>(ReadOnlySpan<short> src, Vector128<short> vidx)
; vgather_gspan16i_v128x16i[88] = {50 c5 f8 77 90 48 8b 02 c4 c1 79 10 00 c4 e2 7d 33 c0 c5 f5 76 c9 c4 e2 75 90 14 40 c4 e3 7d 19 d0 00 c4 e3 7d 19 d1 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
0012h vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0016h vpgatherdd ymm2,[rax+ymm0*2],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 40}
001ch vextractf128 xmm0,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d0 00}
0022h vextractf128 xmm1,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d1 01}
0028h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0030h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0035h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
003ch vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0040h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0044h vpackusdw xmm0,xmm0,xmm1                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c1}
0049h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vgather<uint>(ReadOnlySpan<uint> src, Vector128<uint> vidx)
; vgather_gspan32u_v128x32u[31] = {c5 f8 77 66 90 48 8b 02 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 71 90 14 80 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
0011h vpgatherdd xmm2,[rax+xmm0*4],xmm1       ; VPGATHERDD xmm1, vm32x, xmm2 || VEX.128.66.0F38.W0 90 /r || encoded[6]{c4 e2 71 90 14 80}
0017h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vgather<int>(ReadOnlySpan<int> src, Vector128<int> vidx)
; vgather_gspan32i_v128x32i[31] = {c5 f8 77 66 90 48 8b 02 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 71 90 14 80 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
0011h vpgatherdd xmm2,[rax+xmm0*4],xmm1       ; VPGATHERDD xmm1, vm32x, xmm2 || VEX.128.66.0F38.W0 90 /r || encoded[6]{c4 e2 71 90 14 80}
0017h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vgather<ulong>(ReadOnlySpan<ulong> src, Vector128<ulong> vidx)
; vgather_gspan64u_v128x64u[31] = {c5 f8 77 66 90 48 8b 02 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 f1 91 14 c0 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
0011h vpgatherqq xmm2,[rax+xmm0*8],xmm1       ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 e2 f1 91 14 c0}
0017h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vgather<long>(ReadOnlySpan<long> src, Vector128<long> vidx)
; vgather_gspan64i_v128x64i[31] = {c5 f8 77 66 90 48 8b 02 c4 c1 79 10 00 c5 f1 76 c9 c4 e2 f1 91 14 c0 c5 f9 11 11 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000dh vpcmpeqd xmm1,xmm1,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 c9}
0011h vpgatherqq xmm2,[rax+xmm0*8],xmm1       ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 e2 f1 91 14 c0}
0017h vmovupd [rcx],xmm2                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vgather<byte>(ReadOnlySpan<byte> src, Vector256<byte> vidx)
; vgather_gspan8u_v256x8u[319] = {48 83 ec 18 c5 f8 77 48 8b 02 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 c4 e2 7d 31 d0 c4 e3 f9 16 c2 01 c4 e1 f9 6e c2 c4 e2 7d 31 c0 48 8b d0 c5 e5 76 db c4 e2 65 90 24 12 48 8b d0 c5 ed 76 d2 c4 e2 6d 90 1c 02 c7 44 24 14 ff ff 00 00 48 8d 54 24 14 c4 e2 7d 58 44 24 14 c5 dd db d0 c5 e5 db c0 c4 e2 6d 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c2 00 c4 e3 7d 19 c0 01 c7 44 24 10 ff 00 00 00 48 8d 54 24 10 c4 e2 79 79 5c 24 10 c5 e9 db d3 c5 f9 db c3 c5 e9 67 c0 c4 e3 7d 19 c9 01 c4 e2 7d 31 d1 c4 e3 f9 16 ca 01 c4 e1 f9 6e ca c4 e2 7d 31 c9 48 8b d0 c5 e5 76 db c4 e2 65 90 24 12 c5 ed 76 d2 c4 e2 6d 90 1c 08 c7 44 24 0c ff ff 00 00 48 8d 44 24 0c c4 e2 7d 58 4c 24 0c c5 dd db d1 c5 e5 db c9 c4 e2 6d 2b c9 c4 e3 fd 00 c9 d8 c4 e3 7d 19 ca 00 c4 e3 7d 19 c9 01 c7 44 24 08 ff 00 00 00 48 8d 44 24 08 c4 e2 79 79 5c 24 08 c5 e9 db d3 c5 f1 db cb c5 e9 67 c9 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000fh vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0013h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0019h vpmovzxbd ymm2,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d0}
001eh vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0024h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
0029h vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
0035h vpgatherdd ymm4,[rdx+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 12}
003bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003eh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0042h vpgatherdd ymm3,[rdx+ymm0],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 02}
0048h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
0050h lea rdx,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 14}
0055h vpbroadcastd ymm0,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 14}
005ch vpand ymm2,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d0}
0060h vpand ymm0,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c0}
0064h vpackusdw ymm0,ymm2,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c0}
0069h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
006fh vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0075h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
007bh mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0083h lea rdx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 10}
0088h vpbroadcastw xmm3,word ptr [rsp+10h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 10}
008fh vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0093h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
0097h vpackuswb xmm0,xmm2,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c0}
009bh vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00a1h vpmovzxbd ymm2,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d1}
00a6h vpextrq rdx,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 ca 01}
00ach vmovq xmm1,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e ca}
00b1h vpmovzxbd ymm1,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c9}
00b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b9h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
00bdh vpgatherdd ymm4,[rdx+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 12}
00c3h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
00c7h vpgatherdd ymm3,[rax+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 08}
00cdh mov dword ptr [rsp+0ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff ff 00 00}
00d5h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
00dah vpbroadcastd ymm1,dword ptr [rsp+0ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 0c}
00e1h vpand ymm2,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d1}
00e5h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00e9h vpackusdw ymm1,ymm2,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c9}
00eeh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00f4h vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
00fah vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0100h mov dword ptr [rsp+8],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 08 ff 00 00 00}
0108h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
010dh vpbroadcastw xmm3,word ptr [rsp+8]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 08}
0114h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0118h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
011ch vpackuswb xmm1,xmm2,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c9}
0120h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0124h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
012ah vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0130h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0134h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0137h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
013ah add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
013eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vgather<sbyte>(ReadOnlySpan<sbyte> src, Vector256<sbyte> vidx)
; vgather_gspan8i_v256x8i[319] = {48 83 ec 18 c5 f8 77 48 8b 02 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 c4 e2 7d 31 d0 c4 e3 f9 16 c2 01 c4 e1 f9 6e c2 c4 e2 7d 31 c0 48 8b d0 c5 e5 76 db c4 e2 65 90 24 12 48 8b d0 c5 ed 76 d2 c4 e2 6d 90 1c 02 c7 44 24 14 ff ff 00 00 48 8d 54 24 14 c4 e2 7d 58 44 24 14 c5 dd db d0 c5 e5 db c0 c4 e2 6d 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c2 00 c4 e3 7d 19 c0 01 c7 44 24 10 ff 00 00 00 48 8d 54 24 10 c4 e2 79 79 5c 24 10 c5 e9 db d3 c5 f9 db c3 c5 e9 67 c0 c4 e3 7d 19 c9 01 c4 e2 7d 31 d1 c4 e3 f9 16 ca 01 c4 e1 f9 6e ca c4 e2 7d 31 c9 48 8b d0 c5 e5 76 db c4 e2 65 90 24 12 c5 ed 76 d2 c4 e2 6d 90 1c 08 c7 44 24 0c ff ff 00 00 48 8d 44 24 0c c4 e2 7d 58 4c 24 0c c5 dd db d1 c5 e5 db c9 c4 e2 6d 2b c9 c4 e3 fd 00 c9 d8 c4 e3 7d 19 ca 00 c4 e3 7d 19 c9 01 c7 44 24 08 ff 00 00 00 48 8d 44 24 08 c4 e2 79 79 5c 24 08 c5 e9 db d3 c5 f1 db cb c5 e9 67 c9 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
000ah vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000fh vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0013h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0019h vpmovzxbd ymm2,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d0}
001eh vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0024h vmovq xmm0,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c2}
0029h vpmovzxbd ymm0,xmm0                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c0}
002eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0031h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
0035h vpgatherdd ymm4,[rdx+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 12}
003bh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003eh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0042h vpgatherdd ymm3,[rdx+ymm0],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 02}
0048h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
0050h lea rdx,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 14}
0055h vpbroadcastd ymm0,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 44 24 14}
005ch vpand ymm2,ymm4,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d0}
0060h vpand ymm0,ymm3,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c0}
0064h vpackusdw ymm0,ymm2,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c0}
0069h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
006fh vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0075h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
007bh mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0083h lea rdx,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 10}
0088h vpbroadcastw xmm3,word ptr [rsp+10h]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 10}
008fh vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0093h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
0097h vpackuswb xmm0,xmm2,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c0}
009bh vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00a1h vpmovzxbd ymm2,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 d1}
00a6h vpextrq rdx,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 ca 01}
00ach vmovq xmm1,rdx                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e ca}
00b1h vpmovzxbd ymm1,xmm1                     ; VPMOVZXBD ymm1, xmm2/m64 || VEX.256.66.0F38.WIG 31 /r || encoded[5]{c4 e2 7d 31 c9}
00b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
00b9h vpcmpeqd ymm3,ymm3,ymm3                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 e5 76 db}
00bdh vpgatherdd ymm4,[rdx+ymm2],ymm3         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 65 90 24 12}
00c3h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
00c7h vpgatherdd ymm3,[rax+ymm1],ymm2         ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 08}
00cdh mov dword ptr [rsp+0ch],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff ff 00 00}
00d5h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
00dah vpbroadcastd ymm1,dword ptr [rsp+0ch]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 0c}
00e1h vpand ymm2,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db d1}
00e5h vpand ymm1,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c9}
00e9h vpackusdw ymm1,ymm2,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c9}
00eeh vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
00f4h vextractf128 xmm2,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 00}
00fah vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0100h mov dword ptr [rsp+8],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 08 ff 00 00 00}
0108h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
010dh vpbroadcastw xmm3,word ptr [rsp+8]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 5c 24 08}
0114h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0118h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
011ch vpackuswb xmm1,xmm2,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e9 67 c9}
0120h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0124h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
012ah vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
0130h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0134h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0137h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
013ah add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
013eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vgather<ushort>(ReadOnlySpan<ushort> src, Vector256<ushort> vidx)
; vgather_gspan16u_v256x16u[180] = {50 c5 f8 77 90 48 8b 02 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 48 8b d0 c4 e2 7d 33 c0 c5 ed 76 d2 c4 e2 6d 90 1c 42 c4 e3 7d 19 d8 00 c4 e3 7d 19 da 01 c7 44 24 04 ff ff 00 00 48 8d 54 24 04 c4 e2 79 58 5c 24 04 c5 f9 db c3 c5 e9 db d3 c4 e2 79 2b c2 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c5 ed 76 d2 c4 e2 6d 90 1c 48 c4 e3 7d 19 d9 00 c4 e3 7d 19 da 01 c7 04 24 ff ff 00 00 48 8d 04 24 c4 e2 79 58 1c 24 c5 f1 db cb c5 e9 db d3 c4 e2 71 2b ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0011h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0017h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
001ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001fh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0023h vpgatherdd ymm3,[rdx+ymm0*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 42}
0029h vextractf128 xmm0,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d8 00}
002fh vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0035h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003dh lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0042h vpbroadcastd xmm3,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 5c 24 04}
0049h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
004dh vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0051h vpackusdw xmm0,xmm0,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c2}
0056h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
005ch vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0061h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0065h vpgatherdd ymm3,[rax+ymm1*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 48}
006bh vextractf128 xmm1,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d9 00}
0071h vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0077h mov dword ptr [rsp],0ffffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff ff 00 00}
007eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0082h vpbroadcastd xmm3,dword ptr [rsp]       ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[6]{c4 e2 79 58 1c 24}
0088h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
008ch vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0090h vpackusdw xmm1,xmm1,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b ca}
0095h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0099h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
009fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00a5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00ach vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00afh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00b3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vgather<short>(ReadOnlySpan<short> src, Vector256<short> vidx)
; vgather_gspan16i_v256x16i[180] = {50 c5 f8 77 90 48 8b 02 c4 c1 7d 10 00 c5 fc 28 c8 c4 e3 7d 19 c0 00 48 8b d0 c4 e2 7d 33 c0 c5 ed 76 d2 c4 e2 6d 90 1c 42 c4 e3 7d 19 d8 00 c4 e3 7d 19 da 01 c7 44 24 04 ff ff 00 00 48 8d 54 24 04 c4 e2 79 58 5c 24 04 c5 f9 db c3 c5 e9 db d3 c4 e2 79 2b c2 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c5 ed 76 d2 c4 e2 6d 90 1c 48 c4 e3 7d 19 d9 00 c4 e3 7d 19 da 01 c7 04 24 ff ff 00 00 48 8d 04 24 c4 e2 79 58 1c 24 c5 f1 db cb c5 e9 db d3 c4 e2 71 2b ca c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0011h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
0017h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
001ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001fh vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0023h vpgatherdd ymm3,[rdx+ymm0*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 42}
0029h vextractf128 xmm0,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d8 00}
002fh vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0035h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
003dh lea rdx,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 04}
0042h vpbroadcastd xmm3,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 5c 24 04}
0049h vpand xmm0,xmm0,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c3}
004dh vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0051h vpackusdw xmm0,xmm0,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c2}
0056h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
005ch vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0061h vpcmpeqd ymm2,ymm2,ymm2                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 ed 76 d2}
0065h vpgatherdd ymm3,[rax+ymm1*2],ymm2       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 6d 90 1c 48}
006bh vextractf128 xmm1,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d9 00}
0071h vextractf128 xmm2,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 da 01}
0077h mov dword ptr [rsp],0ffffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff ff 00 00}
007eh lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0082h vpbroadcastd xmm3,dword ptr [rsp]       ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[6]{c4 e2 79 58 1c 24}
0088h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
008ch vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
0090h vpackusdw xmm1,xmm1,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b ca}
0095h vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0099h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
009fh vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
00a5h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a9h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00ach vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00afh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00b3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vgather<uint>(ReadOnlySpan<uint> src, Vector256<uint> vidx)
; vgather_gspan32u_v256x32u[34] = {c5 f8 77 66 90 48 8b 02 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 75 90 14 80 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0011h vpgatherdd ymm2,[rax+ymm0*4],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 80}
0017h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vgather<int>(ReadOnlySpan<int> src, Vector256<int> vidx)
; vgather_gspan32i_v256x32i[34] = {c5 f8 77 66 90 48 8b 02 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 75 90 14 80 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0011h vpgatherdd ymm2,[rax+ymm0*4],ymm1       ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 e2 75 90 14 80}
0017h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vgather<ulong>(ReadOnlySpan<ulong> src, Vector256<ulong> vidx)
; vgather_gspan64u_v256x64u[34] = {c5 f8 77 66 90 48 8b 02 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 f5 91 14 c0 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0011h vpgatherqq ymm2,[rax+ymm0*8],ymm1       ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 e2 f5 91 14 c0}
0017h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vgather<long>(ReadOnlySpan<long> src, Vector256<long> vidx)
; vgather_gspan64i_v256x64i[34] = {c5 f8 77 66 90 48 8b 02 c4 c1 7d 10 00 c5 f5 76 c9 c4 e2 f5 91 14 c0 c5 fd 11 11 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000dh vpcmpeqd ymm1,ymm1,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 f5 76 c9}
0011h vpgatherqq ymm2,[rax+ymm0*8],ymm1       ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 e2 f5 91 14 c0}
0017h vmovupd [rcx],ymm2                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 11}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
