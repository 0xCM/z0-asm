; long f3a<long>(long a, long b, long c)
; X3A_g64i[7ff7c6b92860h, 7ff7c6b92877h][23] = {0f 1f 44 00 00 48 8b c2 48 f7 d0 48 23 c1 c4 c2 f0 f2 d0 48 0b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:933
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
000eh andn rdx,rcx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 f0 f2 d0}
0013h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
