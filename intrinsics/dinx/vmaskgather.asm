------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmaskgather(N128 n, Vector128<uint> vsrc, ref uint msrc, Vector128<int> vidx, Vector128<uint> mask)
; vmaskgather_n128_v128x32u_32u~ref_v128x32i_v128x32u[46] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 f9 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 61 90 04 89 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0014h vmovupd xmm1,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 08}
0018h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
001ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0020h vpgatherdd xmm0,[r9+xmm1*4],xmm3        ; VPGATHERDD xmm1, vm32x, xmm2 || VEX.128.66.0F38.W0 90 /r || encoded[6]{c4 c2 61 90 04 89}
0026h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vmaskgather(N128 w, Vector128<ulong> vsrc, ref ulong msrc, Vector128<long> vidx, Vector128<ulong> mask)
; vmaskgather_n128_v128x64u_64u~ref_v128x64i_v128x64u[46] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 f9 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 e1 91 04 c9 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0014h vmovupd xmm1,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 08}
0018h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
001ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0020h vpgatherqq xmm0,[r9+xmm1*8],xmm3        ; VPGATHERQQ xmm1, vm64x, xmm2 || VEX.128.66.0F38.W1 91 /r || encoded[6]{c4 c2 e1 91 04 c9}
0026h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vmaskgather(N128 w, Vector128<ulong> vsrc, ref ulong msrc, Vector128<int> vidx, Vector128<ulong> mask)
; vmaskgather_n128_v128x64u_64u~ref_v128x32i_v128x64u[46] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 f9 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 e1 90 04 c9 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0014h vmovupd xmm1,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 08}
0018h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
001ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0020h vpgatherdq xmm0,[r9+xmm1*8],xmm3        ; VPGATHERDQ xmm1, vm32x, xmm2 || VEX.128.66.0F38.W1 90 /r || encoded[6]{c4 c2 e1 90 04 c9}
0026h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmaskgather(N128 w, Vector128<uint> vsrc, ref uint msrc, Vector128<long> vidx, Vector128<uint> mask)
; vmaskgather_n128_v128x32u_32u~ref_v128x64i_v128x32u[46] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 f9 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 61 91 04 89 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0014h vmovupd xmm1,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 08}
0018h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
001ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0020h vpgatherqd xmm0,[r9+xmm1*4],xmm3        ; VPGATHERQD xmm1, vm64x, xmm2 || VEX.128.66.0F38.W0 91 /r || encoded[6]{c4 c2 61 91 04 89}
0026h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vmaskgather(N128 w, Vector128<uint> vsrc, ref uint msrc, Vector256<long> vidx, Vector128<uint> mask)
; vmaskgather_n128_v128x32u_32u~ref_v256x64i_v128x32u[49] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 fd 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 65 91 04 89 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
0014h vmovupd ymm1,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 08}
0018h vmovupd xmm2,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 12}
001ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0020h vpgatherqd xmm0,[r9+ymm1*4],xmm3        ; VPGATHERQD xmm1, vm64y, xmm2 || VEX.256.66.0F38.W0 91 /r || encoded[6]{c4 c2 65 91 04 89}
0026h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vmaskgather(N256 w, Vector256<uint> vsrc, ref uint msrc, Vector256<int> vidx, Vector256<uint> mask)
; vmaskgather_n256_v256x32u_32u~ref_v256x32i_v256x32u[49] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 7d 10 00 c5 fd 10 08 c5 fd 10 12 c5 fc 28 da c4 c2 65 90 04 89 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0014h vmovupd ymm1,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 08}
0018h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
001ch vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0020h vpgatherdd ymm0,[r9+ymm1*4],ymm3        ; VPGATHERDD ymm1, vm32y, ymm2 || VEX.256.66.0F38.W0 90 /r || encoded[6]{c4 c2 65 90 04 89}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vmaskgather(N256 w, Vector256<ulong> vsrc, ref ulong msrc, Vector256<long> vidx, Vector256<ulong> mask)
; vmaskgather_n256_v256x64u_64u~ref_v256x64i_v256x64u[49] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 7d 10 00 c5 fd 10 08 c5 fd 10 12 c5 fc 28 da c4 c2 e5 91 04 c9 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0014h vmovupd ymm1,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 08}
0018h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
001ch vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0020h vpgatherqq ymm0,[r9+ymm1*8],ymm3        ; VPGATHERQQ ymm1, vm64y, ymm2 || VEX.256.66.0F38.W1 91 /r || encoded[6]{c4 c2 e5 91 04 c9}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vmaskgather(N256 w, Vector256<ulong> vsrc, ref ulong msrc, Vector128<int> vidx, Vector256<ulong> mask)
; vmaskgather_n256_v256x64u_64u~ref_v128x32i_v256x64u[49] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 7d 10 00 c5 f9 10 08 c5 fd 10 12 c5 fc 28 da c4 c2 e5 90 04 c9 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
000ah mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
000fh vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
0014h vmovupd xmm1,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 08}
0018h vmovupd ymm2,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 12}
001ch vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0020h vpgatherdq ymm0,[r9+xmm1*8],ymm3        ; VPGATHERDQ ymm1, vm32x, ymm2 || VEX.256.66.0F38.W1 90 /r || encoded[6]{c4 c2 e5 90 04 c9}
0026h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
