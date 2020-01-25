; long inc(long src)
; inc_64i[7ff7c719c3e0h, 7ff7c719c3eah][10] = {0f 1f 44 00 00 48 8d 41 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:681
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
