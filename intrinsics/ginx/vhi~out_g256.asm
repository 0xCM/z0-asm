------------------------------------------------------------------------------------------------------------------------
; void vhi<byte>(Vector256<byte> src, out ulong x0, out ulong x1)
; vhi~out__g256x8u_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<sbyte>(Vector256<sbyte> src, out ulong x0, out ulong x1)
; vhi~out__g256x8i_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<ushort>(Vector256<ushort> src, out ulong x0, out ulong x1)
; vhi~out__g256x16u_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<short>(Vector256<short> src, out ulong x0, out ulong x1)
; vhi~out__g256x16i_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<uint>(Vector256<uint> src, out ulong x0, out ulong x1)
; vhi~out__g256x32u_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<int>(Vector256<int> src, out ulong x0, out ulong x1)
; vhi~out__g256x32i_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<ulong>(Vector256<ulong> src, out ulong x0, out ulong x1)
; vhi~out__g256x64u_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<long>(Vector256<long> src, out ulong x0, out ulong x1)
; vhi~out__g256x64i_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<float>(Vector256<float> src, out ulong x0, out ulong x1)
; vhi~out__g256x32f_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vhi<double>(Vector256<double> src, out ulong x0, out ulong x1)
; vhi~out__g256x64f_0o_0o[36] = {c5 f8 77 66 90 c5 fd 10 01 c4 e3 7d 19 c0 01 c4 e1 f9 7e c0 48 89 02 c4 e3 f9 16 c0 01 49 89 00 c5 f8 77 c3}
; Capture completion code = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0014h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
0017h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
001dh mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0020h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0023h ret                                     ; RET || C3 || encoded[1]{c3}