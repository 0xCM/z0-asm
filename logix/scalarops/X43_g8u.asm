; byte f43<byte>(byte a, byte b, byte c)
; X43_g8u[7ff7c6b93530h, 7ff7c6b93564h][52] = {0f 1f 44 00 00 0f b6 c1 45 0f b6 c0 41 23 c0 0f b6 c0 f7 d0 0f b6 c0 0f b6 d2 81 f2 ff 00 00 00 0f b6 d2 0f b6 c9 33 d1 0f b6 d2 0f b6 c0 23 c2 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:052
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah xor edx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff 00 00 00}
0020h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0023h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0026h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
