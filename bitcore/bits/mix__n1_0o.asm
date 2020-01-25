; ulong mix(N1 parity, ulong x, ulong y)
; mix__n1_0o[7ff7c6e85d20h, 7ff7c6e85d65h][69] = {0f 1f 44 00 00 48 b8 aa aa aa aa aa aa aa aa c4 e2 ea f5 c0 48 ba 55 55 55 55 55 55 55 55 c4 e2 fb f5 c2 48 ba aa aa aa aa aa aa aa aa c4 e2 ba f5 d2 48 b9 aa aa aa aa aa aa aa aa c4 e2 eb f5 d1 48 0b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:357
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 aa aa aa aa aa aa aa aa}
000fh pext rax,rdx,rax                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ea f5 c0}
0014h mov rdx,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 55 55 55 55 55 55 55 55}
001eh pdep rax,rax,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c2}
0023h mov rdx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba aa aa aa aa aa aa aa aa}
002dh pext rdx,r8,rdx                         ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ba f5 d2}
0032h mov rcx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 aa aa aa aa aa aa aa aa}
003ch pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0041h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
