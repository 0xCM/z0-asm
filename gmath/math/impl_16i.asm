; Int16 impl(Int16 a, Int16 b)
; impl_16i[7ff7c71881d0h, 7ff7c71881e6h][22] = {0f 1f 44 00 00 48 0f bf c2 f7 d0 48 0f bf d1 0b c2 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:277
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
