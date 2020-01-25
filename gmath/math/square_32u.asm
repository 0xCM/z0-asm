; uint square(uint src)
; square_32u[7ff7c719aa30h, 7ff7c719aa3bh][11] = {0f 1f 44 00 00 8b c1 0f af c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:491
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h imul eax,ecx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af c1}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
