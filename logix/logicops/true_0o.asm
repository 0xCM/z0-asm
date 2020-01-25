; bit true(bit a, bit b)
; true_0o[7ff7c6a1ef50h, 7ff7c6a1ef63h][19] = {0f 1f 44 00 00 89 4c 24 08 89 54 24 10 b8 01 00 00 00 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:42:797
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
