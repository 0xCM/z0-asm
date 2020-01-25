; ulong concat(in uint x0, in uint x1)
; concat_32u[7ff7c6e85180h, 7ff7c6e85191h][17] = {0f 1f 44 00 00 8b 01 8b 12 48 c1 e2 20 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:250
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 01}
0007h mov edx,[rdx]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 12}
0009h shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
000dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
