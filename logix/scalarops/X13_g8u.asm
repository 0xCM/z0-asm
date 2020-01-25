; byte f13<byte>(byte a, byte b, byte c)
; X13_g8u[7ff7c6b8e2b0h, 7ff7c6b8e2cch][28] = {0f 1f 44 00 00 0f b6 c1 41 0f b6 c8 23 c1 0f b6 c0 0f b6 d2 0b c2 f7 d0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:48:055
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0014h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0016h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
