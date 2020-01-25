; uint f3a<uint>(uint a, uint b, uint c)
; X3A_g32u[7ff7c6b927d0h, 7ff7c6b927e3h][19] = {0f 1f 44 00 00 8b c2 f7 d0 23 c1 c4 c2 70 f2 d0 0b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:929
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000bh andn edx,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 d0}
0010h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
