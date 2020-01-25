; int f5b<int>(int a, int b, int c)
; X5B_g32i[7ff7c6b8d100h, 7ff7c6b8d116h][22] = {0f 1f 44 00 00 44 33 c1 0b d1 81 f2 ff ff ff 7f 41 0b d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:47:561
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor r8d,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 c1}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah xor edx,7fffffffh                       ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff ff 7f}
0010h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0013h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
