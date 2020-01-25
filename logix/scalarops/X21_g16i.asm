; Int16 f21<Int16>(Int16 a, Int16 b, Int16 c)
; X21_g16i[7ff7c6b8fb20h, 7ff7c6b8fb40h][32] = {0f 1f 44 00 00 48 0f bf c1 49 0f bf c8 33 c1 48 0f bf c0 48 0f bf d2 0b c2 f7 d0 48 0f bf c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:267
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
000dh xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0013h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
