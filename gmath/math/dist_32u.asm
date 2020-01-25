; ulong dist(uint a, uint b)
; dist_32u[7ff7c7188df0h, 7ff7c7188e03h][19] = {0f 1f 44 00 00 3b ca 73 05 2b d1 8b c2 c3 2b ca 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:371
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h jae short 000eh                         ; JAE rel8 || 73 cb || encoded[2]{73 05}
0009h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
000bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
000eh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0010h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
