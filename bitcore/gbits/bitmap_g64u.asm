; ulong bitmap<ulong>(ulong src, ulong dst, byte count, byte index)
; bitmap_g64u[7ff7c6e7e130h, 7ff7c6e7e180h][80] = {0f 1f 44 00 00 48 8b c1 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 a8 f3 d2 45 0f b6 c9 41 83 e1 3f 41 8b c9 49 d3 e2 49 f7 d2 49 23 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 b8 f3 d2 49 23 c0 41 8b c9 48 d3 e0 48 0b c2 c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:34:007
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000ch lea ecx,[r8-1]                          ; LEA r32, m || o32 8D /r || encoded[4]{41 8d 48 ff}
0010h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0016h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
0019h blsmsk r10,r10                          ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 a8 f3 d2}
001eh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0022h and r9d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 3f}
0026h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0029h shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
002ch not r10                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d2}
002fh and rdx,r10                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d2}
0032h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0038h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
003bh shl r10,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e2}
003eh blsmsk r8,r10                           ; BLSMSK r64, r/m64 || VEX.LZ.0F38.W1 F3 /2 || encoded[5]{c4 c2 b8 f3 d2}
0043h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0046h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0049h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
004ch or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
