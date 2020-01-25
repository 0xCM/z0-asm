; uint f25<uint>(uint a, uint b, uint c)
; X25_g32u[7ff7c6b9fd90h, 7ff7c6b9fda5h][21] = {0f 1f 44 00 00 23 d1 8b c2 f7 d0 41 8b d0 f7 d2 33 d1 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:131
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
0007h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0010h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0012h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
