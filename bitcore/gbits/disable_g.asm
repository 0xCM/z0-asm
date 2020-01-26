------------------------------------------------------------------------------------------------------------------------
; byte disable<byte>(byte src, int pos)
; disable_g8u[34] = {0f 1f 44 00 00 0f b6 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 f7 d2 0f b6 d2 23 c2 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte disable<sbyte>(sbyte src, int pos)
; disable_g8i[36] = {0f 1f 44 00 00 48 0f be c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f be d0 f7 d2 0f b6 d2 23 c2 48 0f be c0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
0018h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort disable<ushort>(ushort src, int pos)
; disable_g16u[34] = {0f 1f 44 00 00 0f b7 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b7 d0 f7 d2 0f b7 d2 23 c2 0f b7 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0013h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0017h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0019h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 disable<Int16>(Int16 src, int pos)
; disable_g16i[37] = {0f 1f 44 00 00 48 0f bf c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f bf d0 f7 d2 48 0f bf d2 23 c2 48 0f bf c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0011h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0014h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
0018h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
001ah movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0020h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint disable<uint>(uint src, int pos)
; disable_g32u[26] = {0f 1f 44 00 00 8b c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 8b d0 f7 d2 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int disable<int>(int src, int pos)
; disable_g32i[26] = {0f 1f 44 00 00 8b c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 8b d0 f7 d2 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0015h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0017h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong disable<ulong>(ulong src, int pos)
; disable_g64u[29] = {0f 1f 44 00 00 48 8b c1 41 b8 01 00 00 00 8b ca 49 d3 e0 49 8b d0 48 f7 d2 48 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long disable<long>(long src, int pos)
; disable_g64i[29] = {0f 1f 44 00 00 48 8b c1 41 b8 01 00 00 00 8b ca 49 d3 e0 49 8b d0 48 f7 d2 48 23 c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float disable<float>(float src, int pos)
; disable_g32f[45] = {50 c5 f8 77 90 c5 fa 11 44 24 04 48 8d 44 24 04 41 b8 01 00 00 00 8b ca 41 d3 e0 41 8b d0 f7 d2 21 10 c5 fa 10 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0010h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0016h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0018h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
001bh mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
001eh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0020h and [rax],edx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 10}
0022h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0028h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double disable<double>(double src, int pos)
; disable_g64f[44] = {50 c5 f8 77 90 c5 fb 11 04 24 48 8d 04 24 41 b8 01 00 00 00 8b ca 49 d3 e0 49 8b d0 48 f7 d2 48 21 10 c5 fb 10 04 24 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000ah lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0016h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0019h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
001ch not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
001fh and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
0022h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0027h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
