------------------------------------------------------------------------------------------------------------------------
; bit eval(UnaryBitLogicKind:byte kind, bit a)
; ubl~eval[50] = {57 56 48 83 ec 28 8b f1 40 0f b6 c6 83 f8 03 77 44 8b c0 48 8d 0d 96 00 00 00 8b 0c 81 4c 8d 05 e4 ff ff ff 49 03 c8 ff e1 33 c0 48 83 c4 28 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0008h movzx eax,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 c6}
000ch cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
000fh ja short 0055h                          ; JA rel8 || 77 cb || encoded[2]{77 44}
0011h mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0013h lea rcx,[rip+96h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 0d 96 00 00 00}
001ah mov ecx,[rcx+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 0c 81}
001dh lea r8,[rip-1ch]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 e4 ff ff ff}
0024h add rcx,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c8}
0027h jmp rcx                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e1}
0029h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002bh add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0030h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
