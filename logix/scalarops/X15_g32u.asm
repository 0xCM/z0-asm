; uint f15<uint>(uint a, uint b, uint c)
; X15_g32u[7ff7c6b9e250h, 7ff7c6b9e25fh][15] = {0f 1f 44 00 00 23 d1 41 0b d0 8b c2 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:798
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
000ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
