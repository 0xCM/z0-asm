; int dec<int>(int a)
; dec_g32i[7ff7c6cc4000h, 7ff7c6cc400ah][10] = {0f 1f 44 00 00 ff c9 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:594
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
