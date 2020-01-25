; int inc(int src)
; inc_32i[7ff7c7189580h, 7ff7c7189589h][9] = {0f 1f 44 00 00 8d 41 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:415
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 01}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
