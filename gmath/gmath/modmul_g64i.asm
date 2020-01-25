; long modmul<long>(long a, long b, long m)
; modmul_g64i[7ff7c7195f70h, 7ff7c7195f85h][21] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 48 99 49 f7 f8 48 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:327
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000eh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
