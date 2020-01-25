; uint square<uint>(uint a)
; square_g32u[7ff7c71a3250h, 7ff7c71a325bh][11] = {0f 1f 44 00 00 0f af c9 8b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:57:566
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h imul ecx,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
