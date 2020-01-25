; int inc<int>(int a)
; inc_g32i[7ff7c71955c0h, 7ff7c71955cah][10] = {0f 1f 44 00 00 ff c1 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:282
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
