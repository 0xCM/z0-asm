; ulong dist(ushort a, ushort b)
; dist_16u[7ff7c7188d90h, 7ff7c7188dabh][27] = {0f 1f 44 00 00 0f b7 c9 0f b7 d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:369
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000dh jge short 0015h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
000fh sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0011h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
0015h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0017h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
