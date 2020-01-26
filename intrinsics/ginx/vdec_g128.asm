------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vdec<byte>(Vector128<byte> src)
; vdec_g128x8u[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 59 57 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 f8 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vdec<sbyte>(Vector128<sbyte> src)
; vdec_g128x8i[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 59 57 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 f8 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35759h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 57 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubb xmm0,xmm0,xmm1                   ; VPSUBB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F8 /r || encoded[4]{c5 f9 f8 c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vdec<ushort>(Vector128<ushort> src)
; vdec_g128x16u[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 59 54 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 f9 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<short> vdec<short>(Vector128<short> src)
; vdec_g128x16i[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 59 54 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 f9 c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35459h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 59 54 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubw xmm0,xmm0,xmm1                   ; VPSUBW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F9 /r || encoded[4]{c5 f9 f9 c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vdec<uint>(Vector128<uint> src)
; vdec_g128x32u[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 29 54 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 fa c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vdec<int>(Vector128<int> src)
; vdec_g128x32i[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 29 54 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 fa c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35429h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 54 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubd xmm0,xmm0,xmm1                   ; VPSUBD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FA /r || encoded[4]{c5 f9 fa c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vdec<ulong>(Vector128<ulong> src)
; vdec_g128x64u[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 19 56 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 fb c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vdec<long>(Vector128<long> src)
; vdec_g128x64i[35] = {c5 f8 77 66 90 c5 f9 10 02 48 b8 19 56 e3 b1 e3 01 00 00 c5 fb f0 08 c5 f9 fb c1 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h mov rax,1e3b1e35619h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 56 e3 b1 e3 01 00 00}
0013h vlddqu xmm1,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 08}
0017h vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
001bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
