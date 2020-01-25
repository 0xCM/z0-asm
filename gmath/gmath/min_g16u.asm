; ushort min<ushort>(ushort a, ushort b)
; min_g16u[7ff7c718e3c0h, 7ff7c718e3d9h][25] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 0f b7 c0 3b c2 7c 02 eb 02 8b d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:397
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jl short 0014h                          ; JL rel8 || 7C cb || encoded[2]{7c 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
