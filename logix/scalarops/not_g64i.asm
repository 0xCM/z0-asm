; long not<long>(long a)
; not_g64i[7ff7c6ba5b70h, 7ff7c6ba5b7ch][12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:42:139
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
