; byte f49<byte>(byte a, byte b, byte c)
; X49_g8u[7ff7c6b93ff0h, 7ff7c6b94028h][56] = {0f 1f 44 00 00 0f b6 c1 8b c8 45 0f b6 c0 45 8b c8 41 33 c9 0f b6 c9 41 0b c0 f7 d0 0f b6 c0 0f b6 d2 0f b6 c9 0f b6 d2 0f b6 c9 23 ca c4 e2 68 f2 c0 0b c1 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:137
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000eh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0011h xor ecx,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c9}
0014h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0017h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0022h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0025h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0028h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002bh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
002dh andn eax,edx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 68 f2 c0}
0032h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
