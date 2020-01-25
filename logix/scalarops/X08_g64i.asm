; long f08<long>(long a, long b, long c)
; X08_g64i[7ff7c6cc4df0h, 7ff7c6cc4e02h][18] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 48 23 c2 49 23 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:732
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000eh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
