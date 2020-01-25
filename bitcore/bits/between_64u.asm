; ulong between(ulong src, byte k0, byte k1)
; between_64u[7ff7c6e840d0h, 7ff7c6e840f1h][33] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c4 e2 f8 f7 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:148
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
