; byte min(byte a, byte b)
; min_8u[7ff7c7185180h, 7ff7c7185193h][19] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 3b c2 7c 03 8b c2 c3 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:36:961
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
000dh jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c 03}
000fh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
