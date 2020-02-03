------------------------------------------------------------------------------------------------------------------------
; void for_min_max(int i0, int i1, Action<int> f)
; for_min_max_32i_32i[44] = {57 56 53 48 83 ec 20 8b f2 49 8b f8 8b d9 3b de 7d 12 48 8b c7 48 8b 48 08 8b d3 ff 50 18 ff c3 3b de 7c ee 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
0009h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
000ch mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
000eh cmp ebx,esi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b de}
0010h jge short 0024h                         ; JGE rel8 || 7D cb || encoded[2]{7d 12}
0012h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0015h mov rcx,[rax+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 48 08}
0019h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
001bh call qword ptr [rax+18h]                ; CALL r/m64 || FF /2 || encoded[3]{ff 50 18}
001eh inc ebx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c3}
0020h cmp ebx,esi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b de}
0022h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c ee}
0024h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0028h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0029h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
002ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int for_min_max()
; for_min_max_[98] = {57 56 48 83 ec 28 48 b9 a8 c4 7a c7 f7 7f 00 00 e8 bb 7c b4 5e 48 8b f0 33 c9 89 4e 08 48 b9 e0 62 de c6 f7 7f 00 00 e8 a4 7c b4 5e 48 8b f8 48 8d 4f 08 48 8b d6 e8 d5 6d b4 5e 49 b8 a0 ee 35 c7 f7 7f 00 00 4c 89 47 18 4c 8b c7 33 c9 ba 08 00 00 00 e8 58 ff ff ff 8b 46 08 48 83 c4 28 5e 5f c3}
; TermCode = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov rcx,7ff7c77ac4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c4 7a c7 f7 7f 00 00}
0010h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 7c b4 5e}
0015h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0018h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001ah mov [rsi+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 4e 08}
001dh mov rcx,7ff7c6de62e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 62 de c6 f7 7f 00 00}
0027h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 7c b4 5e}
002ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
002fh lea rcx,[rdi+8]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4f 08}
0033h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0036h call 7ff825ea5df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 6d b4 5e}
003bh mov r8,7ff7c735eea0h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 b8 a0 ee 35 c7 f7 7f 00 00}
0045h mov [rdi+18h],r8                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 47 18}
0049h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
004ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004eh mov edx,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 08 00 00 00}
0053h call 7ff7c735ef90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 ff ff ff}
0058h mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0060h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
