; int add(int a, int b)
; add_32i[7ff7c7188880h, 7ff7c7188889h][9] = {0f 1f 44 00 00 8d 04 11 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:329
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
