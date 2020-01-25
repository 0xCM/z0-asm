; ulong dist<ulong>(ulong a, ulong b)
; dist_g64u[7ff7c71a70d0h, 7ff7c71a70e9h][25] = {0f 1f 44 00 00 48 3b ca 73 08 48 2b d1 48 8b c2 eb 06 48 2b ca 48 8b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:227
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp rcx,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b ca}
0008h jae short 0012h                         ; JAE rel8 || 73 cb || encoded[2]{73 08}
000ah sub rdx,rcx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b d1}
000dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0010h jmp short 0018h                         ; JMP rel8 || EB cb || encoded[2]{eb 06}
0012h sub rcx,rdx                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b ca}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
