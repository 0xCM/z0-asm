; BitMatrix<long> rnot<long>(in BitMatrix<long> A, in BitMatrix<long> B)
; bm~rnot__g64i[7ff7c6b57390h, 7ff7c6b573e8h][88] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b d9 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 20 e8 22 da ed ff 48 8b 0e 48 8d 54 24 20 48 8b 12 e8 22 da ed ff 48 8b fb 48 8d 74 24 20 e8 b5 ea 34 5f 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 02:54:45:097
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0014h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0017h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
001ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0020h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0024h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0029h call 7ff7c6a34de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 da ed ff}
002eh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0031h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0036h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
0039h call 7ff7c6a34df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 da ed ff}
003eh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0041h lea rsi,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 20}
0046h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ea 34 5f}
004bh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
004dh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0050h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0054h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
