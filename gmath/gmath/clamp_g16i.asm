; Int16 clamp<Int16>(Int16 a, Int16 b)
; clamp_g16i[7ff7c71930d0h, 7ff7c71930eah][26] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 48 0f bf c0 3b c2 7f 02 eb 02 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:112
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jg short 0017h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0015h jmp short 0019h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0017h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
