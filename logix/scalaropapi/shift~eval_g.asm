------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(ShiftOpKind:byte kind, byte a, byte count)
; shift~eval_g8u[100] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 1f 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 0f 85 7f 00 00 00 0f b6 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 08 d3 e0 41 0b c1 0f b6 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0031h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0017h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
001ah lea rcx,[rip+11fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 1f 01 00 00}
0021h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0025h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0035h jne near ptr 00bah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7f 00 00 00}
003bh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003eh movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
0042h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0045h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0048h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
004bh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004eh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0050h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0053h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0055h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0058h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0060h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(ShiftOpKind:byte kind, ushort a, byte count)
; shift~eval_g8u[100] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 1a 45 8b d1 48 8d 0d 1f 01 00 00 42 8b 0c 91 48 8d 05 de ff ff ff 48 03 c8 ff e1 40 80 fe 08 0f 85 7f 00 00 00 0f b7 c2 45 0f b6 d0 41 8b ca 44 8b c8 41 d3 f9 41 8b ca f7 d9 83 c1 10 d3 e0 41 0b c1 0f b7 c0 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0031h                          ; JA rel8 || 77 cb || encoded[2]{77 1a}
0017h mov r10d,r9d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b d1}
001ah lea rcx,[rip+11fh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 1f 01 00 00}
0021h mov ecx,[rcx+r10*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{42 8b 0c 91}
0025h lea rax,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 de ff ff ff}
002ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
002fh jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0031h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0035h jne near ptr 00bah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 7f 00 00 00}
003bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003eh movzx r10d,r8b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d0}
0042h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
0045h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
0048h sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
004bh mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004eh neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0050h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0053h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0055h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0058h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
005bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
005fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0060h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(ShiftOpKind:byte kind, uint a, byte count)
; shift~eval_g8u[71] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 df 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 44 41 0f b6 c8 d3 ca 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah lea rax,[rip+0dfh]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 df 00 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002bh add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 007ah                         ; JNE rel8 || 75 cb || encoded[2]{75 44}
0036h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003ah ror edx,cl                              ; ROR r/m32, CL || o32 D3 /1 || encoded[2]{d3 ca}
003ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003eh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0042h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0043h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
; shift~eval_g8u[73] = {57 56 55 53 48 83 ec 28 8b f1 44 0f b6 ce 41 ff c9 41 83 f9 03 77 19 41 8b c9 48 8d 05 e7 00 00 00 8b 04 88 4c 8d 0d df ff ff ff 49 03 c1 ff e0 40 80 fe 08 75 4c 41 0f b6 c8 48 d3 ca 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah movzx r9d,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 ce}
000eh dec r9d                                 ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff c9}
0011h cmp r9d,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 03}
0015h ja short 0030h                          ; JA rel8 || 77 cb || encoded[2]{77 19}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah lea rax,[rip+0e7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e7 00 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r9,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d df ff ff ff}
002bh add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h cmp sil,8                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 08}
0034h jne short 0082h                         ; JNE rel8 || 75 cb || encoded[2]{75 4c}
0036h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003ah ror rdx,cl                              ; ROR r/m64, CL || REX.W D3 /1 || encoded[3]{48 d3 ca}
003dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0040h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
