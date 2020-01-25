; ulong avgz(ulong a, ulong b)
; avgz_64u[7ff7c7188980h, 7ff7c7188995h][21] = {0f 1f 44 00 00 48 8b c1 48 23 c2 48 33 d1 48 d1 ea 48 03 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:338
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
000bh xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
000eh shr rdx,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 ea}
0011h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
