; long f56<long>(long a, long b, long c)
; X56_g64i[7ff7c6b9c990h, 7ff7c6b9c99fh][15] = {0f 1f 44 00 00 48 0b d1 49 33 d0 48 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:40:372
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
000bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
