; uint clamp<uint>(uint a, uint b)
; clamp_g32u[7ff7c7193100h, 7ff7c7193110h][16] = {0f 1f 44 00 00 3b ca 77 04 8b c1 eb 02 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:113
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h ja short 000dh                          ; JA rel8 || 77 cb || encoded[2]{77 04}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh jmp short 000fh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
