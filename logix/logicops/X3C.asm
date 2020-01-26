------------------------------------------------------------------------------------------------------------------------
; bit f3c(bit a, bit b, bit c)
; X3C[15] = {0f 1f 44 00 00 44 89 44 24 18 8b c2 33 c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+18h],r8d                       ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 18}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
