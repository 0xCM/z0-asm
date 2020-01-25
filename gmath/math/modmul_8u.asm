; byte modmul(byte a, byte b, byte m)
; modmul_8u[7ff7c7189d00h, 7ff7c7189d1eh][30] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 48 0f af c2 41 0f b6 d0 8b ca 33 d2 48 f7 f1 0f b6 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:447
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000fh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0017h div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
001ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
