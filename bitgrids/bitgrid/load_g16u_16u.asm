------------------------------------------------------------------------------------------------------------------------
; BitGrid<byte> load<byte>(in Block256<byte> src, ushort rows, ushort cols)
; load_gb256x8u(in)_16u_16u[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 49 f9 b5 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f9 b5 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ushort> load<ushort>(in Block256<ushort> src, ushort rows, ushort cols)
; load_gb256x16u(in)_16u_16u[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 a9 f8 b5 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f8 b5 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<uint> load<uint>(in Block256<uint> src, ushort rows, ushort cols)
; load_gb256x32u(in)_16u_16u[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 09 f8 b5 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f8 b5 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ulong> load<ulong>(in Block256<ulong> src, ushort rows, ushort cols)
; load_gb256x64u(in)_16u_16u[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 69 f7 b5 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff825ea5e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f7 b5 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
