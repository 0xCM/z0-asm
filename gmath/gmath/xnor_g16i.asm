; Int16 xnor<Int16>(Int16 a, Int16 b)
; xnor_g16i[7ff7c71920a0h, 7ff7c71920b6h][22] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 33 c2 f7 d0 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:041
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
000fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
