; int ntz(uint src)
; ntz_32u[7ff7c6e7c7f0h, 7ff7c6e7c7fch][12] = {0f 1f 44 00 00 33 c0 f3 0f bc c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:51:937
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h tzcnt eax,ecx                           ; TZCNT r32, r/m32 || o32 F3 0F BC /r || encoded[4]{f3 0f bc c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
