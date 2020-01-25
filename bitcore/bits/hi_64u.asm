; uint hi(ulong src)
; hi_64u[7ff7c6e71020h, 7ff7c6e7102ch][12] = {0f 1f 44 00 00 48 c1 e9 20 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:897
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
