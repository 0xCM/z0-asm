; BitMatrix<int> select<int>(in BitMatrix<int> A, in BitMatrix<int> B, in BitMatrix<int> C)
; bm~select__g32i[7ff7c6b5b8d0h, 7ff7c6b5b937h][103] = {57 56 55 53 48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 28 48 8b d9 48 8b f2 49 8b f8 49 8b e9 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 e8 6b 88 ed ff 48 8b 0e 48 8b 17 4c 8b 45 00 4c 8d 4c 24 28 4d 8b 09 e8 9c f9 ff ff 48 8b fb 48 8d 74 24 28 e8 67 a5 34 5f 48 a5 48 8b c3 48 83 c4 38 5b 5d 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:45:330
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0008h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000dh mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0012h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0015h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0018h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
001bh mov rbp,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b e9}
001eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0023h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0027h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
002bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0030h call 7ff7c6a34170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 88 ed ff}
0035h mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0038h mov rdx,[rdi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 17}
003bh mov r8,[rbp]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4c 8b 45 00}
003fh lea r9,[rsp+28h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 28}
0044h mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0047h call 7ff7c6b5b2b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c f9 ff ff}
004ch mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
004fh lea rsi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 28}
0054h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a5 34 5f}
0059h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
005bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
005eh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0062h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0063h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0064h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0065h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0066h ret                                     ; RET || C3 || encoded[1]{c3}
