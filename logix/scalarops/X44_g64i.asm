; long f44<long>(long a, long b, long c)
; X44_g64i[7ff7c6b938a0h, 7ff7c6b938abh][11] = {0f 1f 44 00 00 c4 e2 b8 f2 c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:075
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h andn rax,r8,rdx                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 b8 f2 c2}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
