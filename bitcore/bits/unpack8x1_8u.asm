; void unpack8x1(byte src, ref ulong dst)
; unpack8x1_8u[7ff7c6e7ba50h, 7ff7c6e7ba6bh][27] = {0f 1f 44 00 00 0f b6 c1 48 b9 01 01 01 01 01 01 01 01 c4 e2 fb f5 c1 48 89 02 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:51:891
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0012h pdep rax,rax,rcx                        ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 e2 fb f5 c1}
0017h mov [rdx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 02}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
