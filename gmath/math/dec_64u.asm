; ulong dec(ulong src)
; dec_64u[7ff7c7188ce0h, 7ff7c7188ceah][10] = {0f 1f 44 00 00 48 8d 41 ff c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:365
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea rax,[rcx-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 41 ff}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
