; int or(int a, int b, int c)
; or_32i[7ff7c7198d80h, 7ff7c7198d8dh][13] = {0f 1f 44 00 00 8b c1 0b c2 41 0b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:207
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0009h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
