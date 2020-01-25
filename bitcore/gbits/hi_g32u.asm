; uint hi<uint>(uint src)
; hi_g32u[7ff7c6e98e80h, 7ff7c6e98e9ch][28] = {50 0f 1f 40 00 c1 e9 10 0f b7 c1 66 89 44 24 04 8b 44 24 04 0f b7 c0 48 83 c4 08 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:886
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
0008h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000bh mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
0010h mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
0014h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0017h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
