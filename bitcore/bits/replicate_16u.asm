; ushort replicate(ushort src, byte from, byte to, int reps)
; replicate_16u[7ff7c6e6d5d0h, 7ff7c6e6d620h][80] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 44 8b c0 44 2b c2 c1 e0 08 0b c2 0f b7 c0 0f b7 c9 c4 e2 78 f7 c9 0f b7 c1 33 d2 45 33 d2 45 85 c9 7e 1e 41 8b ca 41 0f af c8 44 8b d8 41 d3 e3 41 0f b7 cb 0b d1 0f b7 d2 41 ff c2 45 3b d1 7c e2 8b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:526
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
001dh bextr ecx,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c9}
0022h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0025h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0027h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
002ah test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
002dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
002fh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0032h imul ecx,r8d                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af c8}
0036h mov r11d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d8}
0039h shl r11d,cl                             ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e3}
003ch movzx ecx,r11w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 cb}
0040h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0042h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004bh jl short 002fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
004dh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
