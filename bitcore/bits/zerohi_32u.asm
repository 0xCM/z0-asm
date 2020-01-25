; uint zerohi(uint src, int index)
; zerohi_32u[7ff7c6e67c60h, 7ff7c6e67c6bh][11] = {0f 1f 44 00 00 c4 e2 68 f5 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:31:646
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h bzhi eax,ecx,edx                        ; BZHI r32a, r/m32, r32b || VEX.LZ.0F38.W0 F5 /r || encoded[5]{c4 e2 68 f5 c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
