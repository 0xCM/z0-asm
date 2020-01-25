; byte clamp<byte>(byte a, byte b)
; clamp_g8u[7ff7c71a5e00h, 7ff7c71a5e17h][23] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 0f b6 c0 3b c2 7f 02 eb 02 8b c2 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:126
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh cmp eax,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b c2}
0010h jg short 0014h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0012h jmp short 0016h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0014h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
