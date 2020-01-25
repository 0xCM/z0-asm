; ulong f25<ulong>(ulong a, ulong b, ulong c)
; X25_g64u[7ff7c6b9fdf0h, 7ff7c6b9fe0bh][27] = {0f 1f 44 00 00 48 23 d1 48 8b c2 48 f7 d0 49 8b d0 48 f7 d2 48 33 d1 48 23 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:41:134
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0011h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0014h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0017h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
