; byte rev(byte src)
; rev_8u[7ff7c6e82350h, 7ff7c6e82384h][52] = {0f 1f 44 00 00 0f b6 c1 ba 02 08 20 80 48 0f af c2 48 ba 10 21 42 84 08 00 00 00 48 23 c2 48 ba 01 01 01 01 01 00 00 00 48 0f af c2 48 c1 e8 20 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:074
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,80200802h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 08 20 80}
000dh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0011h mov rdx,884422110h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 10 21 42 84 08 00 00 00}
001bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001eh mov rdx,101010101h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 00 00 00}
0028h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
002ch shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
