------------------------------------------------------------------------------------------------------------------------
; byte stitch(byte left, int ldx, byte right, int rdx)
; stitch_8u[36] = {0f 1f 44 00 00 0f b6 c1 8b ca d3 e0 41 0f b6 d0 41 83 e1 1f 41 8b c9 d3 ea 0b c2 41 8b c9 d3 e8 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0017h shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort stitch(ushort left, int ldx, ushort right, int rdx)
; stitch_16u[36] = {0f 1f 44 00 00 0f b7 c1 8b ca d3 e0 41 0f b7 d0 41 83 e1 1f 41 8b c9 d3 ea 0b c2 41 8b c9 d3 e8 0f b7 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000ch movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0010h and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
0014h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0017h shr edx,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ea}
0019h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint stitch(uint left, int ldx, uint right, int rdx)
; stitch_32u[30] = {0f 1f 44 00 00 8b c1 8b ca d3 e0 41 83 e1 1f 41 8b c9 41 d3 e8 41 0b c0 41 8b c9 d3 e8 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
000bh and r9d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 1f}
000fh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0012h shr r8d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e8}
0015h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0018h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001bh shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong stitch(ulong left, int ldx, ulong right, int rdx)
; stitch_64u[33] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 e0 41 83 e1 3f 41 8b c9 49 d3 e8 49 0b c0 41 8b c9 48 d3 e8 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
000dh and r9d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e1 3f}
0011h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0014h shr r8,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e8}
0017h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
001ah mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001dh shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
