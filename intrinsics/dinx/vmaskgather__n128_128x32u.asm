; Vector128<uint> vmaskgather(N128 w, Vector128<uint> vsrc, ref uint msrc, Vector256<long> vidx, Vector128<uint> mask)
; vmaskgather__n128_128x32u[7ff7c6bd2cb0h, 7ff7c6bd2ce1h][49] = {c5 f8 77 66 90 48 8b 44 24 28 48 8b 54 24 30 c4 c1 79 10 00 c5 fd 10 08 c5 f9 10 12 c5 f8 28 da c4 c2 65 91 04 89 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:918
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
