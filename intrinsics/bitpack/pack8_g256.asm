------------------------------------------------------------------------------------------------------------------------
; uint pack8<byte>(Vector256<byte> src, byte index)
; pack8__g256x8u_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<sbyte>(Vector256<sbyte> src, byte index)
; pack8__g256x8i_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ushort>(Vector256<ushort> src, byte index)
; pack8__g256x16u_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<short>(Vector256<short> src, byte index)
; pack8__g256x16i_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<uint>(Vector256<uint> src, byte index)
; pack8__g256x32u_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<int>(Vector256<int> src, byte index)
; pack8__g256x32i_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ulong>(Vector256<ulong> src, byte index)
; pack8__g256x64u_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<long>(Vector256<long> src, byte index)
; pack8__g256x64i_8u[36] = {c5 f8 77 66 90 c5 fd 10 01 0f b6 c2 f7 d8 83 c0 07 0f b6 c0 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,7                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 07}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0018h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001ch vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
