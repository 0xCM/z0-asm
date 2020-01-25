; ulong f48<ulong>(ulong a, ulong b, ulong c)
; X48_g64u[7ff7c6ba3fb0h, 7ff7c6ba3fbfh][15] = {0f 1f 44 00 00 49 33 c8 48 23 d1 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:754
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
0008h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
