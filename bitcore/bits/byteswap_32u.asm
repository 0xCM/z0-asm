; uint byteswap(uint src)
; byteswap_32u[7ff7c6e70860h, 7ff7c6e70890h][48] = {0f 1f 44 00 00 8b c1 c1 e8 18 0f b6 c0 8b d1 c1 ea 10 0f b6 d2 c1 e2 08 0b c2 8b d1 c1 ea 08 0f b6 d2 c1 e2 10 0b c2 0f b6 d1 c1 e2 18 0b c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:824
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h shr eax,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 18}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000fh shr edx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 10}
0012h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0015h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
0018h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001ah mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
001ch shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
001fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0022h shl edx,10h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 10}
0025h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0027h movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
002ah shl edx,18h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 18}
002dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
