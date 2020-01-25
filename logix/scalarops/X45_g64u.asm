; ulong f45<ulong>(ulong a, ulong b, ulong c)
; X45_g64u[7ff7c6b93a80h, 7ff7c6b93a95h][21] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 48 f7 d1 48 0b d1 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:49:087
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
000eh or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
