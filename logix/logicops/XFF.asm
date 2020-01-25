; bit true(bit a, bit b, bit c)
; XFF[7ff7c6a1b730h, 7ff7c6a1b748h][24] = {0f 1f 44 00 00 89 4c 24 08 89 54 24 10 44 89 44 24 18 b8 01 00 00 00 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:36:751
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
000dh mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
