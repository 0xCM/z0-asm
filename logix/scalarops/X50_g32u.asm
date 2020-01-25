; uint f50<uint>(uint a, uint b, uint c)
; X50_g32u[7ff7c6b9bb60h, 7ff7c6b9bb6bh][11] = {0f 1f 44 00 00 c4 e2 38 f2 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:242
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn eax,r8d,ecx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 38 f2 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
