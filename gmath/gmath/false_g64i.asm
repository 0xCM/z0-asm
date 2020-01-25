; long false<long>(long a, long b)
; false_g64i[7ff7c7191110h, 7ff7c7191118h][8] = {0f 1f 44 00 00 33 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:867
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h ret                                     ; RET || C3 || encoded[1]{c3}
