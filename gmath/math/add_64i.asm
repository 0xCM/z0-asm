; long add(long a, long b)
; add_64i[7ff7c719b6e0h, 7ff7c719b6eah][10] = {0f 1f 44 00 00 48 8d 04 11 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:599
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx+rdx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 11}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
