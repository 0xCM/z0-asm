------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(UnaryBitLogicKind:byte kind, byte a)
; ubl~eval_g8u[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1d 0f b6 c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 1d}
0016h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(UnaryBitLogicKind:byte kind, sbyte a)
; ubl~eval_g8u[35] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 13 40 80 fe 02 75 20 48 0f be c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0036h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0016h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(UnaryBitLogicKind:byte kind, ushort a)
; ubl~eval_g8u[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1d 0f b7 c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 1d}
0016h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 eval<Int16>(UnaryBitLogicKind:byte kind, Int16 a)
; ubl~eval_g8u[35] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 13 40 80 fe 02 75 20 48 0f bf c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0023h                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0036h                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
0016h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
001ah add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001fh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0020h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0021h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0022h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(UnaryBitLogicKind:byte kind, uint a)
; ubl~eval_g8u[33] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 11 40 80 fe 02 75 18 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0021h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 18}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(UnaryBitLogicKind:byte kind, int a)
; ubl~eval_g8u[33] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 11 40 80 fe 02 75 18 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0021h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 002eh                         ; JNE rel8 || 75 cb || encoded[2]{75 18}
0016h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0018h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(UnaryBitLogicKind:byte kind, ulong a)
; ubl~eval_g8u[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1b 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 1b}
0016h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(UnaryBitLogicKind:byte kind, long a)
; ubl~eval_g8u[34] = {57 56 55 53 48 83 ec 28 8b f1 40 80 fe 01 74 12 40 80 fe 02 75 1b 48 8b c2 48 83 c4 28 5b 5d 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0008h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
000ah cmp sil,1                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 01}
000eh je short 0022h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0010h cmp sil,2                               ; CMP r/m8, imm8 || 80 /7 ib || encoded[4]{40 80 fe 02}
0014h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 1b}
0016h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0019h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
001dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
001eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
