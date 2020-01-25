; ushort hi<ushort>(ushort src)
; hi_g16u[7ff7c6e84550h, 7ff7c6e8456ch][28] = {50 0f 1f 40 00 0f b7 c1 c1 f8 08 0f b6 c0 88 44 24 04 0f b7 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:34:216
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
0012h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
0017h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
