------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(ShiftOpKind:byte kind, byte a, byte count)
; eval_g8u_8u_8u[94] = {57 56 53 48 83 ec 20 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 10 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 75 7b 0f b6 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 08 d3 e0 41 0b c1 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000dh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0010h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0014h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0016h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0019h lea rcx,[rip+110h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 10 01 00 00}
0020h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0024h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002bh add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 00b1h                         ; JNE rel8 || 75 cb || encoded[2]{75 7b}
0036h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0039h movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
003dh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0040h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0043h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0046h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0049h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
004bh add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
004eh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0050h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0053h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(ShiftOpKind:byte kind, ushort a, byte count)
; eval_g8u_16u_8u[94] = {57 56 53 48 83 ec 20 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 10 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 75 7b 0f b7 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 10 d3 e0 41 0b c1 0f b7 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000dh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0010h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0014h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0016h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
0019h lea rcx,[rip+110h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 10 01 00 00}
0020h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0024h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002bh add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002eh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 00b1h                         ; JNE rel8 || 75 cb || encoded[2]{75 7b}
0036h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0039h movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
003dh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0040h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0043h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0046h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0049h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
004bh add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
004eh shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0050h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0053h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0056h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(ShiftOpKind:byte kind, uint a, byte count)
; eval_g8u_32u_8u[69] = {57 56 53 48 83 ec 20 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 d8 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 40 41 0f b6 c8 d3 ca 8b c2 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000dh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0010h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0014h ja short 002fh                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0016h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0019h lea rax,[rip+0d8h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 d8 00 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002ah add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0033h jne short 0075h                         ; JNE rel8 || 75 cb || encoded[2]{75 40}
0035h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0039h ror edx,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 ca}
003bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0041h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
; eval_g8u_64u_8u[71] = {57 56 53 48 83 ec 20 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 e0 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 48 41 0f b6 c8 48 d3 ca 48 8b c2 48 83 c4 20 5b 5e 5f c3}
; TermCode = ZEDx7_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000dh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0010h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0014h ja short 002fh                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0016h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
0019h lea rax,[rip+0e0h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e0 00 00 00}
0020h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0023h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002ah add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002dh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
002fh cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0033h jne short 007dh                         ; JNE rel8 || 75 cb || encoded[2]{75 48}
0035h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
0039h ror rdx,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 ca}
003ch mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003fh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0043h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
