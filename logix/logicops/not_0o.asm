; bit not(bit a)
; not_0o[7ff7c6a1ee10h, 7ff7c6a1ee1dh][13] = {0f 1f 44 00 00 8b c1 f7 d0 83 e0 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:42:787
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
