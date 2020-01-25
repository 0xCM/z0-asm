; uint rank(ulong src, int pos)
; rank_64u[7ff7c6e6d540h, 7ff7c6e6d55eh][30] = {0f 1f 44 00 00 0f b6 c2 ff c0 0f b6 c0 c1 e0 08 0f b7 c0 c4 e2 f8 f7 c1 f3 48 0f b8 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:523
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0010h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0013h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0018h popcnt rax,rax                          ; POPCNT r64, r/m64 || F3 REX.W 0F B8 /r || encoded[5]{f3 48 0f b8 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
