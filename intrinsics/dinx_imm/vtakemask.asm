------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x8u_8u-imm5
; vtakemask_v128x8u_8u-imm5[31] = {c5 f8 77 c5 f9 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x8u_8u-imm9
; vtakemask_v128x8u_8u-imm9[31] = {c5 f8 77 c5 f9 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x8u_8u-imm13
; vtakemask_v128x8u_8u-imm13[31] = {c5 f8 77 c5 f9 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x16u_8u-imm5
; vtakemask_v128x16u_8u-imm5[31] = {c5 f8 77 c5 f9 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x16u_8u-imm9
; vtakemask_v128x16u_8u-imm9[31] = {c5 f8 77 c5 f9 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x16u_8u-imm13
; vtakemask_v128x16u_8u-imm13[31] = {c5 f8 77 c5 f9 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_8u-imm5
; vtakemask_v128x32u_8u-imm5[31] = {c5 f8 77 c5 f9 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_8u-imm9
; vtakemask_v128x32u_8u-imm9[31] = {c5 f8 77 c5 f9 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_8u-imm13
; vtakemask_v128x32u_8u-imm13[31] = {c5 f8 77 c5 f9 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_8u-imm5
; vtakemask_v128x64u_8u-imm5[31] = {c5 f8 77 c5 f9 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_8u-imm9
; vtakemask_v128x64u_8u-imm9[31] = {c5 f8 77 c5 f9 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_8u-imm13
; vtakemask_v128x64u_8u-imm13[31] = {c5 f8 77 c5 f9 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x8u_8u-imm5
; vtakemask_v256x8u_8u-imm5[33] = {c5 f8 77 c5 fd 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x8u_8u-imm9
; vtakemask_v256x8u_8u-imm9[33] = {c5 f8 77 c5 fd 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x8u_8u-imm13
; vtakemask_v256x8u_8u-imm13[33] = {c5 f8 77 c5 fd 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x16u_8u-imm5
; vtakemask_v256x16u_8u-imm5[33] = {c5 f8 77 c5 fd 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x16u_8u-imm9
; vtakemask_v256x16u_8u-imm9[33] = {c5 f8 77 c5 fd 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x16u_8u-imm13
; vtakemask_v256x16u_8u-imm13[33] = {c5 f8 77 c5 fd 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_8u-imm5
; vtakemask_v256x32u_8u-imm5[33] = {c5 f8 77 c5 fd 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_8u-imm9
; vtakemask_v256x32u_8u-imm9[33] = {c5 f8 77 c5 fd 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_8u-imm13
; vtakemask_v256x32u_8u-imm13[33] = {c5 f8 77 c5 fd 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_8u-imm5
; vtakemask_v256x64u_8u-imm5[33] = {c5 f8 77 c5 fd 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_8u-imm9
; vtakemask_v256x64u_8u-imm9[33] = {c5 f8 77 c5 fd 10 02 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_8u-imm13
; vtakemask_v256x64u_8u-imm13[33] = {c5 f8 77 c5 fd 10 02 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
0014h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0018h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_v128x32u_8u-imm5
; vtakemask_v128x32u_v128x32u_8u-imm5[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 47 c1 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvd xmm0,xmm0,xmm1                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 79 47 c1}
0011h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_v128x32u_8u-imm9
; vtakemask_v128x32u_v128x32u_8u-imm9[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 47 c1 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvd xmm0,xmm0,xmm1                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 79 47 c1}
0011h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x32u_v128x32u_8u-imm13
; vtakemask_v128x32u_v128x32u_8u-imm13[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 79 47 c1 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvd xmm0,xmm0,xmm1                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 79 47 c1}
0011h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_v128x64u_8u-imm5
; vtakemask_v128x64u_v128x64u_8u-imm5[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 f9 47 c1 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvq xmm0,xmm0,xmm1                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 f9 47 c1}
0011h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_v128x64u_8u-imm9
; vtakemask_v128x64u_v128x64u_8u-imm9[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 f9 47 c1 b8 fe 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvq xmm0,xmm0,xmm1                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 f9 47 c1}
0011h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v128x64u_v128x64u_8u-imm13
; vtakemask_v128x64u_v128x64u_8u-imm13[41] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e2 f9 47 c1 b8 fa 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpsllvq xmm0,xmm0,xmm1                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 f9 47 c1}
0011h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
001eh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0022h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
0025h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_v256x32u_8u-imm5
; vtakemask_v256x32u_v256x32u_8u-imm5[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 7d 47 c1 b8 02 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
0011h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_v256x32u_8u-imm9
; vtakemask_v256x32u_v256x32u_8u-imm9[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 7d 47 c1 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
0011h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x32u_v256x32u_8u-imm13
; vtakemask_v256x32u_v256x32u_8u-imm13[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 7d 47 c1 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f2 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
0011h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpslld ymm0,ymm0,xmm1                   ; VPSLLD ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F2 /r || encoded[4]{c5 fd f2 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_v256x64u_8u-imm5
; vtakemask_v256x64u_v256x64u_8u-imm5[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 fd 47 c1 b8 02 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvq ymm0,ymm0,ymm1                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 e2 fd 47 c1}
0011h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_v256x64u_8u-imm9
; vtakemask_v256x64u_v256x64u_8u-imm9[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 fd 47 c1 b8 fe 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvq ymm0,ymm0,ymm1                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 e2 fd 47 c1}
0011h mov eax,0feh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fe 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vtakemask_v256x64u_v256x64u_8u-imm13
; vtakemask_v256x64u_v256x64u_8u-imm13[43] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e2 fd 47 c1 b8 fa 00 00 00 c5 f9 6e c8 c5 fd f3 c1 c5 fd d7 c0 89 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpsllvq ymm0,ymm0,ymm1                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 e2 fd 47 c1}
0011h mov eax,0fah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 fa 00 00 00}
0016h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
001ah vpsllq ymm0,ymm0,xmm1                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c1}
001eh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0022h mov [rcx],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 01}
0024h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0027h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
