; ulong f2e<ulong>(ulong a, ulong b, ulong c)
; X2E_g64u[7ff7c6ba1160h, 7ff7c6ba1172h][18] = {0f 1f 44 00 00 4c 0b c2 48 23 d1 49 33 d0 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:302
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or r8,rdx                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b c2}
0008h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
000bh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
