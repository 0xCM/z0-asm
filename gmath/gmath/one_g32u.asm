; uint one<uint>(uint t)
; one_g32u[7ff7c71a6120h, 7ff7c71a612bh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:154
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
