; Span<byte> bitseq<ulong>(ulong src, Span<byte> dst, int offset)
; bitseq__0o_g8u_0o[7ff7c6e97510h, 7ff7c6e97557h][71] = {57 56 53 48 8b d9 49 8b 00 4d 63 c9 49 03 c1 45 33 c9 4d 63 d1 4c 03 d0 41 8b c9 4c 8b da 49 d3 eb 41 8b cb 83 e1 01 41 88 0a 41 ff c1 41 83 f9 40 7c df 48 8b fb 49 8b f0 e8 42 e9 00 5f 48 a5 48 8b c3 5b 5e 5f c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:758
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0006h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
0009h movsxd r9,r9d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c9}
000ch add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
0015h add r10,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d0}
0018h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001bh mov r11,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b da}
001eh shr r11,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 eb}
0021h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
0024h and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0027h mov [r10],cl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 0a}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{41 83 f9 40}
0031h jl short 0012h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0033h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0036h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0039h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 e9 00 5f}
003eh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0040h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0043h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
