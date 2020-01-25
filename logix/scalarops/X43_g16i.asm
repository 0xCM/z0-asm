; Int16 f43<Int16>(Int16 a, Int16 b, Int16 c)
; X43_g16i[7ff7c6b93640h, 7ff7c6b93684h][68] = {57 56 48 83 ec 28 8b f1 48 0f bf ce 49 0f bf c0 23 c8 48 0f bf c9 f7 d1 48 0f bf f9 48 0f bf ca e8 6b e1 fd ff 48 0f bf c0 48 0f bf d6 33 c2 48 0f bf c0 48 0f bf d7 23 c2 48 0f bf c0 48 83 c4 28 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 02:54:49:059
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
0020h call 7ff7c6b717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e1 fd ff}
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
