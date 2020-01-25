; byte bitmap<byte>(byte src, byte dst, byte count, byte index)
; bitmap_g8u[7ff7c6e929d0h, 7ff7c6e92a37h][103] = {0f 1f 44 00 00 8b c1 0f b6 d2 41 0f b6 c8 ff c9 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 81 f2 ff ff 00 00 41 23 d2 0f b6 d2 41 0f b6 c8 41 b8 01 00 00 00 49 d3 e0 c4 c2 f0 f3 d0 0f b6 c9 0f b6 c0 23 c8 0f b6 c1 41 8b c9 d3 e0 0f b6 c0 0b c2 0f b6 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:539
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ah movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000eh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0010h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0016h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
0019h blsmsk rcx,r10                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d2}
001eh mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0021h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0025h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0029h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002ch shl r10d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e2}
002fh xor r10d,0ffffh                         ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f2 ff ff 00 00}
0036h and edx,r10d                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d2}
0039h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ch movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0040h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0046h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0049h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
004eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0051h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0054h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0056h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0059h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
005ch shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
005eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0061h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0063h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
