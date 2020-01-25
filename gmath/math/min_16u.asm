; ushort min(ushort a, ushort b)
; min_16u[7ff7c7197e40h, 7ff7c7197e53h][19] = {0f 1f 44 00 00 0f b7 c1 0f b7 d2 3b c2 7c 03 8b c2 c3 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:112
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
