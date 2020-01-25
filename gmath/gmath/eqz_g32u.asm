; uint eqz<uint>(uint a, uint b)
; eqz_g32u[7ff7c719feb0h, 7ff7c719fec0h][16] = {0f 1f 44 00 00 3b ca 0f 94 c0 0f b6 c0 f7 d8 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:340
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
