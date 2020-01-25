; void decrements<ulong>(ulong first, int count, ref ulong dst)
; decrements_g64u[7ff7c71a2f90h, 7ff7c71a2fb2h][34] = {0f 1f 44 00 00 33 c0 85 d2 7e 16 4c 63 c8 4f 8d 14 c8 4c 8b d9 4d 2b d9 4d 89 1a ff c0 3b c2 7c ea c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:546
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 0021h                         ; JLE rel8 || 7E cb || encoded[2]{7e 16}
000bh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
000eh lea r10,[r8+r9*8]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 14 c8}
0012h mov r11,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d9}
0015h sub r11,r9                              ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{4d 2b d9}
0018h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
001bh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
001dh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
001fh jl short 000bh                          ; JL rel8 || 7C cb || encoded[2]{7c ea}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
