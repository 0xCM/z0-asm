; uint lo<uint>(uint src)
; lo_g32u[7ff7c6e84630h, 7ff7c6e84649h][25] = {50 0f 1f 40 00 0f b7 c1 66 89 44 24 04 8b 44 24 04 0f b7 c0 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:221
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
000dh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
0011h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0014h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
