------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vpackus_alt(Vector128<ushort> x, Vector128<ushort> y)
; vpackus_alt_(v128x16u,v128x16u)[64] = {c5 f8 77 66 90 48 b8 61 56 35 24 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 48 b8 c1 57 35 24 04 02 00 00 c5 fb f0 08 c4 c1 79 10 10 c4 e2 69 00 c9 c5 f9 eb c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,20424355661h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 61 56 35 24 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch mov rax,204243557c1h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c1 57 35 24 04 02 00 00}
0026h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
002ah vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
002fh vpshufb xmm1,xmm2,xmm1                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 69 00 c9}
0034h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0038h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vpackus_alt(Vector128<uint> x, Vector128<uint> y)
; vpackus_alt_(v128x32u,v128x32u)[64] = {c5 f8 77 66 90 48 b8 21 55 35 24 04 02 00 00 c5 fb f0 00 c5 f9 10 0a c4 e2 71 00 c0 48 b8 11 57 35 24 04 02 00 00 c5 fb f0 08 c4 c1 79 10 10 c4 e2 69 00 c9 c5 f9 eb c1 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,20424355521h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 21 55 35 24 04 02 00 00}
000fh vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0013h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
0017h vpshufb xmm0,xmm1,xmm0                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 71 00 c0}
001ch mov rax,20424355711h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 11 57 35 24 04 02 00 00}
0026h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
002ah vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
002fh vpshufb xmm1,xmm2,xmm1                  ; VPSHUFB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 00 /r || encoded[5]{c4 e2 69 00 c9}
0034h vpor xmm0,xmm0,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f9 eb c1}
0038h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vpackus_alt(Vector256<ushort> x, Vector256<ushort> y)
; vpackus_alt_(v256x16u,v256x16u)[67] = {c5 f8 77 66 90 48 b8 31 55 35 24 04 02 00 00 c5 ff f0 00 c5 fd 10 0a c4 e2 75 00 c0 48 b8 e1 54 35 24 04 02 00 00 c5 ff f0 08 c4 c1 7d 10 10 c4 e2 6d 00 c9 c5 fd eb c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,20424355531h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 31 55 35 24 04 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0017h vpshufb ymm0,ymm1,ymm0                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 75 00 c0}
001ch mov rax,204243554e1h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e1 54 35 24 04 02 00 00}
0026h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
002ah vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
002fh vpshufb ymm1,ymm2,ymm1                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 6d 00 c9}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vpackus_alt(Vector256<uint> x, Vector256<uint> y)
; vpackus_alt_(v256x32u,v256x32u)[67] = {c5 f8 77 66 90 48 b8 21 57 35 24 04 02 00 00 c5 ff f0 00 c5 fd 10 0a c4 e2 75 00 c0 48 b8 61 57 35 24 04 02 00 00 c5 ff f0 08 c4 c1 7d 10 10 c4 e2 6d 00 c9 c5 fd eb c1 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,20424355721h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 21 57 35 24 04 02 00 00}
000fh vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0013h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0017h vpshufb ymm0,ymm1,ymm0                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 75 00 c0}
001ch mov rax,20424355761h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 61 57 35 24 04 02 00 00}
0026h vlddqu ymm1,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 08}
002ah vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
002fh vpshufb ymm1,ymm2,ymm1                  ; VPSHUFB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 00 /r || encoded[5]{c4 e2 6d 00 c9}
0034h vpor ymm0,ymm0,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 fd eb c1}
0038h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
