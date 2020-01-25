; uint f14<uint>(uint a, uint b, uint c)
; X14_g32u[7ff7c6b8e510h, 7ff7c6b8e51fh][15] = {0f 1f 44 00 00 41 8b c0 f7 d0 33 d1 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:077
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
