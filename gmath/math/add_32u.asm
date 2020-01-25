; uint add(uint a, uint b)
; add_32u[7ff7c719b6c0h, 7ff7c719b6c9h][9] = {0f 1f 44 00 00 8d 04 11 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:595
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx+rdx]                       ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 11}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
