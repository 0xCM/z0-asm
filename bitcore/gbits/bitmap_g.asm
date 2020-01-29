------------------------------------------------------------------------------------------------------------------------
; byte bitmap<byte>(byte src, byte dst, byte count, byte index)
; bitmap_g8u_8u_8u_8u[103] = {0f 1f 44 00 00 8b c1 0f b6 d2 41 0f b6 c8 ff c9 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 81 f2 ff ff 00 00 41 23 d2 0f b6 d2 41 0f b6 c8 41 b8 01 00 00 00 49 d3 e0 c4 c2 f0 f3 d0 0f b6 c9 0f b6 c0 23 c8 0f b6 c1 41 8b c9 d3 e0 0f b6 c0 0b c2 0f b6 c0 c3}
; TermCode = RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; ushort bitmap<ushort>(ushort src, ushort dst, byte count, byte index)
; bitmap_g16u_16u_8u_8u[104] = {0f 1f 44 00 00 8b c1 0f b7 d2 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 81 f2 ff ff 00 00 41 23 d2 0f b7 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 f0 f3 d2 0f b7 c9 0f b7 c0 23 c8 0f b7 c1 41 8b c9 d3 e0 0f b7 c0 0b c2 0f b7 c0 c3}
; TermCode = RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; uint bitmap<uint>(uint src, uint dst, byte count, byte index)
; bitmap_g32u_32u_8u_8u[80] = {0f 1f 44 00 00 8b c1 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 f0 f3 d2 44 8b d1 45 0f b6 c9 41 83 e1 1f 41 8b c9 41 d3 e2 41 f7 d2 41 23 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 b8 f3 d2 41 23 c0 41 8b c9 d3 e0 0b c2 c3}
; TermCode = RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; ulong bitmap<ulong>(ulong src, ulong dst, byte count, byte index)
; bitmap_g64u_64u_8u_8u[80] = {0f 1f 44 00 00 48 8b c1 45 0f b6 c0 41 8d 48 ff 41 ba 01 00 00 00 49 d3 e2 c4 c2 a8 f3 d2 45 0f b6 c9 41 83 e1 3f 41 8b c9 49 d3 e2 49 f7 d2 49 23 d2 41 ba 01 00 00 00 41 8b c8 49 d3 e2 c4 c2 b8 f3 d2 49 23 c0 41 8b c9 48 d3 e0 48 0b c2 c3}
; TermCode = RET_INTR
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
