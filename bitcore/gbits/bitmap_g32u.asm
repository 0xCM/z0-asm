; uint bitmap<uint>(uint src, uint dst, byte count, byte index)
; bitmap_g32u[7ff7c6e92ad0h, 7ff7c6e92b20h][80] = {0f 1f 44 00 00 8b c1 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 f7 d2 41 23 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 b8 f3 d2 41 23 c0 41 8b c9 d3 e0 0b c2 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:53:545
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000bh lea ecx,[r8-1]                          ; LEA r32, m || o32 8D /r || encoded[4]{41 8d 48 ff}
000fh mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0015h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
0018h blsmsk rcx,r10                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 f0 f3 d2}
001dh mov r10d,ecx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d1}
0020h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0024h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0028h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
002bh shl r10d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e2}
002eh not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0031h and edx,r10d                            ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d2}
0034h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
003ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
003dh shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
0040h blsmsk r8,r10                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d2}
0045h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0048h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
004bh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
004dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
