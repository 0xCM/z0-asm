------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<byte>(Vector128<byte> src)
; packmsb8__g128x8u[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<sbyte>(Vector128<sbyte> src)
; packmsb8__g128x8i[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<ushort>(Vector128<ushort> src)
; packmsb8__g128x16u[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<short>(Vector128<short> src)
; packmsb8__g128x16i[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<uint>(Vector128<uint> src)
; packmsb8__g128x32u[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<int>(Vector128<int> src)
; packmsb8__g128x32i[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<ulong>(Vector128<ulong> src)
; packmsb8__g128x64u[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort packmsb8<long>(Vector128<long> src)
; packmsb8__g128x64i[17] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
000dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
