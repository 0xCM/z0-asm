; int sll<int>(int a, byte count)
; sll_g32i[7ff7c718c3f0h, 7ff7c718c3fdh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:228
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
