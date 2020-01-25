; uint scatter(uint src, uint mask)
; scatter_32u[7ff7c6e6dc40h, 7ff7c6e6dc4bh][11] = {0f 1f 44 00 00 c4 e2 73 f5 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:574
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pdep eax,ecx,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 73 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
