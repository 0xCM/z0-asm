; ulong dec<ulong>(ulong a)
; dec_g64u[7ff7c71a6b70h, 7ff7c71a6b7ch][12] = {0f 1f 44 00 00 48 ff c9 48 8b c1 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:58:216
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h dec rcx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff c9}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
