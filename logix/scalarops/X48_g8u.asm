; byte f48<byte>(byte a, byte b, byte c)
; X48_g8u[7ff7c6ba3eb0h, 7ff7c6ba3ecah][26] = {0f 1f 44 00 00 0f b6 c1 41 0f b6 c8 33 c1 0f b6 c0 0f b6 d2 23 c2 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:744
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch xor eax,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c1}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0014h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
