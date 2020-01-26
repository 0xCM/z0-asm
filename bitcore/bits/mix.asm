------------------------------------------------------------------------------------------------------------------------
; byte mix(N0 parity, byte x, byte y)
; mix_n0_0o_0o[65] = {0f 1f 44 00 00 0f b6 c2 ba 55 00 00 00 c4 e2 7a f5 c2 0f b6 c0 c4 e2 7b f5 c2 0f b6 c0 41 0f b6 d0 b9 55 00 00 00 c4 e2 6a f5 d1 0f b6 d2 b9 aa 00 00 00 c4 e2 6b f5 d1 0f b6 d2 0b c2 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 00 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0021h mov ecx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 55 00 00 00}
0026h pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
002bh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002eh mov ecx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa 00 00 00}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte mix(N1 parity, byte x, byte y)
; mix_n1_0o_0o[65] = {0f 1f 44 00 00 0f b6 c2 ba aa 00 00 00 c4 e2 7a f5 c2 0f b6 c0 ba 55 00 00 00 c4 e2 7b f5 c2 0f b6 c0 41 0f b6 d0 b9 aa 00 00 00 c4 e2 6a f5 d1 0f b6 d2 c4 e2 6b f5 d1 0f b6 d2 0b c2 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0008h mov edx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa 00 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h mov edx,55h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 00 00 00}
001ah pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0026h mov ecx,0aah                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa 00 00 00}
002bh pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
0030h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mix(N0 parity, ushort x, ushort y)
; mix_n0_0o_0o[65] = {0f 1f 44 00 00 0f b7 c2 ba 55 55 00 00 c4 e2 7a f5 c2 0f b7 c0 c4 e2 7b f5 c2 0f b7 c0 41 0f b7 d0 b9 55 55 00 00 c4 e2 6a f5 d1 0f b7 d2 b9 aa aa 00 00 c4 e2 6b f5 d1 0f b7 d2 0b c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001dh movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0021h mov ecx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 55 55 00 00}
0026h pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
002bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
002eh mov ecx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa 00 00}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort mix(N1 parity, ushort x, ushort y)
; mix_n1_0o_0o[65] = {0f 1f 44 00 00 0f b7 c2 ba aa aa 00 00 c4 e2 7a f5 c2 0f b7 c0 ba 55 55 00 00 c4 e2 7b f5 c2 0f b7 c0 41 0f b7 d0 b9 aa aa 00 00 c4 e2 6a f5 d1 0f b7 d2 c4 e2 6b f5 d1 0f b7 d2 0b c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0008h mov edx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa aa 00 00}
000dh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h mov edx,5555h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 00 00}
001ah pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0026h mov ecx,0aaaah                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa 00 00}
002bh pext edx,edx,ecx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 d1}
0030h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0033h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0038h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mix(N0 parity, uint x, uint y)
; mix_n0_0o_0o[43] = {0f 1f 44 00 00 b8 55 55 55 55 c4 e2 6a f5 c0 ba 55 55 55 55 c4 e2 7b f5 c2 c4 e2 3a f5 d2 b9 aa aa aa aa c4 e2 6b f5 d1 0b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 55 55 55 55}
000ah pext eax,edx,eax                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 c0}
000fh mov edx,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 55 55}
0014h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0019h pext edx,r8d,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 3a f5 d2}
001eh mov ecx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa aa aa}
0023h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0028h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint mix(N1 parity, uint x, uint y)
; mix_n1_0o_0o[48] = {0f 1f 44 00 00 b8 aa aa aa aa c4 e2 6a f5 c0 ba 55 55 55 55 c4 e2 7b f5 c2 ba aa aa aa aa c4 e2 3a f5 d2 b9 aa aa aa aa c4 e2 6b f5 d1 0b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 aa aa aa aa}
000ah pext eax,edx,eax                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 6a f5 c0}
000fh mov edx,55555555h                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 55 55 55 55}
0014h pdep eax,eax,edx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 7b f5 c2}
0019h mov edx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba aa aa aa aa}
001eh pext edx,r8d,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 3a f5 d2}
0023h mov ecx,0aaaaaaaah                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 aa aa aa aa}
0028h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
002dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mix(N0 parity, ulong x, ulong y)
; mix_n0_0o_0o[59] = {0f 1f 44 00 00 48 b8 55 55 55 55 55 55 55 55 c4 e2 ea f5 c0 48 ba 55 55 55 55 55 55 55 55 c4 e2 fb f5 c2 c4 e2 ba f5 d2 48 b9 aa aa aa aa aa aa aa aa c4 e2 eb f5 d1 48 0b c2 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
000fh pext rax,rdx,rax                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ea f5 c0}
0014h mov rdx,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 55 55 55 55 55 55 55 55}
001eh pdep rax,rax,rdx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c2}
0023h pext rdx,r8,rdx                         ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 ba f5 d2}
0028h mov rcx,0aaaaaaaaaaaaaaaah              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 aa aa aa aa aa aa aa aa}
0032h pdep rdx,rdx,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 eb f5 d1}
0037h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong mix(N1 parity, ulong x, ulong y)
; mix_n1_0o_0o[69] = {0f 1f 44 00 00 48 b8 aa aa aa aa aa aa aa aa c4 e2 ea f5 c0 48 ba 55 55 55 55 55 55 55 55 c4 e2 fb f5 c2 48 ba aa aa aa aa aa aa aa aa c4 e2 ba f5 d2 48 b9 aa aa aa aa aa aa aa aa c4 e2 eb f5 d1 48 0b c2 c3}
; Capture completion code = RET_ZEDx3
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
