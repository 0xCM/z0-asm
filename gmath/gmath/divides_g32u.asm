; bit divides<uint>(uint a, uint b)
; divides_g32u[7ff7c71945e0h, 7ff7c71945f4h][20] = {0f 1f 44 00 00 8b c2 33 d2 f7 f1 85 d2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:226
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h div ecx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f1}
000bh test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
