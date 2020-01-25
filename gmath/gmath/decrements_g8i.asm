; void decrements<sbyte>(sbyte first, int count, ref sbyte dst)
; decrements_g8i[7ff7c71a2e50h, 7ff7c71a2e7dh][45] = {0f 1f 44 00 00 33 c0 85 d2 7e 21 48 0f be c9 4c 63 c8 4d 03 c8 4c 0f be d0 44 8b d9 45 2b da 4d 0f be d3 45 88 11 ff c0 3b c2 7c e3 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:529
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
000bh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000fh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0012h add r9,r8                               ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c8}
0015h movsx r10,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be d0}
0019h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001ch sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001fh movsx r10,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d3}
0023h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0026h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0028h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002ah jl short 000fh                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
