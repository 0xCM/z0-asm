; ulong dist(sbyte a, sbyte b)
; dist_8i[7ff7c719bb50h, 7ff7c719bb6dh][29] = {0f 1f 44 00 00 48 0f be c9 48 0f be d2 3b ca 7d 06 2b d1 48 63 c2 c3 2b ca 48 63 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:629
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
000fh jge short 0017h                         ; JGE rel8 || 7D cb || encoded[2]{7d 06}
0011h sub edx,ecx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d1}
0013h movsxd rax,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
0017h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0019h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
