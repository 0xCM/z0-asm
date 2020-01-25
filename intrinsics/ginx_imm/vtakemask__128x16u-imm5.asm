; vtakemask__128x16u-imm5
; vtakemask__128x16u-imm5[7ff7c7581ac0h, 7ff7c7581adfh][31] = {c5 f8 77 c5 f9 10 02 b8 02 00 00 00 c5 f9 6e c8 c5 f9 f3 c1 c5 f9 d7 c0 66 89 01 48 8b c1 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:326
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ch vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0010h vpsllq xmm0,xmm0,xmm1                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c1}
0014h vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
0018h mov [rcx],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
