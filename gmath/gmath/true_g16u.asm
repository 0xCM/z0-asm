; ushort true<ushort>(ushort a, ushort b, ushort c)
; true_g16u[7ff7c7191170h, 7ff7c719117bh][11] = {0f 1f 44 00 00 b8 ff ff 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:38:872
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
