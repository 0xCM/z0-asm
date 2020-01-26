------------------------------------------------------------------------------------------------------------------------
; byte rotr(byte src, int shift)
; rotr_8u[32] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b c0 41 d3 f8 8b ca f7 d9 83 c1 08 d3 e0 41 0b c0 0f b6 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0017h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotr(ushort src, int shift)
; rotr_16u[32] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c0 41 d3 f8 8b ca f7 d9 83 c1 10 d3 e0 41 0b c0 0f b7 c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh sar r8d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f8}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0017h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotr(uint src, int shift)
; rotr_32u[12] = {0f 1f 44 00 00 8b c1 8b ca d3 c8 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h ror eax,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 c8}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotr(ulong src, int shift)
; rotr_64u[14] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 c8 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah ror rax,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 c8}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotr(byte src, int shift, int width)
; rotr_8u[31] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b c8 41 d3 f9 44 2b c2 41 8b c8 d3 e0 41 0b c1 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotr(ushort src, int shift, int width)
; rotr_16u[31] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c8 41 d3 f9 44 2b c2 41 8b c8 d3 e0 41 0b c1 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotr(uint src, int shift, int width)
; rotr_32u[27] = {0f 1f 44 00 00 8b c1 8b ca 44 8b c8 41 d3 e9 44 2b c2 41 8b c8 d3 e0 41 0b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shr r9d,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 e9}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotr(ulong src, int shift, int width)
; rotr_64u[29] = {0f 1f 44 00 00 48 8b c1 8b ca 4c 8b c8 49 d3 e9 44 2b c2 41 8b c8 48 d3 e0 49 0b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shr r9,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
