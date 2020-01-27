------------------------------------------------------------------------------------------------------------------------
; byte xor1<byte>(byte a)
; xor1_g8u[17] = {0f 1f 44 00 00 0f b6 c1 35 ff 00 00 00 0f b6 c0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h xor eax,0ffh                            ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff 00 00 00}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte xor1<sbyte>(sbyte a)
; xor1_g8i[109] = {57 56 53 48 83 ec 30 be 57 00 00 00 bf 01 00 00 00 b9 78 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 6b f5 c9 5e 48 8b d8 b9 82 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 54 f5 c9 5e 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 b1 cf b5 ff 48 8b c8 e8 81 a8 ae 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,57h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 57 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,478h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 78 04 00 00}
0016h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 c9 5e}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,482h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 82 04 00 00}
002dh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 f5 c9 5e}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6e8e028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 cf b5 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 a8 ae 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; ushort xor1<ushort>(ushort a)
; xor1_g16u[27] = {50 0f 1f 40 00 0f b7 c1 35 ff ff 00 00 89 44 24 04 0f b7 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
000dh mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0011h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
0016h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short xor1<short>(short a)
; xor1_g16i[109] = {57 56 53 48 83 ec 30 be 57 00 00 00 bf 01 00 00 00 b9 78 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 bb f4 c9 5e 48 8b d8 b9 82 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 a4 f4 c9 5e 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 51 cf b5 ff 48 8b c8 e8 d1 a7 ae 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,57h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 57 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,478h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 78 04 00 00}
0016h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f4 c9 5e}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,482h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 82 04 00 00}
002dh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 f4 c9 5e}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6e8e078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 cf b5 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 a7 ae 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; uint xor1<uint>(uint a)
; xor1_g32u[10] = {0f 1f 44 00 00 8b c1 f7 d0 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int xor1<int>(int a)
; xor1_g32i[109] = {57 56 53 48 83 ec 30 be 57 00 00 00 bf 01 00 00 00 b9 78 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 1b f4 c9 5e 48 8b d8 b9 82 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 04 f4 c9 5e 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 f1 ce b5 ff 48 8b c8 e8 31 a7 ae 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,57h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 57 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,478h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 78 04 00 00}
0016h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f4 c9 5e}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,482h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 82 04 00 00}
002dh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 f4 c9 5e}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6e8e0b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ce b5 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 a7 ae 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; ulong xor1<ulong>(ulong a)
; xor1_g64u[12] = {0f 1f 44 00 00 48 8b c1 48 f7 d0 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long xor1<long>(long a)
; xor1_g64i[109] = {57 56 53 48 83 ec 30 be 57 00 00 00 bf 01 00 00 00 b9 78 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 7b f3 c9 5e 48 8b d8 b9 82 04 00 00 48 ba d0 a0 55 c6 f7 7f 00 00 e8 64 f3 c9 5e 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 91 ce b5 ff 48 8b c8 e8 91 a6 ae 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,57h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 57 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,478h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 78 04 00 00}
0016h mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b f3 c9 5e}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,482h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 82 04 00 00}
002dh mov rdx,7ff7c655a0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d0 a0 55 c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f3 c9 5e}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6e8e0f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ce b5 ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a6 ae 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
