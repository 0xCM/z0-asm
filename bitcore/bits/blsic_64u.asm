; ulong blsic(ulong src)
; blsic_64u[7ff7c6e70070h, 7ff7c6e70082h][18] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 ff c9 48 0b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:749
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
000eh or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
