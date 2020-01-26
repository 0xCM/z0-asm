------------------------------------------------------------------------------------------------------------------------
; int width<byte>(byte src)
; width_g8u[21] = {0f 1f 44 00 00 0f b6 c1 f3 0f bd c0 83 c0 e8 f7 d8 83 c0 08 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0ffffffe8h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 e8}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 08}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width<sbyte>(sbyte src)
; width_g8i[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 8b 0a 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 74 0a 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 21 3d ce ff 48 8b c8 e8 a1 bd f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0a 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 0a 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ba3878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 3d ce ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 bd f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; int width<ushort>(ushort src)
; width_g16u[21] = {0f 1f 44 00 00 0f b7 c1 f3 0f bd c0 83 c0 f0 f7 d8 83 c0 10 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
000ch add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
000fh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
0011h add eax,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 10}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width<Int16>(Int16 src)
; width_g16i[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 db 09 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 c4 09 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 11 5f ce ff 48 8b c8 e8 f1 bc f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 09 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 09 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ba5b18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 5f ce ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 bc f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; int width<uint>(uint src)
; width_g32u[17] = {0f 1f 44 00 00 33 c0 f3 0f bd c1 f7 d8 83 c0 20 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt eax,ecx                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c1}
000bh neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000dh add eax,20h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 20}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width<int>(int src)
; width_g32i[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 2b 09 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 14 09 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 19 7f ce ff 48 8b c8 e8 41 bc f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 09 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 09 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ba7bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 7f ce ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 bc f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; int width<ulong>(ulong src)
; width_g64u[18] = {0f 1f 44 00 00 33 c0 f3 48 0f bd c1 f7 d8 83 c0 40 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h lzcnt rax,rcx                           ; LZCNT r64, r/m64 || F3 REX.W 0F BD /r || encoded[5]{f3 48 0f bd c1}
000ch neg eax                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d8}
000eh add eax,40h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 40}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int width<long>(long src)
; width_g64i[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 7b 08 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 64 08 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 09 9b ce ff 48 8b c8 e8 91 bb f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 08 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 08 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ba9870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9b ce ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bb f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; int width<float>(float src)
; width_g32f[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 fb 07 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 e4 07 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 c1 f9 ff ff 48 8b c8 e8 11 bb f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 07 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 07 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ebf7a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f9 ff ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 bb f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
------------------------------------------------------------------------------------------------------------------------
; int width<double>(double src)
; width_g64f[109] = {57 56 53 48 83 ec 30 be 37 00 00 00 bf 01 00 00 00 b9 3b 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 7b 07 11 5f 48 8b d8 b9 47 0c 00 00 48 ba 70 18 5f c6 f7 7f 00 00 e8 64 07 11 5f 48 8b d0 48 8d 4c 24 28 40 88 39 89 71 04 48 8b cb 4c 8b 44 24 28 e8 61 f9 ff ff 48 8b c8 e8 91 ba f5 5e cc 19 07 04 00 07 52 03 30 02 60 01 70 40}
; Capture completion code = ZEDx6_000
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 37 00 00 00}
000ch mov edi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bf 01 00 00 00}
0011h mov ecx,0c3bh                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 3b 0c 00 00}
0016h mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0020h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 07 11 5f}
0025h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0028h mov ecx,0c47h                           ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 47 0c 00 00}
002dh mov rdx,7ff7c65f1870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 70 18 5f c6 f7 7f 00 00}
0037h call 7ff825fd05b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 07 11 5f}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h mov [rcx],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 39}
0047h mov [rcx+4],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 71 04}
004ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
004dh mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
0052h call 7ff7c6ebf7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f9 ff ff}
0057h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
005ah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 ba f5 5e}
005fh int 3                                   ; INT3 || CC || encoded[1]{cc}
0060h sbb [rdi],eax                           ; SBB r/m32, r32 || o32 19 /r || encoded[2]{19 07}
0062h add al,0                                ; ADD AL, imm8 || 04 ib || encoded[2]{04 00}
0064h (bad)                                   ; <invalid> || <invalid> || encoded[2]{07 52}
0066h add esi,[rax]                           ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 30}
0068h add ah,[rax+1]                          ; ADD r8, r/m8 || 02 /r || encoded[3]{02 60 01}
006bh jo short 00adh                          ; JO rel8 || 70 cb || encoded[2]{70 40}
