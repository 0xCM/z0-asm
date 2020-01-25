; uint select(uint a, uint b, uint c)
; select_32u[7ff7c7198ef0h, 7ff7c7198f01h][17] = {0f 1f 44 00 00 23 d1 8b c2 c4 c2 70 f2 d0 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:217
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h andn edx,ecx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 70 f2 d0}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
