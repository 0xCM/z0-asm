; uint nonimpl<uint>(uint a, uint b)
; nonimpl_g32u[7ff7c7191570h, 7ff7c719157bh][11] = {0f 1f 44 00 00 c4 e2 70 f2 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:38:922
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,ecx,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
