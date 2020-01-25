; byte f5b<byte>(byte a, byte b, byte c)
; X5B_g8u[7ff7c6b8cf90h, 7ff7c6b8cfc2h][50] = {0f 1f 44 00 00 0f b6 c1 45 0f b6 c0 41 33 c0 0f b6 c0 0f b6 c9 0f b6 d2 0b d1 0f b6 d2 0f b6 d2 81 f2 ff 00 00 00 0f b6 d2 0f b6 c0 0b c2 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:551
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000ch xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0015h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0018h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0020h xor edx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff 00 00 00}
0026h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0029h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
