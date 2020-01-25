; void part4x4(ushort src, NatSpan<N4,byte> dst)
; part4x4__0o_ns4x0oVoid[7ff7c6e81680h, 7ff7c6e81698h][24] = {0f 1f 44 00 00 48 8b 02 0f b7 d1 b9 0f 0f 0f 0f c4 e2 6b f5 d1 89 10 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:52:036
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000bh mov ecx,0f0f0f0fh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0f 0f 0f 0f}
0010h pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0015h mov [rax],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 10}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
