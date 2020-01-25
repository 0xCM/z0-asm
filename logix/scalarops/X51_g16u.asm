; ushort f51<ushort>(ushort a, ushort b, ushort c)
; X51_g16u[7ff7c6b8c0a0h, 7ff7c6b8c0d5h][53] = {50 0f 1f 40 00 41 0f b7 c0 f7 d0 0f b7 c0 0f b7 d2 81 f2 ff ff 00 00 89 54 24 04 0f b7 54 24 04 0f b7 c9 0b d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:364
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0011h xor edx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff 00 00}
0017h mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
001bh movzx edx,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 04}
0020h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0023h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
