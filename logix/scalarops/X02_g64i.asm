; long f02<long>(long a, long b, long c)
; X02_g64i[7ff7c6cc4590h, 7ff7c6cc45a2h][18] = {0f 1f 44 00 00 48 0b d1 48 8b c2 48 f7 d0 49 23 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:648
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0008h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
