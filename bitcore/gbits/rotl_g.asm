------------------------------------------------------------------------------------------------------------------------
; byte rotl<byte>(byte src, int shift, int width)
; rotl_g8u[31] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 f8 41 0b c1 0f b6 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotl<ushort>(ushort src, int shift, int width)
; rotl_g16u[31] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 f8 41 0b c1 0f b7 c0 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotl<uint>(uint src, int shift, int width)
; rotl_g32u[27] = {0f 1f 44 00 00 8b c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 e8 41 0b c1 c3}
; Capture completion code = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotl<ulong>(ulong src, int shift, int width)
; rotl_g64u[29] = {0f 1f 44 00 00 48 8b c1 8b ca 4c 8b c8 49 d3 e1 44 2b c2 41 8b c8 48 d3 e8 49 0b c1 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
