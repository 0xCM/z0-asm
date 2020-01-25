; ulong f15<ulong>(ulong a, ulong b, ulong c)
; X15_g64u[7ff7c6b8e6b0h, 7ff7c6b8e6c2h][18] = {0f 1f 44 00 00 48 23 d1 49 0b d0 48 8b c2 48 f7 d0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:092
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
