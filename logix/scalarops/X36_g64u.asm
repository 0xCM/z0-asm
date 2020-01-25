; ulong f36<ulong>(ulong a, ulong b, ulong c)
; X36_g64u[7ff7c6b921f0h, 7ff7c6b921ffh][15] = {0f 1f 44 00 00 49 0b c8 48 33 d1 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:655
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0008h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
