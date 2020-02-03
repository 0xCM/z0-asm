------------------------------------------------------------------------------------------------------------------------
; byte set<byte>(byte src, int pos, bit value)
; set_g8u_32i[66] = {0f 1f 44 00 00 45 85 c0 74 1b 0f b6 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 0b c2 0f b6 c0 0f b6 c0 c3 0f b6 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b6 d0 f7 d2 0f b6 d2 23 c2 0f b6 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
000ah movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0018h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0021h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0028h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
002eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0030h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0033h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0037h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0039h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
003ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
003eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte set<sbyte>(sbyte src, int pos, bit value)
; set_g8i_32i[71] = {0f 1f 44 00 00 45 85 c0 74 1e 48 0f be c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f be d0 0b c2 48 0f be c0 48 0f be c0 c3 48 0f be c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f be d0 f7 d2 0f b6 d2 23 c2 48 0f be c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
000ah movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0016h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0019h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0023h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
0028h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
002ch mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0032h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0034h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0037h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
003bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
003dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0040h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0042h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort set<ushort>(ushort src, int pos, bit value)
; set_g16u_32i[66] = {0f 1f 44 00 00 45 85 c0 74 1b 0f b7 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b7 d0 0b c2 0f b7 c0 0f b7 c0 c3 0f b7 c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0f b7 d0 f7 d2 0f b7 d2 23 c2 0f b7 c0 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 1b}
000ah movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000dh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0018h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
001ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0021h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0028h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
002eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0030h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0033h movzx edx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d0}
0037h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0039h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
003ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
003eh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short set<short>(short src, int pos, bit value)
; set_g16i_32i[72] = {0f 1f 44 00 00 45 85 c0 74 1e 48 0f bf c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f bf d0 0b c2 48 0f bf c0 48 0f bf c0 c3 48 0f bf c1 41 b8 01 00 00 00 8b ca 41 d3 e0 49 0f bf d0 f7 d2 48 0f bf d2 23 c2 48 0f bf c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0008h je short 0028h                          ; JE rel8 || 74 cb || encoded[2]{74 1e}
000ah movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
000eh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0014h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0016h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0019h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0023h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
0028h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
002ch mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
0032h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0034h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0037h movsx rdx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf d0}
003bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
003dh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0041h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0043h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint set<uint>(uint src, int pos, bit value)
; set_g32u_32i[38] = {0f 1f 44 00 00 8b c1 8b ca 45 85 c0 74 0a ba 01 00 00 00 d3 e2 0b c2 c3 ba 01 00 00 00 d3 e2 f7 d2 23 d0 8b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ch je short 0018h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
000eh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0013h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
0018h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
001fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0021h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int set<int>(int src, int pos, bit value)
; set_g32i_32i[38] = {0f 1f 44 00 00 8b c1 8b ca 45 85 c0 74 0a ba 01 00 00 00 d3 e2 0b c2 c3 ba 01 00 00 00 d3 e2 f7 d2 23 d0 8b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ch je short 0018h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
000eh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0013h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
0018h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
001fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0021h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong set<ulong>(ulong src, int pos, bit value)
; set_g64u_32i[45] = {0f 1f 44 00 00 48 8b c1 8b ca 45 85 c0 74 0c ba 01 00 00 00 48 d3 e2 48 0b c2 c3 ba 01 00 00 00 48 d3 e2 48 f7 d2 48 23 d0 48 8b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000dh je short 001bh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
000fh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0014h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
001bh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0020h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0023h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0026h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
0029h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long set<long>(long src, int pos, bit value)
; set_g64i_32i[45] = {0f 1f 44 00 00 48 8b c1 8b ca 45 85 c0 74 0c ba 01 00 00 00 48 d3 e2 48 0b c2 c3 ba 01 00 00 00 48 d3 e2 48 f7 d2 48 23 d0 48 8b c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000dh je short 001bh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
000fh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0014h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0017h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
001bh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0020h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0023h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0026h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
0029h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float set<float>(float src, int pos, bit value)
; set_g32f_32i[81] = {48 83 ec 18 c5 f8 77 8b ca 45 85 c0 74 22 c5 fa 11 44 24 14 8b 44 24 14 ba 01 00 00 00 d3 e2 0b c2 89 44 24 10 c5 fa 10 44 24 10 48 83 c4 18 c3 c5 fa 11 44 24 0c 48 8d 44 24 0c ba 01 00 00 00 d3 e2 f7 d2 21 10 c5 fa 10 44 24 0c 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ch je short 0030h                          ; JE rel8 || 74 cb || encoded[2]{74 22}
000eh vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
0014h mov eax,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 14}
0018h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
001fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0021h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
0025h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
002bh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
0030h vmovss dword ptr [rsp+0ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 0c}
0036h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
003bh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0040h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0042h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0044h and [rax],edx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 10}
0046h vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
004ch add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double set<double>(double src, int pos, bit value)
; set_g64f_32i[85] = {48 83 ec 18 c5 f8 77 8b ca 45 85 c0 74 26 c5 fb 11 44 24 10 48 8b 44 24 10 ba 01 00 00 00 48 d3 e2 48 0b c2 48 89 44 24 08 c5 fb 10 44 24 08 48 83 c4 18 c3 c5 fb 11 04 24 48 8d 04 24 ba 01 00 00 00 48 d3 e2 48 f7 d2 48 21 10 c5 fb 10 04 24 48 83 c4 18 c3}
; TermCode = RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ch je short 0034h                          ; JE rel8 || 74 cb || encoded[2]{74 26}
000eh vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
0014h mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0019h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001eh shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0021h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0024h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0029h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
002fh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
0034h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0039h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
003dh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0042h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0045h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0048h and [rax],rdx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 10}
004bh vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0050h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<byte>(in Block256<byte> src, int index, bit value)
; set_gb256x8u~in_32i[252] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 08 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 03 c2 8b 54 24 38 0f b7 d2 48 63 d2 0f b6 14 11 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 18 41 b8 01 00 00 00 41 d3 e0 41 0f b6 c8 0b ca 0f b6 c9 44 0f b6 c1 eb 18 41 b8 01 00 00 00 41 d3 e0 41 0f b6 c8 f7 d1 0f b6 c9 23 ca 44 0f b6 c1 44 88 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 08 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 08 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
00a7h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00abh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00aeh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b1h movzx edx,byte ptr [rcx+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 14 11}
00b5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00b9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00bfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c2h je short 00dch                          ; JE rel8 || 74 cb || encoded[2]{74 18}
00c4h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cah shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00cdh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
00d1h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00d3h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00d6h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
00dah jmp short 00f4h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00dch mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00e2h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00e5h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
00e9h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00ebh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00eeh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
00f0h movzx r8d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c1}
00f4h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
00f7h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00fbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<sbyte>(in Block256<sbyte> src, int index, bit value)
; set_gb256x8i~in_32i[254] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 08 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 08 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 03 c2 8b 54 24 38 0f b7 d2 48 63 d2 48 0f be 14 11 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 19 41 b8 01 00 00 00 41 d3 e0 49 0f be c8 0b ca 48 0f be c9 4c 0f be c1 eb 18 41 b8 01 00 00 00 41 d3 e0 49 0f be c8 f7 d1 0f b6 c9 23 ca 4c 0f be c1 44 88 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 08 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],8               ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 08 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
00a7h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00abh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00aeh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b1h movsx rdx,byte ptr [rcx+rdx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 14 11}
00b6h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bdh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c0h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c3h je short 00deh                          ; JE rel8 || 74 cb || encoded[2]{74 19}
00c5h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cbh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00ceh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
00d2h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00d4h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
00d8h movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
00dch jmp short 00f6h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00deh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00e4h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00e7h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
00ebh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00edh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00f0h and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
00f2h movsx r8,cl                             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c1}
00f6h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
00f9h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00fdh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<ushort>(in Block256<ushort> src, int index, bit value)
; set_gb256x16u~in_32i[254] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 10 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 50 8b 54 24 38 0f b7 d2 48 63 d2 0f b7 14 51 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 18 41 b8 01 00 00 00 41 d3 e0 41 0f b7 c8 0b ca 0f b7 c9 44 0f b7 c1 eb 18 41 b8 01 00 00 00 41 d3 e0 41 0f b7 c8 f7 d1 0f b7 c9 23 ca 44 0f b7 c1 66 44 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h movzx edx,word ptr [rcx+rdx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 14 51}
00b6h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bdh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c0h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c3h je short 00ddh                          ; JE rel8 || 74 cb || encoded[2]{74 18}
00c5h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cbh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00ceh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00d2h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00d4h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00d7h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
00dbh jmp short 00f5h                         ; JMP rel8 || EB cb || encoded[2]{eb 18}
00ddh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00e3h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00e6h movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
00eah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00ech movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00efh and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
00f1h movzx r8d,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c1}
00f5h mov [rax],r8w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 44 89 00}
00f9h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00fdh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<short>(in Block256<short> src, int index, bit value)
; set_gb256x16i~in_32i[257] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 10 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 10 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 50 8b 54 24 38 0f b7 d2 48 63 d2 48 0f bf 14 51 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 19 41 b8 01 00 00 00 41 d3 e0 49 0f bf c8 0b ca 48 0f bf c9 4c 0f bf c1 eb 19 41 b8 01 00 00 00 41 d3 e0 49 0f bf c8 f7 d1 48 0f bf c9 23 ca 4c 0f bf c1 66 44 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 10 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],10h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 10 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 50}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h movsx rdx,word ptr [rcx+rdx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 14 51}
00b7h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bbh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00beh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c1h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c4h je short 00dfh                          ; JE rel8 || 74 cb || encoded[2]{74 19}
00c6h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cch shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00cfh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
00d3h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00d5h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00d9h movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
00ddh jmp short 00f8h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
00dfh mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00e5h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00e8h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
00ech not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00eeh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00f2h and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
00f4h movsx r8,cx                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c1}
00f8h mov [rax],r8w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 44 89 00}
00fch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0100h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<uint>(in Block256<uint> src, int index, bit value)
; set_gb256x32u~in_32i[233] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 20 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 90 8b 54 24 38 0f b7 d2 48 63 d2 8b 14 91 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 0e 41 b8 01 00 00 00 41 d3 e0 44 0b c2 eb 0f 41 b8 01 00 00 00 41 d3 e0 41 f7 d0 44 23 c2 44 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h mov edx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 91}
00b5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00b9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00bfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c2h je short 00d2h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
00c4h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cah shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00cdh or r8d,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b c2}
00d0h jmp short 00e1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
00d2h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d8h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00dbh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00deh and r8d,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c2}
00e1h mov [rax],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 00}
00e4h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<int>(in Block256<int> src, int index, bit value)
; set_gb256x32i~in_32i[233] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 20 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 20 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 90 8b 54 24 38 0f b7 d2 48 63 d2 8b 14 91 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 0e 41 b8 01 00 00 00 41 d3 e0 44 0b c2 eb 0f 41 b8 01 00 00 00 41 d3 e0 41 f7 d0 44 23 c2 44 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 20 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 20 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h mov edx,[rcx+rdx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 14 91}
00b5h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00b9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bch movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00bfh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c2h je short 00d2h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
00c4h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cah shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00cdh or r8d,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b c2}
00d0h jmp short 00e1h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
00d2h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d8h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00dbh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
00deh and r8d,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c2}
00e1h mov [rax],r8d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{44 89 00}
00e4h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<ulong>(in Block256<ulong> src, int index, bit value)
; set_gb256x64u~in_32i[234] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 40 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 d0 8b 54 24 38 0f b7 d2 48 63 d2 48 8b 14 d1 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 0e 41 b8 01 00 00 00 49 d3 e0 4c 0b c2 eb 0f 41 b8 01 00 00 00 49 d3 e0 49 f7 d0 4c 23 c2 4c 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h mov rdx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 d1}
00b6h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bdh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c0h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c3h je short 00d3h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
00c5h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cbh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00ceh or r8,rdx                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b c2}
00d1h jmp short 00e2h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
00d3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d9h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00dch not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00dfh and r8,rdx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c2}
00e2h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
00e5h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00e9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<long>(in Block256<long> src, int index, bit value)
; set_gb256x64i~in_32i[234] = {48 83 ec 58 c5 f8 77 33 c0 48 89 44 24 38 48 89 44 24 40 48 89 44 24 48 48 89 44 24 50 44 8b ca c7 44 24 14 40 00 00 00 44 0f b6 54 24 14 41 8b c1 33 d2 41 f7 f2 89 44 24 10 44 0f b7 54 24 10 c7 44 24 0c 40 00 00 00 44 0f b6 5c 24 0c 41 8b c1 33 d2 41 f7 f3 89 54 24 08 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 08 66 44 89 54 24 18 66 89 44 24 1a c5 fa 6f 44 24 18 c5 fa 7f 44 24 38 c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 48 8b 09 48 8b c1 8b 54 24 38 0f b7 d2 48 63 d2 48 8d 04 d0 8b 54 24 38 0f b7 d2 48 63 d2 48 8b 14 d1 8b 4c 24 3a 0f b7 c9 0f b6 c9 45 85 c0 74 0e 41 b8 01 00 00 00 49 d3 e0 4c 0b c2 eb 0f 41 b8 01 00 00 00 49 d3 e0 49 f7 d0 4c 23 c2 4c 89 00 48 83 c4 58 c3}
; TermCode = RET_INTR
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
000eh mov [rsp+40h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 40}
0013h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
0018h mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+14h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 40 00 00 00}
0028h movzx r10d,byte ptr [rsp+14h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 14}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+10h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 10}
003ah movzx r10d,word ptr [rsp+10h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 10}
0040h mov dword ptr [rsp+0ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 40 00 00 00}
0048h movzx r11d,byte ptr [rsp+0ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 0c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+8],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 08}
005ah lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 08}
0071h mov [rsp+18h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 18}
0077h mov [rsp+1ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 1a}
007ch vmovdqu xmm0,xmmword ptr [rsp+18h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 18}
0082h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0088h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
008eh vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
00a8h mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h mov rdx,[rcx+rdx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 d1}
00b6h mov ecx,[rsp+3ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 3a}
00bah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00bdh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c0h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c3h je short 00d3h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
00c5h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00cbh shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00ceh or r8,rdx                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b c2}
00d1h jmp short 00e2h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
00d3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d9h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00dch not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
00dfh and r8,rdx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c2}
00e2h mov [rax],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 00}
00e5h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
00e9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<float>(in Block256<float> src, int index, bit value)
; set_gb256x32f~in_32i[274] = {48 83 ec 68 c5 f8 77 33 c0 48 89 44 24 48 48 89 44 24 50 48 89 44 24 58 48 89 44 24 60 44 8b ca c7 44 24 24 20 00 00 00 44 0f b6 54 24 24 41 8b c1 33 d2 41 f7 f2 89 44 24 20 44 0f b7 54 24 20 c7 44 24 1c 20 00 00 00 44 0f b6 5c 24 1c 41 8b c1 33 d2 41 f7 f3 89 54 24 18 48 8d 44 24 28 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 18 66 44 89 54 24 28 66 89 44 24 2a c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 c5 fa 6f 44 24 38 c5 fa 7f 44 24 58 48 8b 09 48 8b c1 8b 54 24 48 0f b7 d2 48 63 d2 48 8d 04 90 8b 54 24 48 0f b7 d2 48 63 d2 c5 fa 10 04 91 8b 4c 24 4a 0f b7 c9 0f b6 c9 45 85 c0 74 22 c5 fa 11 44 24 14 8b 54 24 14 41 b8 01 00 00 00 41 d3 e0 41 0b d0 89 54 24 10 c5 fa 10 44 24 10 eb 21 c5 fa 11 44 24 0c 48 8d 54 24 0c 41 b8 01 00 00 00 41 d3 e0 41 8b c8 f7 d1 21 0a c5 fa 10 44 24 0c c5 fa 11 00 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
000eh mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0013h mov [rsp+58h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 58}
0018h mov [rsp+60h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 60}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+24h],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 20 00 00 00}
0028h movzx r10d,byte ptr [rsp+24h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 24}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+20h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 20}
003ah movzx r10d,word ptr [rsp+20h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 20}
0040h mov dword ptr [rsp+1ch],20h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 1c 20 00 00 00}
0048h movzx r11d,byte ptr [rsp+1ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 1c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+18h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 18}
005ah lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+18h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 18}
0071h mov [rsp+28h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 28}
0077h mov [rsp+2ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 2a}
007ch vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0082h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0088h vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
008eh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
0094h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0097h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
009ah mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a4h lea rax,[rax+rdx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 90}
00a8h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h vmovss xmm0,dword ptr [rcx+rdx*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 91}
00b7h mov ecx,[rsp+4ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 4a}
00bbh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00beh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c1h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c4h je short 00e8h                          ; JE rel8 || 74 cb || encoded[2]{74 22}
00c6h vmovss dword ptr [rsp+14h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 14}
00cch mov edx,[rsp+14h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 14}
00d0h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d6h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00d9h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
00dch mov [rsp+10h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 10}
00e0h vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
00e6h jmp short 0109h                         ; JMP rel8 || EB cb || encoded[2]{eb 21}
00e8h vmovss dword ptr [rsp+0ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 0c}
00eeh lea rdx,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 0c}
00f3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00f9h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
00fch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00ffh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0101h and [rdx],ecx                           ; AND r/m32, r32 || o32 21 /r || encoded[2]{21 0a}
0103h vmovss xmm0,dword ptr [rsp+0ch]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 0c}
0109h vmovss dword ptr [rax],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[4]{c5 fa 11 00}
010dh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0111h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void set<double>(in Block256<double> src, int index, bit value)
; set_gb256x64f~in_32i[275] = {48 83 ec 68 c5 f8 77 33 c0 48 89 44 24 48 48 89 44 24 50 48 89 44 24 58 48 89 44 24 60 44 8b ca c7 44 24 24 40 00 00 00 44 0f b6 54 24 24 41 8b c1 33 d2 41 f7 f2 89 44 24 20 44 0f b7 54 24 20 c7 44 24 1c 40 00 00 00 44 0f b6 5c 24 1c 41 8b c1 33 d2 41 f7 f3 89 54 24 18 48 8d 44 24 28 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 0f b6 44 24 18 66 44 89 54 24 28 66 89 44 24 2a c5 fa 6f 44 24 28 c5 fa 7f 44 24 48 c5 fa 6f 44 24 38 c5 fa 7f 44 24 58 48 8b 01 8b 54 24 48 0f b7 d2 48 63 d2 48 8d 04 d0 48 8b 09 8b 54 24 48 0f b7 d2 48 63 d2 c5 fb 10 04 d1 8b 4c 24 4a 0f b7 c9 0f b6 c9 45 85 c0 74 24 c5 fb 11 44 24 10 48 8b 54 24 10 41 b8 01 00 00 00 49 d3 e0 49 0b d0 48 89 54 24 08 c5 fb 10 44 24 08 eb 20 c5 fb 11 04 24 48 8d 14 24 41 b8 01 00 00 00 49 d3 e0 49 8b c8 48 f7 d1 48 21 0a c5 fb 10 04 24 c5 fb 11 00 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+48h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 48}
000eh mov [rsp+50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 50}
0013h mov [rsp+58h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 58}
0018h mov [rsp+60h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 60}
001dh mov r9d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b ca}
0020h mov dword ptr [rsp+24h],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 24 40 00 00 00}
0028h movzx r10d,byte ptr [rsp+24h]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 54 24 24}
002eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0031h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0033h div r10d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f2}
0036h mov [rsp+20h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 20}
003ah movzx r10d,word ptr [rsp+20h]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[6]{44 0f b7 54 24 20}
0040h mov dword ptr [rsp+1ch],40h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 1c 40 00 00 00}
0048h movzx r11d,byte ptr [rsp+1ch]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[6]{44 0f b6 5c 24 1c}
004eh mov eax,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c1}
0051h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0053h div r11d                                ; DIV r/m32 || o32 F7 /6 || encoded[3]{41 f7 f3}
0056h mov [rsp+18h],edx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 18}
005ah lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
005fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0063h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0067h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
006ch movzx eax,byte ptr [rsp+18h]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 18}
0071h mov [rsp+28h],r10w                      ; MOV r/m16, r16 || o16 89 /r || encoded[6]{66 44 89 54 24 28}
0077h mov [rsp+2ah],ax                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 2a}
007ch vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0082h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0088h vmovdqu xmm0,xmmword ptr [rsp+38h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 38}
008eh vmovdqu xmmword ptr [rsp+58h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 58}
0094h mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
0097h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
009bh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
009eh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00a1h lea rax,[rax+rdx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 d0}
00a5h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
00a8h mov edx,[rsp+48h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 48}
00ach movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00afh movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
00b2h vmovsd xmm0,qword ptr [rcx+rdx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 d1}
00b7h mov ecx,[rsp+4ah]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 4c 24 4a}
00bbh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00beh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00c1h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
00c4h je short 00eah                          ; JE rel8 || 74 cb || encoded[2]{74 24}
00c6h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
00cch mov rdx,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 10}
00d1h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00d7h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00dah or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
00ddh mov [rsp+8],rdx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 54 24 08}
00e2h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
00e8h jmp short 010ah                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
00eah vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
00efh lea rdx,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 14 24}
00f3h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
00f9h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
00fch mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
00ffh not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
0102h and [rdx],rcx                           ; AND r/m64, r64 || REX.W 21 /r || encoded[3]{48 21 0a}
0105h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
010ah vmovsd qword ptr [rax],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 00}
010eh add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0112h ret                                     ; RET || C3 || encoded[1]{c3}
