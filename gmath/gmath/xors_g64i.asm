; long xors<long>(long a, byte offset)
; xors_g64i[7ff7c719f4f0h, 7ff7c719f515h][37] = {0f 1f 44 00 00 48 8b c1 0f b6 d2 83 e2 3f 8b ca 4c 8b c0 49 d3 f8 8b ca 4c 8b c8 49 d3 e1 49 33 c1 49 33 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:57:295
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0013h sar r8,cl                               ; SAR r/m64, CL || REX.W D3 /7 || encoded[3]{49 d3 f8}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
001bh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001eh xor rax,r9                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c1}
0021h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
