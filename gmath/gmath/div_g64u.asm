; ulong div<ulong>(ulong a, ulong b)
; div_g64u[7ff7c7194480h, 7ff7c7194491h][17] = {0f 1f 44 00 00 4c 8b c2 48 8b c1 33 d2 49 f7 f0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:216
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000dh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
