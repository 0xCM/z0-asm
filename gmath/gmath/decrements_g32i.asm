; void decrements<int>(int first, int count, ref int dst)
; decrements_g32i[7ff7c71a2f50h, 7ff7c71a2f75h][37] = {0f 1f 44 00 00 33 c0 85 d2 7e 19 4c 63 c8 4f 8d 0c 88 44 8b d0 44 8b d9 45 2b da 45 89 19 ff c0 3b c2 7c e7 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:544
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r9,[r8+r9*4]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 88}
0012h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
0015h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
0018h sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001bh mov [r9],r11d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 19}
001eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0020h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0022h jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
