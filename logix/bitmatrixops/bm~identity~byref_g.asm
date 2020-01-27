------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<byte> identity<byte>(in BitMatrix<byte> A, ref BitMatrix<byte> Z)
; bm~identity~byref_g[97] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 48 8d 4c 24 30 48 8b 11 8b 49 08 4c 8d 44 24 20 49 8b 00 45 8b 40 08 41 3b c8 77 14 4c 63 c1 48 8b c8 e8 4e 8c a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 b8 26 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0030h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0033h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
003eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0042h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0045h ja short 005bh                          ; JA rel8 || 77 cb || encoded[2]{77 14}
0047h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 8c a0 4f}
0052h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0055h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
005bh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 26 09 ff}
0060h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<sbyte> identity<sbyte>(in BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
; bm~identity~byref_g[97] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 48 8d 4c 24 30 48 8b 11 8b 49 08 4c 8d 44 24 20 49 8b 00 45 8b 40 08 41 3b c8 77 14 4c 63 c1 48 8b c8 e8 ce 8b a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 38 26 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea rcx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 30}
0030h mov rdx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 11}
0033h mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0036h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
003bh mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
003eh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0042h cmp ecx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b c8}
0045h ja short 005bh                          ; JA rel8 || 77 cb || encoded[2]{77 14}
0047h movsxd r8,ecx                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 c1}
004ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004dh call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 8b a0 4f}
0052h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0055h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
005bh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 26 09 ff}
0060h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ushort> identity<ushort>(in BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
; bm~identity~byref_g[100] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 17 48 8b c8 4d 63 c0 49 d1 e0 e8 4b 8b a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 b5 25 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005eh                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0050h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 8b a0 4f}
0055h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0058h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
005eh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 25 09 ff}
0063h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<short> identity<short>(in BitMatrix<short> A, ref BitMatrix<short> Z)
; bm~identity~byref_g[100] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 17 48 8b c8 4d 63 c0 49 d1 e0 e8 cb 8a a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 35 25 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005eh                          ; JA rel8 || 77 cb || encoded[2]{77 17}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,1                                ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{49 d1 e0}
0050h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 8a a0 4f}
0055h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0058h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh ret                                     ; RET || C3 || encoded[1]{c3}
005eh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 25 09 ff}
0063h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<uint> identity<uint>(in BitMatrix<uint> A, ref BitMatrix<uint> Z)
; bm~identity~byref_g[101] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 18 48 8b c8 4d 63 c0 49 c1 e0 02 e8 4a 8a a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 b4 24 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 8a a0 4f}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 24 09 ff}
0064h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<int> identity<int>(in BitMatrix<int> A, ref BitMatrix<int> Z)
; bm~identity~byref_g[101] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 18 48 8b c8 4d 63 c0 49 c1 e0 02 e8 ca 89 a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 34 24 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,2                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 02}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 89 a0 4f}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 24 09 ff}
0064h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<ulong> identity<ulong>(in BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
; bm~identity~byref_g[101] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 18 48 8b c8 4d 63 c0 49 c1 e0 03 e8 4a 89 a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 b4 23 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 89 a0 4f}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 23 09 ff}
0064h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; ref BitMatrix<long> identity<long>(in BitMatrix<long> A, ref BitMatrix<long> Z)
; bm~identity~byref_g[101] = {56 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 8b f2 c5 fa 6f 06 c5 fa 7f 44 24 20 c5 fa 6f 01 c5 fa 7f 44 24 30 4c 8d 44 24 30 49 8b 10 45 8b 40 08 48 8d 4c 24 20 48 8b 01 8b 49 08 44 3b c1 77 18 48 8b c8 4d 63 c0 49 c1 e0 03 e8 ca 88 a0 4f 48 8b c6 48 83 c4 40 5e c3 e8 34 23 09 ff cc}
; Capture completion code = INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ah mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000fh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0014h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0017h vmovdqu xmm0,xmmword ptr [rsi]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 06}
001bh vmovdqu xmmword ptr [rsp+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 20}
0021h vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0025h vmovdqu xmmword ptr [rsp+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 30}
002bh lea r8,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 30}
0030h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
0033h mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
0037h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
003ch mov rax,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 01}
003fh mov ecx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 49 08}
0042h cmp r8d,ecx                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c1}
0045h ja short 005fh                          ; JA rel8 || 77 cb || encoded[2]{77 18}
0047h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
004ah movsxd r8,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c0}
004dh shl r8,3                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 03}
0051h call 7ff816cf8f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 88 a0 4f}
0056h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0059h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
005dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
005fh call 7ff7c63829c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 23 09 ff}
0064h int 3                                   ; INT3 || CC || encoded[1]{cc}
