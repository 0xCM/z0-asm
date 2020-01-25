; ulong f05<ulong>(ulong a, ulong b, ulong c)
; X05_g64u[7ff7c6cc4960h, 7ff7c6cc496fh][15] = {0f 1f 44 00 00 49 0b c8 48 8b c1 48 f7 d0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:42:683
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
