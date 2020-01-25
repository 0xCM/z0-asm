; ulong dist<byte>(byte a, byte b)
; dist_g8u[7ff7c7193df0h, 7ff7c7193e08h][24] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 73 06 2b d0 8b c2 eb 02 2b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:197
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jae short 0015h                         ; JAE rel8 || 73 cb || encoded[2]{73 06}
000fh sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0015h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
