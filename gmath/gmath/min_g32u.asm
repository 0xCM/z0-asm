; uint min<uint>(uint a, uint b)
; min_g32u[7ff7c71a11c0h, 7ff7c71a11d0h][16] = {0f 1f 44 00 00 3b ca 72 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:57:437
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jb short 000bh                          ; JB rel8 || 72 cb || encoded[2]{72 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
