; ushort bitclear<ushort>(ushort src, byte index, byte count)
; bitclear_g16u[7ff7c6e92440h, 7ff7c6e92473h][51] = {0f 1f 44 00 00 0f b7 c1 41 0f b6 c8 ff c9 41 b8 01 00 00 00 49 d3 e0 c4 c2 f0 f3 d0 44 8b c1 0f b6 ca 41 d3 e0 41 81 f0 ff ff 00 00 41 23 c0 0f b7 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:527
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000ch dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0017h blsmsk rcx,r8                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d0}
001ch mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
001fh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0022h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0025h xor r8d,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff ff 00 00}
002ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
002fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
