; ushort f5f<ushort>(ushort a, ushort b, ushort c)
; X5F_g16u[7ff7c6b8db70h, 7ff7c6b8db84h][20] = {0f 1f 44 00 00 41 0f b7 c0 0f b7 d1 23 c2 f7 d0 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:47:981
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
000eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
