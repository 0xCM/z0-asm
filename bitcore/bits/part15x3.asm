------------------------------------------------------------------------------------------------------------------------
; void part15x3(ushort src, in NatSpan<N5,byte> dst)
; part15x3_0o_ns5x0oN5[51] = {0f 1f 44 00 00 48 8b 02 0f b7 c9 41 b8 07 07 07 07 c4 42 73 f5 c0 44 89 00 48 8b 02 48 83 c0 04 c1 f9 0c 0f b6 d1 b9 07 00 00 00 c4 e2 6b f5 d1 88 10 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
000bh mov r8d,7070707h                        ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 07 07 07 07}
0011h pdep r8d,ecx,r8d                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 42 73 f5 c0}
0016h mov [rax],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 00}
0019h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
001ch add rax,4                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c0 04}
0020h sar ecx,0ch                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f9 0c}
0023h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
0026h mov ecx,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 07 00 00 00}
002bh pdep edx,edx,ecx                        ; PDEP r32a, r32b, r/m32 || VEX.LZ.F2.0F38.W0 F5 /r || encoded[5]{c4 e2 6b f5 d1}
0030h mov [rax],dl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 10}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
