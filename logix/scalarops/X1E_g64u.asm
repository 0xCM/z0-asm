; ulong f1e<ulong>(ulong a, ulong b, ulong c)
; X1E_g64u[7ff7c6b8f770h, 7ff7c6b8f77fh][15] = {0f 1f 44 00 00 49 0b d0 48 33 d1 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:229
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
0008h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
