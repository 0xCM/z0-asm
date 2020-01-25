; ulong dist<Int16>(Int16 a, Int16 b)
; dist_g16i[7ff7c7193e80h, 7ff7c7193e9eh][30] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 3b c2 7d 07 2b d0 48 63 c2 eb 05 2b c2 48 63 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:202
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000fh jge short 0018h                         ; JGE rel8 || 7D cb || encoded[2]{7d 07}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h jmp short 001dh                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0018h sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
001ah movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
