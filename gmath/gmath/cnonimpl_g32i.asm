; int cnonimpl<int>(int a, int b)
; cnonimpl_g32i[7ff7c71909d0h, 7ff7c71909dbh][11] = {0f 1f 44 00 00 c4 e2 68 f2 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:38:750
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,edx,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
