; Int16 f36<Int16>(Int16 a, Int16 b, Int16 c)
; X36_g16i[7ff7c6b92180h, 7ff7c6b9219eh][30] = {0f 1f 44 00 00 48 0f bf c1 49 0f bf c8 0b c1 48 0f bf c0 48 0f bf d2 33 c2 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:651
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
000dh or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
