; ushort f3b<ushort>(ushort a, ushort b, ushort c)
; X3B_g16u[7ff7c6b92920h, 7ff7c6b92955h][53] = {50 0f 1f 40 00 0f b7 c1 f7 d0 0f b7 c0 41 0f b7 c8 23 c1 0f b7 c0 0f b7 d2 81 f2 ff ff 00 00 89 54 24 04 0f b7 54 24 04 0f b7 c0 0b c2 0f b7 c0 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:48:946
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0011h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0019h xor edx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff 00 00}
001fh mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
0023h movzx edx,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 04}
0028h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
