; long f24<long>(long a, long b, long c)
; X24_g64i[7ff7c6b9fc40h, 7ff7c6b9fc52h][18] = {0f 1f 44 00 00 48 33 ca 49 33 d0 48 23 d1 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:118
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
0008h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
000bh and rdx,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d1}
000eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
