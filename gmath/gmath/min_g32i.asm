; int min<int>(int a, int b)
; min_g32i[7ff7c718e440h, 7ff7c718e450h][16] = {0f 1f 44 00 00 3b ca 7c 02 eb 02 8b d1 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:401
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0009h jmp short 000dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
