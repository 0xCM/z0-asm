------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, sbyte t)
; vcompact_128x16i_128x16i_n128_8i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 63 c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpacksswb xmm0,xmm0,xmm1                ; VPACKSSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 63 /r || encoded[4]{c5 f9 63 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, byte t)
; vcompact_128x16i_128x16i_n128_8u[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 67 c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vcompact(Vector256<short> x, Vector256<short> y, N256 w, sbyte t)
; vcompact_256x16i_256x16i_n256_8i[35] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 63 c1 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpacksswb ymm0,ymm0,ymm1                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 fd 63 c1}
0012h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0018h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vcompact(Vector256<short> src, N128 w, sbyte t)
; vcompact_256x16i_n128_8i[40] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c5 f1 63 c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h vpacksswb xmm0,xmm1,xmm0                ; VPACKSSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 63 /r || encoded[4]{c5 f1 63 c0}
001dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector256<short> src, N128 w, byte t)
; vcompact_256x16i_n128_8u[40] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c5 f1 63 c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h vpacksswb xmm0,xmm1,xmm0                ; VPACKSSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 63 /r || encoded[4]{c5 f1 63 c0}
001dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector128<ushort> x, Vector128<ushort> y, N128 w, byte t)
; vcompact_128x16u_128x16u_n128_8u[58] = {50 c5 f8 77 90 c5 f9 10 02 c4 c1 79 10 08 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 79 79 54 24 04 c5 f9 db c2 c5 f1 db ca c5 f9 67 c1 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastw xmm2,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 04}
0022h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0026h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002ah vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
002eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0032h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0035h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector128<ushort> x, N128 w, byte t)
; vcompact_128x16u_n128_8u[57] = {50 c5 f8 77 90 c5 f8 57 c0 c5 f9 10 0a c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 79 79 54 24 04 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0015h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001ah vpbroadcastw xmm2,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 04}
0021h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0025h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0029h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
002dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector256<ushort> src, N128 w, byte t)
; vcompact_256x16u_n128_8u[72] = {50 c5 f8 77 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 79 79 54 24 04 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0021h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0026h vpbroadcastw xmm2,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 04}
002dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0031h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0035h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
0039h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vcompact(Vector256<ushort> x, Vector256<ushort> y, N256 w, byte t)
; vcompact_256x16u_256x16u_n256_8u[67] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 7d 79 54 24 04 c5 fd db c2 c5 f5 db ca c5 fd 67 c1 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastw ymm2,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 04}
0022h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0026h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
002ah vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
002eh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0034h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003eh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong vcompact(Vector128<ushort> src, N64 w, ulong t)
; vcompact_128x16u_n64_64u[55] = {50 c5 f8 77 90 c5 f8 57 c0 c5 f9 10 09 c7 44 24 04 ff 00 00 00 48 8d 44 24 04 c4 e2 79 79 54 24 04 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c4 e1 f9 7e c0 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
000dh mov dword ptr [rsp+4],0ffh              ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff 00 00 00}
0015h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001ah vpbroadcastw xmm2,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 04}
0021h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0025h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0029h vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
002dh vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
0032h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vcompact(Vector128<int> x, Vector128<int> y, N128 w, short t)
; vcompact_128x32i_128x32i_n128_16i[26] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c5 f9 6b c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vpackssdw xmm0,xmm0,xmm1                ; VPACKSSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6B /r || encoded[4]{c5 f9 6b c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<short> vcompact(Vector256<int> x, Vector256<int> y, N256 w, short t)
; vcompact_256x32i_256x32i_n256_16i[35] = {c5 f8 77 66 90 c5 fd 10 02 c4 c1 7d 10 08 c5 fd 6b c1 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vpackssdw ymm0,ymm0,ymm1                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 fd 6b c1}
0012h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0018h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vcompact(Vector256<int> src, N128 w, short t)
; vcompact_256x32i_n128_16i[40] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c5 f1 6b c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h vpackssdw xmm0,xmm1,xmm0                ; VPACKSSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6B /r || encoded[4]{c5 f1 6b c0}
001dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0021h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0024h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vcompact(Vector128<uint> x, Vector128<uint> y, N128 w, ushort t)
; vcompact_128x32u_128x32u_n128_16u[59] = {50 c5 f8 77 90 c5 f9 10 02 c4 c1 79 10 08 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0022h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0026h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002ah vpackusdw xmm0,xmm0,xmm1                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c1}
002fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0033h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0036h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vcompact(Vector256<uint> src, N128 w, ushort t)
; vcompact_256x32u_n128_16u[73] = {50 c5 f8 77 90 c5 fd 10 02 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f1 db ca c5 f9 db c2 c4 e2 71 2b c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
0013h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0019h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0021h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0026h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
002dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0031h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0035h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
003ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong vcompact(Vector256<uint> src, N64 w, ulong t)
; vcompact_256x32u_n64_64u[100] = {50 c5 f8 77 90 c5 fd 10 01 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f1 db ca c5 f9 db c2 c4 e2 71 2b c0 c5 f0 57 c9 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f9 db c2 c5 f1 db ca c5 f9 67 c1 c4 e1 f9 7e c0 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0015h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
001dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0022h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0029h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002dh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0031h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0036h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
003ah mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0041h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0045h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
004bh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
004fh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0053h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
0057h vmovq rax,xmm0                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c0}
005ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector256<uint> src, N128 w, byte t)
; vcompact_256x32u_n128_8u[102] = {50 c5 f8 77 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f1 db ca c5 f9 db c2 c4 e2 71 2b c0 c5 f0 57 c9 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f9 db c2 c5 f1 db ca c5 f9 67 c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0015h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
001dh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0022h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
0029h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002dh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0031h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
0036h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
003ah mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0041h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0045h vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
004bh vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
004fh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0053h vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
0057h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
005bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0061h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0065h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vcompact(Vector256<uint> x, Vector256<uint> y, N256 w, ushort t)
; vcompact_256x32u_256x32u_n256_16u[68] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 54 24 04 c5 fd db c2 c5 f5 db ca c4 e2 7d 2b c1 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0022h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0026h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
002ah vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
002fh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0035h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0039h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector128<uint> x0, Vector128<uint> x1, Vector128<uint> x2, Vector128<uint> x3, N128 w, byte t)
; vcompact_128x32u_128x32u_128x32u_128x32u_n128_8u[140] = {48 83 ec 18 c5 f8 77 48 8b 44 24 40 c5 f9 10 02 c4 c1 79 10 08 c7 44 24 14 ff ff 00 00 48 8d 54 24 14 c4 e2 79 58 54 24 14 c5 f9 db c2 c5 f1 db ca c4 e2 79 2b c1 c4 c1 79 10 09 c5 f9 10 10 c7 44 24 10 ff ff 00 00 48 8d 44 24 10 c4 e2 79 58 5c 24 10 c5 f1 db cb c5 e9 db d3 c4 e2 71 2b ca c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 79 79 54 24 0c c5 f9 db c2 c5 f1 db ca c5 f9 67 c1 c5 f9 11 01 48 8b c1 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 40}
000ch vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0010h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0015h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
001dh lea rdx,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 14}
0022h vpbroadcastd xmm2,dword ptr [rsp+14h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 14}
0029h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
002dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0031h vpackusdw xmm0,xmm0,xmm1                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 79 2b c1}
0036h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
003bh vmovupd xmm2,[rax]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 10}
003fh mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
0047h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
004ch vpbroadcastd xmm3,dword ptr [rsp+10h]   ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 5c 24 10}
0053h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
0057h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
005bh vpackusdw xmm1,xmm1,xmm2                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b ca}
0060h mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
0068h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
006dh vpbroadcastw xmm2,word ptr [rsp+0ch]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 54 24 0c}
0074h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0078h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
007ch vpackuswb xmm0,xmm0,xmm1                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f9 67 c1}
0080h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0084h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0087h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
008bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, N128 w, byte t)
; vcompact_256x32u_256x32u_n128_8u[109] = {50 c5 f8 77 90 c5 fd 10 02 c4 c1 7d 10 08 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 54 24 04 c5 fd db c2 c5 f5 db ca c4 e2 7d 2b c1 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0022h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0026h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
002ah vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
002fh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0035h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
003bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0041h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0048h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
004ch vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
0052h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0056h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
005ah vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
005eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0062h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0065h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0068h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vcompact(in Vector512<uint> src, N128 w, byte t)
; vcompact_512x32u_n128_8u[109] = {50 c5 f8 77 90 c5 fd 10 02 c5 fd 10 4a 20 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 54 24 04 c5 fd db c2 c5 f5 db ca c4 e2 7d 2b c1 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
000eh mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0016h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
001bh vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0022h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0026h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
002ah vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
002fh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0035h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
003bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0041h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0048h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
004ch vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
0052h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0056h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
005ah vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
005eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0062h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0065h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0068h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, Vector256<uint> x2, Vector256<uint> x3, N256 w, byte t)
; vcompact_256x32u_256x32u_256x32u_256x32u_n256_8u[161] = {48 83 ec 18 c5 f8 77 48 8b 44 24 40 c5 fd 10 02 c4 c1 7d 10 08 c7 44 24 14 ff ff 00 00 48 8d 54 24 14 c4 e2 7d 58 54 24 14 c5 fd db c2 c5 f5 db ca c4 e2 7d 2b c1 c4 e3 fd 00 c0 d8 c4 c1 7d 10 09 c5 fd 10 10 c7 44 24 10 ff ff 00 00 48 8d 44 24 10 c4 e2 7d 58 5c 24 10 c5 f5 db cb c5 ed db d3 c4 e2 75 2b ca c4 e3 fd 00 c9 d8 c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 7d 79 54 24 0c c5 fd db c2 c5 f5 db ca c5 fd 67 c1 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov rax,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 40}
000ch vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0010h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
0015h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
001dh lea rdx,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 14}
0022h vpbroadcastd ymm2,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 14}
0029h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
002dh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0031h vpackusdw ymm0,ymm0,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 7d 2b c1}
0036h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
003ch vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
0041h vmovupd ymm2,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 10}
0045h mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
004dh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0052h vpbroadcastd ymm3,dword ptr [rsp+10h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 10}
0059h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
005dh vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0061h vpackusdw ymm1,ymm1,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b ca}
0066h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
006ch mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
0074h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0079h vpbroadcastw ymm2,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 0c}
0080h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0084h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0088h vpackuswb ymm0,ymm0,ymm1                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 fd 67 c1}
008ch vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0092h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0096h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0099h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
009ch add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
00a0h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vcompact(Vector128<ulong> x0, Vector128<ulong> x1, N128 w, uint t)
; vcompact_128x64u_128x64u_n128_32u[74] = {c5 f8 77 66 90 c5 f9 10 02 c5 f8 28 c8 c4 e1 f9 7e c8 c4 e3 f9 16 c2 01 c4 c1 79 10 00 c5 f8 28 c8 c4 c1 f9 7e c8 c4 c3 f9 16 c1 01 c5 f9 6e c0 c4 e3 79 22 c2 01 c4 c3 79 22 c0 02 c4 c3 79 22 c1 03 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h vpextrq rdx,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c2 01}
0018h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
001dh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
0021h vmovq r8,xmm1                           ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 c1 f9 7e c8}
0026h vpextrq r9,xmm0,1                       ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 c3 f9 16 c1 01}
002ch vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
0030h vpinsrd xmm0,xmm0,edx,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c2 01}
0036h vpinsrd xmm0,xmm0,r8d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 02}
003ch vpinsrd xmm0,xmm0,r9d,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 03}
0042h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vcompact(Vector256<ulong> src, N128 w, uint t)
; vcompact_256x64u_n128_32u[88] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e1 f9 7e c8 c5 fc 28 c8 c4 e3 f9 16 ca 01 c5 fc 28 c8 c4 e3 7d 19 c9 01 c4 c1 f9 7e c8 c4 e3 7d 19 c0 01 c4 c3 f9 16 c1 01 c5 f9 6e c0 c4 e3 79 22 c2 01 c4 c3 79 22 c0 02 c4 c3 79 22 c1 03 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0016h vpextrq rdx,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 ca 01}
001ch vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0020h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0026h vmovq r8,xmm1                           ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 c1 f9 7e c8}
002bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0031h vpextrq r9,xmm0,1                       ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 c3 f9 16 c1 01}
0037h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
003bh vpinsrd xmm0,xmm0,edx,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c2 01}
0041h vpinsrd xmm0,xmm0,r8d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 02}
0047h vpinsrd xmm0,xmm0,r9d,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 03}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vcompact(Vector256<long> src, N128 w, int t)
; vcompact_256x64i_n128_32i[88] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e1 f9 7e c8 c5 fc 28 c8 c4 e3 f9 16 ca 01 c5 fc 28 c8 c4 e3 7d 19 c9 01 c4 c1 f9 7e c8 c4 e3 7d 19 c0 01 c4 c3 f9 16 c1 01 c5 f9 6e c0 c4 e3 79 22 c2 01 c4 c3 79 22 c0 02 c4 c3 79 22 c1 03 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0016h vpextrq rdx,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 ca 01}
001ch vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0020h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0026h vmovq r8,xmm1                           ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 c1 f9 7e c8}
002bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0031h vpextrq r9,xmm0,1                       ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 c3 f9 16 c1 01}
0037h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
003bh vpinsrd xmm0,xmm0,edx,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c2 01}
0041h vpinsrd xmm0,xmm0,r8d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c0 02}
0047h vpinsrd xmm0,xmm0,r9d,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 03}
004dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vcompact(Vector256<ulong> x0, Vector256<ulong> x1, N256 w, uint t)
; vcompact_256x64u_256x64u_n256_32u[169] = {c5 f8 77 66 90 c5 fd 10 02 c5 fc 28 c8 c4 e1 f9 7e c8 c5 fc 28 c8 c4 e3 f9 16 ca 01 c4 e3 7d 19 c1 01 c4 c1 f9 7e c9 c4 e3 7d 19 c0 01 c4 c3 f9 16 c2 01 c5 f9 6e c0 c4 e3 79 22 c2 01 c4 c3 79 22 c1 02 c4 c3 79 22 c2 03 c4 c1 7d 10 08 c5 fc 28 d1 c4 e1 f9 7e d0 c5 fc 28 d1 c4 e3 f9 16 d2 01 c4 e3 7d 19 ca 01 c4 c1 f9 7e d0 c4 e3 7d 19 c9 01 c4 c3 f9 16 c9 01 c5 f9 6e c8 c4 e3 71 22 ca 01 c4 c3 71 22 c8 02 c4 c3 71 22 c9 03 c5 ec 57 d2 c4 e3 6d 38 c0 00 c4 e3 7d 38 c1 01 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vmovq rax,xmm1                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e c8}
0012h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
0016h vpextrq rdx,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 ca 01}
001ch vextractf128 xmm1,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 01}
0022h vmovq r9,xmm1                           ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 c1 f9 7e c9}
0027h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
002dh vpextrq r10,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 c3 f9 16 c2 01}
0033h vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
0037h vpinsrd xmm0,xmm0,edx,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c2 01}
003dh vpinsrd xmm0,xmm0,r9d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c1 02}
0043h vpinsrd xmm0,xmm0,r10d,3                ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 79 22 c2 03}
0049h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
004eh vmovaps ymm2,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d1}
0052h vmovq rax,xmm2                          ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 e1 f9 7e d0}
0057h vmovaps ymm2,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d1}
005bh vpextrq rdx,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d2 01}
0061h vextractf128 xmm2,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ca 01}
0067h vmovq r8,xmm2                           ; VMOVQ r/m64, xmm1 || VEX.128.66.0F.W1 7E /r || encoded[5]{c4 c1 f9 7e d0}
006ch vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0072h vpextrq r9,xmm1,1                       ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 c3 f9 16 c9 01}
0078h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
007ch vpinsrd xmm1,xmm1,edx,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 ca 01}
0082h vpinsrd xmm1,xmm1,r8d,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 71 22 c8 02}
0088h vpinsrd xmm1,xmm1,r9d,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 c3 71 22 c9 03}
008eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0092h vinserti128 ymm0,ymm2,xmm0,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c0 00}
0098h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
009eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00a2h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00a5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a8h ret                                     ; RET || C3 || encoded[1]{c3}
