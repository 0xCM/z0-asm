------------------------------------------------------------------------------------------------------------------------
; byte f43<byte>(byte a, byte b, byte c)
; X43_g8u[52] = {0f 1f 44 00 00 0f b6 c1 45 0f b6 c0 41 23 c0 0f b6 c0 f7 d0 0f b6 c0 0f b6 d2 81 f2 ff 00 00 00 0f b6 d2 0f b6 c9 33 d1 0f b6 d2 0f b6 c0 23 c2 0f b6 c0 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
000ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0012h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0014h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah xor edx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff 00 00 00}
0020h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0023h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0026h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0028h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
002bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002eh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0030h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte f43<sbyte>(sbyte a, sbyte b, sbyte c)
; X43_g8i[68] = {57 56 48 83 ec 28 8b f1 48 0f be ce 49 0f be c0 23 c8 48 0f be c9 f7 d1 48 0f be f9 48 0f be ca e8 33 ab fe ff 48 0f be c0 48 0f be d6 33 c2 48 0f be c0 48 0f be d7 23 c2 48 0f be c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
000ch movsx rax,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c0}
0010h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0012h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0016h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0018h movsx rdi,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f9}
001ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0020h call 7ff7c71d5778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ab fe ff}
0025h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0029h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
002dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
0037h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0039h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
003dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort f43<ushort>(ushort a, ushort b, ushort c)
; X43_g16u[62] = {50 0f 1f 40 00 0f b7 c1 45 0f b7 c0 41 23 c0 0f b7 c0 f7 d0 0f b7 c0 0f b7 d2 81 f2 ff ff 00 00 89 54 24 04 0f b7 54 24 04 0f b7 c9 33 d1 0f b7 d2 0f b7 c0 23 c2 0f b7 c0 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
000ch and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
000fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0012h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0014h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0017h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
001ah xor edx,0ffffh                          ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff ff 00 00}
0020h mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
0024h movzx edx,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 54 24 04}
0029h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
002ch xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
002eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0031h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0034h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0036h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0039h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short f43<short>(short a, short b, short c)
; X43_g16i[68] = {57 56 48 83 ec 28 8b f1 48 0f bf ce 49 0f bf c0 23 c8 48 0f bf c9 f7 d1 48 0f bf f9 48 0f bf ca e8 fb cb fe ff 48 0f bf c0 48 0f bf d6 33 c2 48 0f bf c0 48 0f bf d7 23 c2 48 0f bf c0 48 83 c4 28 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
000ch movsx rax,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c0}
0010h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0012h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0016h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0018h movsx rdi,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f9}
001ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0020h call 7ff7c71d7900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb cb fe ff}
0025h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0029h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
002dh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
002fh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0033h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
0037h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0039h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
003dh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint f43<uint>(uint a, uint b, uint c)
; X43_g32u[20] = {0f 1f 44 00 00 44 23 c1 41 8b c0 f7 d0 f7 d2 33 d1 23 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8d,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c1}
0008h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
000bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
000dh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
000fh xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0011h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int f43<int>(int a, int b, int c)
; X43_g32i[34] = {57 56 48 83 ec 28 8b f1 44 23 c6 41 8b f8 f7 d7 8b ca e8 41 ec fe ff 33 c6 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h and r8d,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{44 23 c6}
000bh mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
000eh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h call 7ff7c71d99c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ec fe ff}
0017h xor eax,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c6}
0019h and eax,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c7}
001bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong f43<ulong>(ulong a, ulong b, ulong c)
; X43_g64u[24] = {0f 1f 44 00 00 4c 23 c1 49 8b c0 48 f7 d0 48 f7 d2 48 33 d1 48 23 c2 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h and r8,rcx                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c1}
0008h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
000bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000eh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0011h xor rdx,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 d1}
0014h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long f43<long>(long a, long b, long c)
; X43_g64i[39] = {57 56 48 83 ec 28 48 8b f1 4c 23 c6 49 8b f8 48 f7 d7 48 8b ca e8 76 08 ff ff 48 33 c6 48 23 c7 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0009h and r8,rsi                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{4c 23 c6}
000ch mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000fh not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
0012h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0015h call 7ff7c71db670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 08 ff ff}
001ah xor rax,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c6}
001dh and rax,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c7}
0020h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0024h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0025h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0026h ret                                     ; RET || C3 || encoded[1]{c3}
