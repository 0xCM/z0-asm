; bit gteq(int a, int b)
; gteq_32i[7ff7c7184cf0h, 7ff7c7184cfeh][14] = {0f 1f 44 00 00 3b ca 0f 9d c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:36:920
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h cmp ecx,edx                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b ca}
0007h setge al                                ; SETGE r/m8 || 0F 9D /r || encoded[3]{0f 9d c0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
