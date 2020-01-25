; bit ispow2(int x)
; ispow2_32i[7ff7c71896c0h, 7ff7c71896d1h][17] = {0f 1f 44 00 00 8d 41 ff 85 c8 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:428
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rcx-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 41 ff}
0008h test ecx,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c8}
000ah sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
