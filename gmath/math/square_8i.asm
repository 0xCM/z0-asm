; sbyte square(sbyte src)
; square_8i[7ff7c7187b50h, 7ff7c7187b61h][17] = {0f 1f 44 00 00 48 0f be c1 0f af c0 48 0f be c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:227
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h imul eax,eax                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c0}
000ch movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
