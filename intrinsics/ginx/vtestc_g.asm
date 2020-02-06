------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector128<byte> src, Vector128<byte> mask)
; vtestc_gv128x8u_v128x8u[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector128<sbyte> src, Vector128<sbyte> mask)
; vtestc_gv128x8i_v128x8i[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector128<ushort> src, Vector128<ushort> mask)
; vtestc_gv128x16u_v128x16u[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(Vector128<short> src, Vector128<short> mask)
; vtestc_gv128x16i_v128x16i[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector128<uint> src, Vector128<uint> mask)
; vtestc_gv128x32u_v128x32u[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector128<int> src, Vector128<int> mask)
; vtestc_gv128x32i_v128x32i[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector128<ulong> src, Vector128<ulong> mask)
; vtestc_gv128x64u_v128x64u[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector128<long> src, Vector128<long> mask)
; vtestc_gv128x64i_v128x64i[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 17 c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector128<float> src, Vector128<float> mask)
; vtestc_gv128x32f_v128x32f[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 0e c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vtestps xmm0,xmm1                       ; VTESTPS xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0E /r || encoded[5]{c4 e2 79 0e c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector128<double> src, Vector128<double> mask)
; vtestc_gv128x64f_v128x64f[25] = {c5 f8 77 66 90 c5 f9 10 01 c5 f9 10 0a c4 e2 79 0f c1 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vtestpd xmm0,xmm1                       ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector256<byte> src, Vector256<byte> mask)
; vtestc_gv256x8u_v256x8u[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector256<sbyte> src, Vector256<sbyte> mask)
; vtestc_gv256x8i_v256x8i[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector256<ushort> src, Vector256<ushort> mask)
; vtestc_gv256x16u_v256x16u[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(Vector256<short> src, Vector256<short> mask)
; vtestc_gv256x16i_v256x16i[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector256<uint> src, Vector256<uint> mask)
; vtestc_gv256x32u_v256x32u[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector256<int> src, Vector256<int> mask)
; vtestc_gv256x32i_v256x32i[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector256<ulong> src, Vector256<ulong> mask)
; vtestc_gv256x64u_v256x64u[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector256<long> src, Vector256<long> mask)
; vtestc_gv256x64i_v256x64i[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector256<float> src, Vector256<float> mask)
; vtestc_gv256x32f_v256x32f[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0e c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestps ymm0,ymm1                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector256<double> src, Vector256<double> mask)
; vtestc_gv256x64f_v256x64f[28] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0f c1 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestpd ymm0,ymm1                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(in Vector512<byte> src, in Vector512<byte> mask)
; vtestc_gv512x8u~in_v512x8u~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(in Vector512<sbyte> src, in Vector512<sbyte> mask)
; vtestc_gv512x8i~in_v512x8i~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(in Vector512<ushort> src, in Vector512<ushort> mask)
; vtestc_gv512x16u~in_v512x16u~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(in Vector512<short> src, in Vector512<short> mask)
; vtestc_gv512x16i~in_v512x16i~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(in Vector512<uint> src, in Vector512<uint> mask)
; vtestc_gv512x32u~in_v512x32u~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(in Vector512<int> src, in Vector512<int> mask)
; vtestc_gv512x32i~in_v512x32i~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(in Vector512<ulong> src, in Vector512<ulong> mask)
; vtestc_gv512x64u~in_v512x64u~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(in Vector512<long> src, in Vector512<long> mask)
; vtestc_gv512x64i~in_v512x64i~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 17 c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(in Vector512<float> src, in Vector512<float> mask)
; vtestc_gv512x32f~in_v512x32f~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0e c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 0e c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestps ymm0,ymm1                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vtestps ymm0,ymm1                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(in Vector512<double> src, in Vector512<double> mask)
; vtestc_gv512x64f~in_v512x64f~in[60] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 0f c1 0f 92 c0 0f b6 c0 85 c0 74 1a c5 fd 10 41 20 c5 fd 10 0a c4 e2 7d 0f c1 0f 92 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vtestpd ymm0,ymm1                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c1}
0012h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0036h                          ; JE rel8 || 74 cb || encoded[2]{74 1a}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0025h vtestpd ymm0,ymm1                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c1}
002ah setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
002dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0030h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0032h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
0036h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0038h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector128<byte> src)
; vtestc_gv128x8u[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector128<sbyte> src)
; vtestc_gv128x8i[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 74 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqb xmm0,xmm0,xmm1                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector128<ushort> src)
; vtestc_gv128x16u[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(Vector128<short> src)
; vtestc_gv128x16i[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 75 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqw xmm0,xmm0,xmm1                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector128<uint> src)
; vtestc_gv128x32u[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector128<int> src)
; vtestc_gv128x32i[33] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 76 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqd xmm0,xmm0,xmm1                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c1}
0011h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0015h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector128<ulong> src)
; vtestc_gv128x64u[34] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0012h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0016h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector128<long> src)
; vtestc_gv128x64i[34] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c4 e2 79 29 c1 c5 f9 10 09 c4 e2 79 17 c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vpcmpeqq xmm0,xmm0,xmm1                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 79 29 c1}
0012h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0016h vptest xmm1,xmm0                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector128<float> src)
; vtestc_gv128x32f[34] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f8 c2 c1 00 c5 f9 10 09 c4 e2 79 0e c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcmpeqps xmm0,xmm0,xmm1                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c1 00}
0012h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0016h vtestps xmm1,xmm0                       ; VTESTPS xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0E /r || encoded[5]{c4 e2 79 0e c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector128<double> src)
; vtestc_gv128x64f[34] = {c5 f8 77 66 90 c5 f8 57 c0 c5 f0 57 c9 c5 f9 c2 c1 00 c5 f9 10 09 c4 e2 79 0f c8 0f 92 c0 0f b6 c0 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcmpeqpd xmm0,xmm0,xmm1                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c1 00}
0012h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0016h vtestpd xmm1,xmm0                       ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector256<byte> src)
; vtestc_gv256x8u[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector256<sbyte> src)
; vtestc_gv256x8i[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 74 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector256<ushort> src)
; vtestc_gv256x16u[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(Vector256<short> src)
; vtestc_gv256x16i[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 75 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector256<uint> src)
; vtestc_gv256x32u[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector256<int> src)
; vtestc_gv256x32i[36] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd 76 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0011h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0015h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001ah setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector256<ulong> src)
; vtestc_gv256x64u[37] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0012h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0016h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector256<long> src)
; vtestc_gv256x64i[37] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c4 e2 7d 29 c1 c5 fd 10 09 c4 e2 7d 17 c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0012h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0016h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector256<float> src)
; vtestc_gv256x32f[37] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fc c2 c1 08 c5 fd 10 09 c4 e2 7d 0e c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vcmpeq_uqps ymm0,ymm0,ymm1              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c1 08}
0012h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0016h vtestps ymm1,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector256<double> src)
; vtestc_gv256x64f[37] = {c5 f8 77 66 90 c5 fc 57 c0 c5 f4 57 c9 c5 fd c2 c1 08 c5 fd 10 09 c4 e2 7d 0f c8 0f 92 c0 0f b6 c0 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vcmpeq_uqpd ymm0,ymm0,ymm1              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c1 08}
0012h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0016h vtestpd ymm1,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c8}
001bh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector512<byte> src)
; vtestc_gv512x8u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector512<sbyte> src)
; vtestc_gv512x8i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector512<ushort> src)
; vtestc_gv512x16u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<short>(Vector512<short> src)
; vtestc_gv512x16i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector512<uint> src)
; vtestc_gv512x32u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector512<int> src)
; vtestc_gv512x32i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector512<ulong> src)
; vtestc_gv512x64u[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector512<long> src)
; vtestc_gv512x64i[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector512<float> src)
; vtestc_gv512x32f[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fc c2 c1 08 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 0e ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 0e c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vcmpeq_uqps ymm0,ymm0,ymm1              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c1 08}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vtestps ymm1,ymm2                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vtestps ymm1,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector512<double> src)
; vtestc_gv512x64f[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd c2 c1 08 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 0f ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 0f c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vcmpeq_uqpd ymm0,ymm0,ymm1              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c1 08}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vtestpd ymm1,ymm2                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vtestpd ymm1,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
