; uint div<uint>(uint a, uint b)
; div_g32u[7ff7c6ca41f0h, 7ff7c6ca4200h][16] = {0f 1f 44 00 00 44 8b c2 8b c1 33 d2 41 f7 f0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:50:048
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000ch div r8d                                 ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f0}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
