; ConstPair<ushort> split(uint src, N2 n)
; split__0o_n216u[7ff7c6e6e680h, 7ff7c6e6e6b2h][50] = {50 0f 1f 40 00 0f b7 c1 c1 e9 10 0f b7 d1 66 c7 04 24 00 00 66 c7 44 24 02 00 00 0f b7 c0 66 89 04 24 0f b7 c2 66 89 44 24 02 8b 04 24 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:589
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000eh mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0014h mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0022h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0025h mov [rsp+2],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 02}
002ah mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
002dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
