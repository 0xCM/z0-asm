; Int16 mul(Int16 a, Int16 b)
; mul_16i[7ff7c7187500h, 7ff7c7187515h][21] = {0f 1f 44 00 00 48 0f bf c1 48 0f bf d2 0f af c2 48 0f bf c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:191
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh imul eax,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c2}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
