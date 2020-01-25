; ushort f1e<ushort>(ushort a, ushort b, ushort c)
; X1E_g16u[7ff7c6b9f2b0h, 7ff7c6b9f2cah][26] = {0f 1f 44 00 00 0f b7 c2 41 0f b7 d0 0b c2 0f b7 c0 0f b7 d1 33 c2 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:41:003
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
000ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
000eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0011h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
0014h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0016h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
