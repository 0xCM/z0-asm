; bit vnonz(Vector128<byte> src)
; vnonz__128x8u[7ff7c6bd6f00h, 7ff7c6bd6f1dh][29] = {c5 f8 77 66 90 c5 f9 10 01 c4 e2 79 17 01 0f 94 c0 0f b6 c0 85 c0 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:59:087
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vptest xmm0,xmmword ptr [rcx]           ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 01}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
