; ConstPair<byte> split(ushort src, N2 n)
; split__0o_n28u[7ff7c6e82e90h, 7ff7c6e82ec1h][49] = {50 0f 1f 40 00 0f b7 c1 0f b6 d0 c1 f8 08 0f b6 c0 c6 04 24 00 c6 44 24 01 00 0f b6 d2 88 14 24 0f b6 c0 88 44 24 01 48 0f bf 04 24 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:52:117
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0015h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh mov [rsp],dl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 14 24}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h mov [rsp+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 01}
0027h movsx rax,word ptr [rsp]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 24}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
