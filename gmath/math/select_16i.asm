; Int16 select(Int16 a, Int16 b, Int16 c)
; select_16i[7ff7c71860c0h, 7ff7c71860dfh][31] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 23 d0 49 0f bf c8 c4 e2 78 f2 c1 0b c2 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:062
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
000fh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0013h andn eax,eax,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 78 f2 c1}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
