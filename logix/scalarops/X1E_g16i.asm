; Int16 f1e<Int16>(Int16 a, Int16 b, Int16 c)
; X1E_g16i[7ff7c6b9f2e0h, 7ff7c6b9f2feh][30] = {0f 1f 44 00 00 48 0f bf c2 49 0f bf d0 0b c2 48 0f bf c0 48 0f bf d1 33 c2 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:005
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0009h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
000dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
