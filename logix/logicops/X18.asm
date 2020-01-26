------------------------------------------------------------------------------------------------------------------------
; bit f18(bit a, bit b, bit c)
; X18[15] = {0f 1f 44 00 00 33 d1 41 33 c8 8b c2 23 c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0007h xor ecx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c8}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
