------------------------------------------------------------------------------------------------------------------------
; byte toggle<byte>(byte src, int pos)
; toggle_g8u_32i[32] = {0f 1f 44 00 00 0f b6 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 33 c2 0f b6 c0 0f b6 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte toggle<sbyte>(sbyte src, int pos)
; toggle_g8i_32i[35] = {0f 1f 44 00 00 48 0f be c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f be d0 33 c2 48 0f be c0 48 0f be c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0018h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort toggle<ushort>(ushort src, int pos)
; toggle_g16u_32i[32] = {0f 1f 44 00 00 0f b7 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b7 d0 33 c2 0f b7 c0 0f b7 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0019h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short toggle<short>(short src, int pos)
; toggle_g16i_32i[35] = {0f 1f 44 00 00 48 0f bf c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f bf d0 33 c2 48 0f bf c0 48 0f bf c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0018h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
001ah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint toggle<uint>(uint src, int pos)
; toggle_g32u_32i[22] = {0f 1f 44 00 00 8b c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 33 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int toggle<int>(int src, int pos)
; toggle_g32i_32i[22] = {0f 1f 44 00 00 8b c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 33 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong toggle<ulong>(ulong src, int pos)
; toggle_g64u_32i[23] = {0f 1f 44 00 00 48 8b c1 41 b8 01 00 00 00 8b ca 49 d3 e0 49 33 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long toggle<long>(long src, int pos)
; toggle_g64i_32i[23] = {0f 1f 44 00 00 48 8b c1 41 b8 01 00 00 00 8b ca 49 d3 e0 49 33 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float toggle<float>(float src, int pos)
; toggle_g32f_32i[41] = {50 c5 f8 77 90 c5 fa 11 44 24 04 48 8d 44 24 04 41 b8 01 00 00 00 8b ca 41 d3 e0 44 31 00 c5 fa 10 44 24 04 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh xor [rax],r8d                           ; XOR r/m32, r32 || o32 31 /r || encoded[3]{44 31 00}
001eh vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0024h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double toggle<double>(double src, int pos)
; toggle_g64f_32i[38] = {50 c5 f8 77 90 c5 fb 11 04 24 48 8d 04 24 41 b8 01 00 00 00 8b ca 49 d3 e0 4c 31 00 c5 fb 10 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h xor [rax],r8                            ; XOR r/m64, r64 || REX.W 31 /r || encoded[3]{4c 31 00}
001ch vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
