------------------------------------------------------------------------------------------------------------------------
; byte pack8<byte>(in Block32<byte> src, int block)
; pack8_g32x8u_32i[31] = {0f 1f 44 00 00 48 8b 01 c1 e2 02 48 63 d2 8b 04 10 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
0011h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0016h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<sbyte>(in Block32<sbyte> src, int block)
; pack8_g32x8i_32i[31] = {0f 1f 44 00 00 48 8b 01 c1 e2 02 48 63 d2 8b 04 10 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh mov eax,[rax+rdx]                       ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 10}
0011h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0016h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ushort>(in Block32<ushort> src, int block)
; pack8_g32x16u_32i[30] = {0f 1f 44 00 00 48 8b 01 d1 e2 48 63 d2 8b 04 50 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*2]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 50}
0010h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0015h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<short>(in Block32<short> src, int block)
; pack8_g32x16i_32i[30] = {0f 1f 44 00 00 48 8b 01 d1 e2 48 63 d2 8b 04 50 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*2]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 50}
0010h mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0015h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
001ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<uint>(in Block32<uint> src, int block)
; pack8_g32x32u_32i[28] = {0f 1f 44 00 00 48 8b 01 48 63 d2 8b 04 90 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
000eh mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0013h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<int>(in Block32<int> src, int block)
; pack8_g32x32i_32i[28] = {0f 1f 44 00 00 48 8b 01 48 63 d2 8b 04 90 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
000eh mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
0013h pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0018h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ulong>(in Block32<ulong> src, int block)
; pack8_g32x64u_32i[24] = {0f 1f 44 00 00 48 8b 01 8b 00 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
000ah mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
000fh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<long>(in Block32<long> src, int block)
; pack8_g32x64i_32i[24] = {0f 1f 44 00 00 48 8b 01 8b 00 ba 01 01 01 01 c4 e2 7a f5 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
000ah mov edx,1010101h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 01 01 01}
000fh pext eax,eax,edx                        ; PEXT r32a, r32b, r/m32 || VEX.LZ.F3.0F38.W0 F5 /r || encoded[5]{c4 e2 7a f5 c2}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<byte>(in Block64<byte> src, int block)
; pack8_g64x8u_32i[37] = {0f 1f 44 00 00 48 8b 01 c1 e2 03 48 63 d2 0f b6 04 10 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movzx eax,byte ptr [rax+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 10}
0012h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ch pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<sbyte>(in Block64<sbyte> src, int block)
; pack8_g64x8i_32i[41] = {0f 1f 44 00 00 48 8b 01 c1 e2 03 48 63 d2 48 0f be 04 10 48 63 c0 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movsx rax,byte ptr [rax+rdx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 04 10}
0013h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0016h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0020h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ushort>(in Block64<ushort> src, int block)
; pack8_g64x16u_32i[37] = {0f 1f 44 00 00 48 8b 01 c1 e2 02 48 63 d2 0f b7 04 50 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movzx eax,word ptr [rax+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 04 50}
0012h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ch pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<short>(in Block64<short> src, int block)
; pack8_g64x16i_32i[41] = {0f 1f 44 00 00 48 8b 01 c1 e2 02 48 63 d2 48 0f bf 04 50 48 63 c0 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh movsx rax,word ptr [rax+rdx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 50}
0013h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0016h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0020h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0025h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<uint>(in Block64<uint> src, int block)
; pack8_g64x32u_32i[35] = {0f 1f 44 00 00 48 8b 01 d1 e2 48 63 d2 8b 04 90 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
0010h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001ah pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<int>(in Block64<int> src, int block)
; pack8_g64x32i_32i[38] = {0f 1f 44 00 00 48 8b 01 d1 e2 48 63 d2 8b 04 90 48 63 c0 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh mov eax,[rax+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 90}
0010h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0013h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
001dh pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<ulong>(in Block64<ulong> src, int block)
; pack8_g64x64u_32i[34] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8b 04 d0 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte pack8<long>(in Block64<long> src, int block)
; pack8_g64x64i_32i[34] = {0f 1f 44 00 00 48 8b 01 48 63 d2 48 8b 04 d0 48 ba 01 01 01 01 01 01 01 01 c4 e2 fa f5 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh mov rax,[rax+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 d0}
000fh mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0019h pext rax,rax,rdx                        ; PEXT r64a, r64b, r/m64 || VEX.LZ.F3.0F38.W1 F5 /r || encoded[5]{c4 e2 fa f5 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<byte>(in Block128<byte> src, int block)
; pack8_g128x8u_32i[34] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 03 c2 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<sbyte>(in Block128<sbyte> src, int block)
; pack8_g128x8i_32i[34] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 03 c2 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ushort>(in Block128<ushort> src, int block)
; pack8_g128x16u_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 50 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<short>(in Block128<short> src, int block)
; pack8_g128x16i_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 50 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<uint>(in Block128<uint> src, int block)
; pack8_g128x32u_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 02 48 63 d2 48 8d 04 90 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<int>(in Block128<int> src, int block)
; pack8_g128x32i_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 02 48 63 d2 48 8d 04 90 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0016h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001bh vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<ulong>(in Block128<ulong> src, int block)
; pack8_g128x64u_32i[34] = {c5 f8 77 66 90 48 8b 01 d1 e2 48 63 d2 48 8d 04 d0 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort pack8<long>(in Block128<long> src, int block)
; pack8_g128x64i_32i[34] = {c5 f8 77 66 90 48 8b 01 d1 e2 48 63 d2 48 8d 04 d0 c5 fb f0 00 c5 f9 73 f0 07 c5 f9 d7 c0 0f b7 c0 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
000ah movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000dh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0011h vlddqu xmm0,xmmword ptr [rax]           ; VLDDQU xmm1, m128 || VEX.128.F2.0F.WIG F0 /r || encoded[4]{c5 fb f0 00}
0015h vpsllq xmm0,xmm0,7                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f9 73 f0 07}
001ah vpmovmskb eax,xmm0                      ; VPMOVMSKB r32, xmm1 || VEX.128.66.0F.W0 D7 /r || encoded[4]{c5 f9 d7 c0}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<byte>(in Block256<byte> src, int block)
; pack8_g256x8u_32i[34] = {c5 f8 77 66 90 48 8b 01 c1 e2 05 48 63 d2 48 03 c2 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<sbyte>(in Block256<sbyte> src, int block)
; pack8_g256x8i_32i[34] = {c5 f8 77 66 90 48 8b 01 c1 e2 05 48 63 d2 48 03 c2 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0015h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001ah vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ushort>(in Block256<ushort> src, int block)
; pack8_g256x16u_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 8d 04 50 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<short>(in Block256<short> src, int block)
; pack8_g256x16i_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 8d 04 50 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<uint>(in Block256<uint> src, int block)
; pack8_g256x32u_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 90 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<int>(in Block256<int> src, int block)
; pack8_g256x32i_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 90 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<ulong>(in Block256<ulong> src, int block)
; pack8_g256x64u_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 02 48 63 d2 48 8d 04 d0 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint pack8<long>(in Block256<long> src, int block)
; pack8_g256x64i_32i[35] = {c5 f8 77 66 90 48 8b 01 c1 e2 02 48 63 d2 48 8d 04 d0 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
0016h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001bh vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
001fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<byte>(in Block512<byte> src, int block)
; pack8_g512x8u_32i[68] = {c5 f8 77 66 90 48 8b 01 c1 e2 06 48 63 d2 48 03 c2 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 83 c0 20 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0018h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001dh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0021h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0023h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<sbyte>(in Block512<sbyte> src, int block)
; pack8_g512x8i_32i[68] = {c5 f8 77 66 90 48 8b 01 c1 e2 06 48 63 d2 48 03 c2 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 83 c0 20 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0011h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0014h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0018h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001dh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0021h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0023h add rax,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 20}
0027h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002bh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0030h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0034h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0036h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003ah or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<ushort>(in Block512<ushort> src, int block)
; pack8_g512x16u_32i[69] = {c5 f8 77 66 90 48 8b 01 c1 e2 05 48 63 d2 48 8d 04 50 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 83 c0 40 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0028h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ch vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0031h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003bh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<short>(in Block512<short> src, int block)
; pack8_g512x16i_32i[69] = {c5 f8 77 66 90 48 8b 01 c1 e2 05 48 63 d2 48 8d 04 50 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 83 c0 40 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,5                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 05}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 40}
0028h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ch vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0031h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0035h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0037h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003bh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<uint>(in Block512<uint> src, int block)
; pack8_g512x32u_32i[71] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 8d 04 90 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 05 80 00 00 00 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<int>(in Block512<int> src, int block)
; pack8_g512x32i_32i[71] = {c5 f8 77 66 90 48 8b 01 c1 e2 04 48 63 d2 48 8d 04 90 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 05 80 00 00 00 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,80h                             ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 80 00 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<ulong>(in Block512<ulong> src, int block)
; pack8_g512x64u_32i[71] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 d0 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 05 00 01 00 00 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong pack8<long>(in Block512<long> src, int block)
; pack8_g512x64i_32i[71] = {c5 f8 77 66 90 48 8b 01 c1 e2 03 48 63 d2 48 8d 04 d0 48 8b d0 c5 ff f0 02 c5 fd 73 f0 07 c5 fd d7 d0 8b d2 48 05 00 01 00 00 c5 ff f0 00 c5 fd 73 f0 07 c5 fd d7 c0 8b c0 48 c1 e0 20 48 0b d0 48 8b c2 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0008h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
000bh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000eh lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
0012h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0015h vlddqu ymm0,ymmword ptr [rdx]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 02}
0019h vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
001eh vpmovmskb edx,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 d0}
0022h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0024h add rax,100h                            ; ADD RAX, imm32 || REX.W 05 id || encoded[6]{48 05 00 01 00 00}
002ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002eh vpsllq ymm0,ymm0,7                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 fd 73 f0 07}
0033h vpmovmskb eax,ymm0                      ; VPMOVMSKB r32, ymm1 || VEX.256.66.0F.W0 D7 /r || encoded[4]{c5 fd d7 c0}
0037h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0039h shl rax,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 20}
003dh or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
0040h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0043h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
