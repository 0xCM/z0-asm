; uint gather(uint src, uint mask)
; gather_32u[7ff7c6e85770h, 7ff7c6e8577bh][11] = {0f 1f 44 00 00 c4 e2 72 f5 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:52:317
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h pext eax,ecx,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 72 f5 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
