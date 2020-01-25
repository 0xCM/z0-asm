; ulong dist(int a, int b)
; dist_32i[7ff7c719bbe0h, 7ff7c719bbf5h][21] = {0f 1f 44 00 00 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:632
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jge short 000fh                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
000fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0011h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
