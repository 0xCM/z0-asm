; long f2c<long>(long a, long b, long c)
; X2C_g64i[7ff7c6ba0e70h, 7ff7c6ba0e82h][18] = {0f 1f 44 00 00 4c 0b c2 48 33 d1 49 23 d0 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:268
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or r8,rdx                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b c2}
0008h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000bh and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
