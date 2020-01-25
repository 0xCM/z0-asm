; int square<int>(int a)
; square_g32i[7ff7c71a3270h, 7ff7c71a327bh][11] = {0f 1f 44 00 00 0f af c9 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:567
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
