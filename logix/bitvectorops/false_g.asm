; BitVector<long> false<long>(BitVector<long> x, BitVector<long> y)
; false_g[7ff7c6b66110h, 7ff7c6b66122h][18] = {0f 1f 44 00 00 48 89 4c 24 08 48 89 54 24 10 33 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 02:54:45:474
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 08}
000ah mov [rsp+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 10}
000fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
