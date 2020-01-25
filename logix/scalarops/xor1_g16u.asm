; ushort xor1<ushort>(ushort a)
; xor1_g16u[7ff7c6b967d0h, 7ff7c6b967ebh][27] = {50 0f 1f 40 00 0f b7 c1 35 ff ff 00 00 89 44 24 04 0f b7 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:358
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
000dh mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0011h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
0016h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
