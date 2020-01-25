; int ltz<int>(int a, int b)
; ltz_g32i[7ff7c718dc40h, 7ff7c718dc50h][16] = {0f 1f 44 00 00 3b ca 0f 9c c0 0f b6 c0 f7 d8 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:372
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setl al                                 ; SETL r/m8 || 0F 9C /r || encoded[3]{0f 9c c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
