------------------------------------------------------------------------------------------------------------------------
; sbyte between(sbyte src, byte k0, byte k1)
; between_8i_8u_8u[41] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 48 0f be d1 c4 e2 78 f7 c2 48 0f be c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movsx rdx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d1}
001fh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0024h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte between(byte src, byte k0, byte k1)
; between_8u_8u_8u[39] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 0f b6 d1 c4 e2 78 f7 c2 0f b6 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001eh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0023h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short between(short src, byte k0, byte k1)
; between_16i_8u_8u[41] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 48 0f bf d1 c4 e2 78 f7 c2 48 0f bf c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movsx rdx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d1}
001fh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0024h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort between(ushort src, byte k0, byte k1)
; between_16u_8u_8u[39] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 0f b7 d1 c4 e2 78 f7 c2 0f b7 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
001eh bextr eax,edx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c2}
0023h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint between(uint src, byte k0, byte k1)
; between_32u_8u_8u[33] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c4 e2 78 f7 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int between(int src, byte k0, byte k1)
; between_32i_8u_8u[33] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c4 e2 78 f7 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong between(ulong src, byte k0, byte k1)
; between_64u_8u_8u[33] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c4 e2 f8 f7 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long between(long src, byte k0, byte k1)
; between_64i_8u_8u[33] = {0f 1f 44 00 00 41 0f b6 c0 0f b6 d2 2b c2 ff c0 0f b6 c0 c1 e0 08 0b c2 0f b7 c0 c4 e2 f8 f7 c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ch sub eax,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b c2}
000eh inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0010h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0013h shl eax,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 08}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float between(float src, byte k0, byte k1)
; between_32f_8u_8u[55] = {50 c5 f8 77 90 c5 fa 11 44 24 04 8b 44 24 04 41 0f b6 c8 0f b6 d2 2b ca ff c1 0f b6 c9 c1 e1 08 0b d1 0f b7 d2 c4 e2 68 f7 c0 89 04 24 c5 fa 10 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
000bh mov eax,[rsp+4]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 04}
000fh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0013h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0016h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0018h inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001ah movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001dh shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0020h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0022h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0025h bextr eax,eax,edx                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 68 f7 c0}
002ah mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
002dh vmovss xmm0,dword ptr [rsp]             ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 04 24}
0032h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double between(double src, byte k0, byte k1)
; between_64f_8u_8u[61] = {48 83 ec 18 c5 f8 77 c5 fb 11 44 24 10 48 8b 44 24 10 41 0f b6 c8 0f b6 d2 2b ca ff c1 0f b6 c9 c1 e1 08 0b d1 0f b7 d2 c4 e2 e8 f7 c0 48 89 44 24 08 c5 fb 10 44 24 08 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 10}
000dh mov rax,[rsp+10h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 10}
0012h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
001bh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
001dh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0020h shl ecx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e1 08}
0023h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h bextr rax,rax,rdx                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 e8 f7 c0}
002dh mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0032h vmovsd xmm0,qword ptr [rsp+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 08}
0038h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
