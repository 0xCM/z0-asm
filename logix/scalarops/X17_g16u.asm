; ushort f17<ushort>(ushort a, ushort b, ushort c)
; X17_g16u[7ff7c6b8e9e0h, 7ff7c6b8ea1bh][59] = {0f 1f 44 00 00 0f b7 c2 8b d0 45 0f b7 c0 45 8b c8 41 0b d1 0f b7 d2 41 23 c0 0f b7 c0 0f b7 c9 0f b7 d2 0f b7 c9 0f b7 d2 23 d1 c4 e2 70 f2 c0 0b c2 0f b7 c0 f7 d0 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:116
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ah movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
000eh mov r9d,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c8}
0011h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0014h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0017h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0020h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0023h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0026h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0029h and edx,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d1}
002bh andn eax,ecx,eax                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 70 f2 c0}
0030h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0032h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0035h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0037h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
