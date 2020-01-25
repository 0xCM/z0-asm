; uint bitclear(uint src, byte index, byte count)
; bitclear_32u[7ff7c6e84810h, 7ff7c6e8483ch][44] = {0f 1f 44 00 00 8b c1 41 0f b6 c8 ff c9 41 b8 01 00 00 00 49 d3 e0 c4 c2 f0 f3 d0 44 8b c1 0f b6 ca 41 d3 e0 41 8b d0 f7 d2 23 c2 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:52:187
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000bh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0016h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001bh mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001eh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0021h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0024h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0027h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0029h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
