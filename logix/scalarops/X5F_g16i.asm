; Int16 f5f<Int16>(Int16 a, Int16 b, Int16 c)
; X5F_g16i[7ff7c6b8dba0h, 7ff7c6b8dbb6h][22] = {0f 1f 44 00 00 49 0f bf c0 48 0f bf d1 23 c2 f7 d0 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:982
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0009h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
000dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0011h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
