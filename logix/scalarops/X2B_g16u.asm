; ushort f2b<ushort>(ushort a, ushort b, ushort c)
; X2B_g16u[7ff7c6b90ba0h, 7ff7c6b90bd9h][57] = {0f 1f 44 00 00 0f b7 c2 8b d0 0f b7 c9 44 8b c9 41 23 d1 f7 d2 0f b7 d2 0b c1 f7 d0 0f b7 c0 41 0f b7 c8 0f b7 d2 0f b7 c9 0f b7 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:479
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000dh mov r9d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c9}
0010h and edx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d1}
0013h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0015h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0018h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
001ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0023h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0026h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0029h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002ch and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002eh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0033h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0035h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
