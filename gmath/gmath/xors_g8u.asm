; byte xors<byte>(byte a, byte offset)
; xors_g8u[7ff7c718c590h, 7ff7c718c5b8h][40] = {0f 1f 44 00 00 0f b6 c1 0f b6 d2 83 e2 1f 8b ca 44 8b c0 41 d3 e8 8b ca 44 8b c8 41 d3 e1 41 33 c1 41 33 c0 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:38:242
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
0013h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
001bh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
001eh xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0021h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0024h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
