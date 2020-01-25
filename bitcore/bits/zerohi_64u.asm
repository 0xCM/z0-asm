; ulong zerohi(ulong src, int index)
; zerohi_64u[7ff7c6e67c80h, 7ff7c6e67c8dh][13] = {0f 1f 44 00 00 8b c2 c4 e2 f8 f5 c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:31:651
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0007h bzhi rax,rcx,rax                        ; BZHI r64a, r/m64, r64b || VEX.LZ.0F38.W1 F5 /r || encoded[5]{c4 e2 f8 f5 c1}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
