; bit vtestz<ushort>(in Vector512<ushort> src, in Vector512<ushort> mask)
; vtestz__512x16u[7ff7c6c03760h, 7ff7c6c0379dh][61] = {c5 f8 77 66 90 c5 fd 10 01 c5 fd 10 0a c4 e2 7d 17 c1 0f 94 c0 0f b6 c0 85 c0 74 1b c5 fd 10 41 20 c5 fd 10 4a 20 c4 e2 7d 17 c1 0f 94 c2 0f b6 d2 23 c2 c5 f8 77 c3 33 c0 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:05:289
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
0012h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0015h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0018h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001ah je short 0037h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
001ch vmovupd ymm0,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 41 20}
0021h vmovupd ymm1,[rdx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 4a 20}
0026h vptest ymm0,ymm1                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c1}
002bh sete dl                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c2}
002eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0031h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0033h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
0037h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0039h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
