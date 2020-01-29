------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<byte>(Vector128<byte> src)
; packlsb8__g128x8u[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<sbyte>(Vector128<sbyte> src)
; packlsb8__g128x8i[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<ushort>(Vector128<ushort> src)
; packlsb8__g128x16u[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<short>(Vector128<short> src)
; packlsb8__g128x16i[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<uint>(Vector128<uint> src)
; packlsb8__g128x32u[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<int>(Vector128<int> src)
; packlsb8__g128x32i[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<ulong>(Vector128<ulong> src)
; packlsb8__g128x64u[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packlsb8<long>(Vector128<long> src)
; packlsb8__g128x64i[30] = {c5 f8 77 66 90 c5 f9 10 01 b8 07 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000eh vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0012h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0016h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
