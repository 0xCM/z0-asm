------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> true<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff 00 00 00 e8 13 ab 0a ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
0038h call 7ff7c639c490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ab 0a ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<sbyte> true<sbyte>(in BitMatrix<sbyte> A, in BitMatrix<sbyte> B, ref BitMatrix<sbyte> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba 7f 00 00 00 e8 b3 14 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 7f 00 00 00}
0038h call 7ff7c6cd2e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 14 9e ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> true<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff ff 00 00 e8 73 1e 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffffh                          ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff 00 00}
0038h call 7ff7c6cd38b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 1e 9e ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<short> true<short>(in BitMatrix<short> A, in BitMatrix<short> B, ref BitMatrix<short> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff 7f 00 00 e8 83 1f 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,7fffh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 7f 00 00}
0038h call 7ff7c6cd3a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 1f 9e ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> true<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff ff ff ff e8 5b 22 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,0ffffffffh                      ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff ff}
0038h call 7ff7c6cd3d58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 22 9e ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<int> true<int>(in BitMatrix<int> A, in BitMatrix<int> B, ref BitMatrix<int> Z)
; bm~true~byref_g[70] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 ba ff ff ff 7f e8 5b 91 44 ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov edx,7fffffffh                       ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff ff ff 7f}
0038h call 7ff7c673acb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 91 44 ff}
003dh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0040h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> true<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
; bm~true~byref_g[75] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 48 ba ff ff ff ff ff ff ff ff e8 a6 22 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov rdx,0ffffffffffffffffh              ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff ff}
003dh call 7ff7c6cd3e68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 22 9e ff}
0042h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0045h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<long> true<long>(in BitMatrix<long> A, in BitMatrix<long> B, ref BitMatrix<long> Z)
; bm~true~byref_g[75] = {56 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 49 8b f0 48 8d 4c 24 20 c5 f8 57 c0 c5 fa 7f 01 48 8b 0e 48 89 4c 24 20 8b 4e 08 89 4c 24 28 48 8d 4c 24 20 48 ba ff ff ff ff ff ff ff 7f e8 a6 23 9e ff 48 8b c6 48 83 c4 30 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
000fh mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
0012h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0017h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
001fh mov rcx,[rsi]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 0e}
0022h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
0027h mov ecx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 4e 08}
002ah mov [rsp+28h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 28}
002eh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0033h mov rdx,7fffffffffffffffh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba ff ff ff ff ff ff ff 7f}
003dh call 7ff7c6cd3fd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 23 9e ff}
0042h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0045h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
