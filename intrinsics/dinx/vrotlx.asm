------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vrotlx(Vector128<byte> src, N8 count)
; vrotlx_(v128x8u,n8)[36] = {c5 f8 77 66 90 48 b8 69 8d 9a 3e 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,2043e9a8d69h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 69 8d 9a 3e 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vrotlx(Vector128<byte> src, N16 count)
; vrotlx_(v128x8u,n16)[36] = {c5 f8 77 66 90 48 b8 79 8d 9a 3e 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,2043e9a8d79h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 79 8d 9a 3e 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vrotlx(Vector128<byte> src, N24 count)
; vrotlx_(v128x8u,n24)[36] = {c5 f8 77 66 90 48 b8 89 8d 9a 3e 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,2043e9a8d89h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 89 8d 9a 3e 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vrotlx(Vector128<byte> src, N32 count)
; vrotlx_(v128x8u,n32)[36] = {c5 f8 77 66 90 48 b8 99 8d 9a 3e 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,2043e9a8d99h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 99 8d 9a 3e 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0020h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
