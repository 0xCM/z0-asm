; ulong f43<ulong>(ulong a, ulong b, ulong c)
; X43_g64u[7ff7c6b93710h, 7ff7c6b93728h][24] = {0f 1f 44 00 00 4c 23 c1 49 8b c0 48 f7 d0 48 f7 d2 48 33 d1 48 23 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:063
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
0008h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0011h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
