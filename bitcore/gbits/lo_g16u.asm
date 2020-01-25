; ushort lo<ushort>(ushort src)
; lo_g16u[7ff7c6e84600h, 7ff7c6e84619h][25] = {50 0f 1f 40 00 0f b7 c1 0f b6 c0 88 44 24 04 0f b7 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:220
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh mov [rsp+4],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 04}
000fh movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
0014h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
