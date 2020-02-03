------------------------------------------------------------------------------------------------------------------------
; byte f0d<byte>(byte a, byte b, byte c)
; f0d_g8u_8u_8u[43] = {0f 1f 44 00 00 0f b6 c1 f7 d0 0f b6 c0 41 0f b6 c8 81 f1 ff 00 00 00 0f b6 c9 0f b6 d2 0b d1 0f b6 d2 0f b6 c0 23 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000dh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0011h xor ecx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 00 00 00}
0017h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
001fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f0d<sbyte>(sbyte a, sbyte b, sbyte c)
; f0d_g8i_8i_8i[58] = {57 56 48 83 ec 28 8b f2 48 0f be c9 f7 d1 48 0f be f9 49 0f be c8 e8 e5 41 fe ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh movsx rdi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f9}
0012h movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0016h call 7ff7c733cd50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 41 fe ff}
001bh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001fh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0023h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0025h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0029h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
002dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f0d<ushort>(ushort a, ushort b, ushort c)
; f0d_g16u_16u_16u[53] = {50 0f 1f 40 00 0f b7 c1 f7 d0 0f b7 c0 41 0f b7 c8 81 f1 ff ff 00 00 89 4c 24 04 0f b7 4c 24 04 0f b7 d2 0b d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000dh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
0011h xor ecx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff ff 00 00}
0017h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
001bh movzx ecx,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 4c 24 04}
0020h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0023h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0025h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0028h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short f0d<short>(short a, short b, short c)
; f0d_g16i_16i_16i[58] = {57 56 48 83 ec 28 8b f2 48 0f bf c9 f7 d1 48 0f bf f9 49 0f bf c8 e8 b5 62 fe ff 48 0f bf c0 48 0f bf d6 0b c2 48 0f bf c0 48 0f bf d7 23 c2 48 0f bf c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh movsx rdi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f9}
0012h movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0016h call 7ff7c733eed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 62 fe ff}
001bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001fh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0023h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0025h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0029h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
002dh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0033h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0037h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0038h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0039h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f0d<uint>(uint a, uint b, uint c)
; f0d_g32u_32u_32u[19] = {0f 1f 44 00 00 8b c1 f7 d0 41 8b c8 f7 d1 0b d1 23 c2 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000eh or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
0010h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f0d<int>(int a, int b, int c)
; f0d_g32i_32i_32i[31] = {57 56 48 83 ec 28 8b f2 8b f9 f7 d7 41 8b c8 e8 ec 82 fe ff 0b c6 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
000ah not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
000ch mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
000fh call 7ff7c7340f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 82 fe ff}
0014h or eax,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c6}
0016h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f0d<ulong>(ulong a, ulong b, ulong c)
; f0d_g64u_64u_64u[24] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 49 8b c8 48 f7 d1 48 0b d1 48 23 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
000eh not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
0011h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f0d<long>(long a, long b, long c)
; f0d_g64i_64i_64i[36] = {57 56 48 83 ec 28 48 8b f2 48 8b f9 48 f7 d7 49 8b c8 e8 29 9f fe ff 48 0b c6 48 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0009h mov rdi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f9}
000ch not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
000fh mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
0012h call 7ff7c7342c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 9f fe ff}
0017h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
001ah and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
001dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0021h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0022h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
