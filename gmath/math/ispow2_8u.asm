; bit ispow2(byte x)
; ispow2_8u[7ff7c719c450h, 7ff7c719c464h][20] = {0f 1f 44 00 00 0f b6 c1 8d 50 ff 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:56:684
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lea edx,[rax-1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 ff}
000bh test eax,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c2}
000dh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
