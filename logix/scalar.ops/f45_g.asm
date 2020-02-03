------------------------------------------------------------------------------------------------------------------------
; byte f45<byte>(byte a, byte b, byte c)
; f45_g8u_8u_8u[43] = {0f 1f 44 00 00 41 0f b6 c0 f7 d0 0f b6 c0 0f b6 c9 81 f1 ff 00 00 00 0f b6 c9 0f b6 d2 0b d1 0f b6 d2 0f b6 c0 23 c2 0f b6 c0 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
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
; sbyte f45<sbyte>(sbyte a, sbyte b, sbyte c)
; f45_g8i_8i_8i[58] = {57 56 48 83 ec 28 8b f2 49 0f be c0 f7 d0 48 0f be f8 48 0f be c9 e8 75 ad fe ff 48 0f be c0 48 0f be d6 0b c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movsx rdi,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f8}
0012h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0016h call 7ff7c737c070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ad fe ff}
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
; ushort f45<ushort>(ushort a, ushort b, ushort c)
; f45_g16u_16u_16u[53] = {50 0f 1f 40 00 41 0f b7 c0 f7 d0 0f b7 c0 0f b7 c9 81 f1 ff ff 00 00 89 4c 24 04 0f b7 4c 24 04 0f b7 d2 0b d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0009h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
000eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
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
; short f45<short>(short a, short b, short c)
; f45_g16i_16i_16i[58] = {57 56 48 83 ec 28 8b f2 49 0f bf c0 f7 d0 48 0f bf f8 48 0f bf c9 e8 45 ce fe ff 48 0f bf c0 48 0f bf d6 0b c2 48 0f bf c0 48 0f bf d7 23 c2 48 0f bf c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
000ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000eh movsx rdi,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f8}
0012h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0016h call 7ff7c737e1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 ce fe ff}
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
; uint f45<uint>(uint a, uint b, uint c)
; f45_g32u_32u_32u[17] = {0f 1f 44 00 00 41 8b c0 f7 d0 f7 d1 0b d1 23 c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0008h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000ah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
000ch or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f45<int>(int a, int b, int c)
; f45_g32i_32i_32i[29] = {57 56 48 83 ec 28 8b f2 41 8b f8 f7 d7 e8 7e ee fe ff 0b c6 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0008h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000bh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
000dh call 7ff7c73802b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e ee fe ff}
0012h or eax,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c6}
0014h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
0016h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f45<ulong>(ulong a, ulong b, ulong c)
; f45_g64u_64u_64u[21] = {0f 1f 44 00 00 49 8b c0 48 f7 d0 48 f7 d1 48 0b d1 48 23 c2 c3}
; TermCode = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
000eh or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
0011h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f45<long>(long a, long b, long c)
; f45_g64i_64i_64i[33] = {57 56 48 83 ec 28 48 8b f2 49 8b f8 48 f7 d7 e8 bc 0a ff ff 48 0b c6 48 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0009h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000ch not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
000fh call 7ff7c7381f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 0a ff ff}
0014h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
0017h and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
