; ulong f28<ulong>(ulong a, ulong b, ulong c)
; X28_g64u[7ff7c6ba0310h, 7ff7c6ba031fh][15] = {0f 1f 44 00 00 48 33 d1 49 23 d0 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:181
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0008h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
