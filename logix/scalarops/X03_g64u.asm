; ulong f03<ulong>(ulong a, ulong b, ulong c)
; X03_g64u[7ff7c6ca5990h, 7ff7c6ca599fh][15] = {0f 1f 44 00 00 48 0b d1 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:50:161
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
