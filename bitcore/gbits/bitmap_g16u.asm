; ushort bitmap<ushort>(ushort src, ushort dst, byte count, byte index)
; bitmap_g16u[7ff7c6e92a50h, 7ff7c6e92ab8h][104] = {0f 1f 44 00 00 8b c1 0f b7 d2 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 81 f2 ff ff 00 00 41 23 d2 0f b7 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 f0 f3 d2 0f b7 c9 0f b7 c0 23 c8 0f b7 c1 41 8b c9 d3 e0 0f b7 c0 0b c2 0f b7 c0 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:543
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000ah movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000eh lea ecx,[r8-1]                          ; LEA r32, m || o32 8D /r || encoded[4]{41 8d 48 ff}
0012h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0018h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
001bh blsmsk rcx,r10                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d2}
0020h mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0023h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0027h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
002bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002eh shl r10d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e2}
0031h xor r10d,0ffffh                         ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f2 ff ff 00 00}
0038h and edx,r10d                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d2}
003bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003eh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0044h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0047h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
004ah blsmsk rcx,r10                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d2}
004fh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0052h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0055h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0057h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
005ah mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
005dh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
005fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0062h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0064h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
