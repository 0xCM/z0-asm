; uint avgz(uint a, uint b)
; avgz_32u[7ff7c7188960h, 7ff7c7188970h][16] = {0f 1f 44 00 00 8b c1 23 c2 33 d1 d1 ea 03 c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:337
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0009h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
000bh shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
000dh add eax,edx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c2}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
