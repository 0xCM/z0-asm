; ushort f0b<ushort>(ushort a, ushort b, ushort c)
; X0B_g16u[7ff7c6ca6430h, 7ff7c6ca6465h][53] = {50 0f 1f 40 00 0f b7 c1 f7 d0 0f b7 c0 0f b7 d2 81 f2 ff ff 00 00 89 54 24 04 0f b7 54 24 04 41 0f b7 c8 0b d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:50:260
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0010h xor edx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff 00 00}
0016h mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
001ah movzx edx,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 04}
001fh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0023h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
