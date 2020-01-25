; bit between<sbyte>(sbyte x, sbyte min, sbyte max)
; between_g8i[7ff7c719faf0h, 7ff7c719fb15h][37] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 49 0f be c8 3b c2 7c 0a 3b c1 0f 9e c0 0f b6 c0 eb 02 33 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:309
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0013h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c 0a}
0015h cmp eax,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c1}
0017h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh jmp short 0021h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
001fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
