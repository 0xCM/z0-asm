; void decrements<ushort>(ushort first, int count, ref ushort dst)
; decrements_g16u[7ff7c71a2e90h, 7ff7c71a2ebeh][46] = {0f 1f 44 00 00 33 c0 85 d2 7e 22 0f b7 c9 4c 63 c8 4f 8d 0c 48 44 0f b7 d0 44 8b d9 45 2b da 45 0f b7 d3 66 45 89 11 ff c0 3b c2 7c e1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:531
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0009h jle short 002dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
000bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000eh movsxd r9,eax                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c8}
0011h lea r9,[r8+r9*2]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 0c 48}
0015h movzx r10d,ax                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 d0}
0019h mov r11d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d9}
001ch sub r11d,r10d                           ; SUB r32, r/m32 || o32 2B /r || encoded[3]{45 2b da}
001fh movzx r10d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d3}
0023h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0027h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0029h cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
002bh jl short 000eh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
