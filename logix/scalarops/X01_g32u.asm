; uint f01<uint>(uint a, uint b, uint c)
; X01_g32u[7ff7c6cc43c0h, 7ff7c6cc43cfh][15] = {0f 1f 44 00 00 41 0b d0 0b d1 8b c2 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:630
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
