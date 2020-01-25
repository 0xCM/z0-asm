; long f0e<long>(long a, long b, long c)
; X0E_g64i[7ff7c6cc57d0h, 7ff7c6cc57e2h][18] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 49 0b d0 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:42:819
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
000eh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
