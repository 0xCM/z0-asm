------------------------------------------------------------------------------------------------------------------------
; bit vnonz<byte>(Vector256<byte> src)
; vnonz__g256x8u[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<sbyte>(Vector256<sbyte> src)
; vnonz__g256x8i[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<ushort>(Vector256<ushort> src)
; vnonz__g256x16u[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<short>(Vector256<short> src)
; vnonz__g256x16i[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<uint>(Vector256<uint> src)
; vnonz__g256x32u[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<int>(Vector256<int> src)
; vnonz__g256x32i[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<ulong>(Vector256<ulong> src)
; vnonz__g256x64u[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<long>(Vector256<long> src)
; vnonz__g256x64i[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 17 c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vptest ymm0,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<float>(Vector256<float> src)
; vnonz__g256x32f[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 0e c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestps ymm0,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vnonz<double>(Vector256<double> src)
; vnonz__g256x64f[32] = {c5 f8 77 66 90 c5 fd 10 01 c4 e2 7d 0f c0 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestpd ymm0,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c0}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}