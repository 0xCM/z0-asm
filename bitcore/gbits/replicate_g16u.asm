; ushort replicate<ushort>(ushort src)
; replicate_g16u[7ff7c6e71e80h, 7ff7c6e71eeah][106] = {0f 1f 44 00 00 0f b7 c9 8b c1 f3 0f bd c0 83 c0 f0 f7 d8 83 c0 0f 44 0f b6 c0 b8 10 00 00 00 41 ff c0 99 41 f7 f8 ff c0 8b c9 41 0f b6 d0 44 8b c2 41 c1 e0 08 45 0f b7 c0 c4 62 b8 f7 c1 4d 8b c8 41 ba 01 00 00 00 83 f8 01 7e 17 41 8b ca 0f af ca 4d 8b d8 49 d3 e3 4d 0b cb 41 ff c2 44 3b d0 7c e9 49 8b c1 0f b7 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:33:497
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0008h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000ah lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000eh add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
0011h neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0013h add eax,0fh                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 0f}
0016h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
001ah mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
001fh inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
0022h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0023h idiv r8d                                ; IDIV r/m32 || o32 F7 /7 || encoded[3]{41 f7 f8}
0026h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0028h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
002ah movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
002eh mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
0031h shl r8d,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 08}
0035h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
0039h bextr r8,rcx,r8                         ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 62 b8 f7 c1}
003eh mov r9,r8                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c8}
0041h mov r10d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 ba 01 00 00 00}
0047h cmp eax,1                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 01}
004ah jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
004ch mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004fh imul ecx,edx                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af ca}
0052h mov r11,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b d8}
0055h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
0058h or r9,r11                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4d 0b cb}
005bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005eh cmp r10d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d0}
0061h jl short 004ch                          ; JL rel8 || 7C cb || encoded[2]{7c e9}
0063h mov rax,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c1}
0066h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0069h ret                                     ; RET || C3 || encoded[1]{c3}
