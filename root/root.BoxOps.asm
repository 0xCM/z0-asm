------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<byte>(byte src)
; number_g[8u](8u)[32] = {56 48 83 ec 20 8b f1 48 b9 58 77 36 c6 f7 7f 00 00 e8 ba 75 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 75 b0 5e}
0016h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
001ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<sbyte>(sbyte src)
; number_g[8i](8i)[32] = {56 48 83 ec 20 8b f1 48 b9 68 6f 36 c6 f7 7f 00 00 e8 7a 75 b0 5e 40 88 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 75 b0 5e}
0016h mov [rax+8],sil                         ; MOV r/m8, r8 || 88 /r || encoded[4]{40 88 70 08}
001ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<ushort>(ushort src)
; number_g[16u](16u)[32] = {56 48 83 ec 20 8b f1 48 b9 38 87 36 c6 f7 7f 00 00 e8 3a 75 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 75 b0 5e}
0016h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
001ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<short>(short src)
; number_g[16i](16i)[32] = {56 48 83 ec 20 8b f1 48 b9 48 7f 36 c6 f7 7f 00 00 e8 fa 74 b0 5e 66 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 74 b0 5e}
0016h mov [rax+8],si                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 70 08}
001ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<uint>(uint src)
; number_g[32u](32u)[31] = {56 48 83 ec 20 8b f1 48 b9 d8 96 36 c6 f7 7f 00 00 e8 ba 70 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 70 b0 5e}
0016h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<int>(int src)
; number_g[32i](32i)[31] = {56 48 83 ec 20 8b f1 48 b9 08 8f 36 c6 f7 7f 00 00 e8 7a 70 b0 5e 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0007h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0011h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 70 b0 5e}
0016h mov [rax+8],esi                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 70 08}
0019h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<ulong>(ulong src)
; number_g[64u](64u)[33] = {56 48 83 ec 20 48 8b f1 48 b9 78 a6 36 c6 f7 7f 00 00 e8 39 70 b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0012h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 70 b0 5e}
0017h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
001bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<long>(long src)
; number_g[64i](64i)[33] = {56 48 83 ec 20 48 8b f1 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 f9 6f b0 5e 48 89 70 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0012h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 6f b0 5e}
0017h mov [rax+8],rsi                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 70 08}
001bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<float>(float src)
; number_g[32f](32f)[44] = {48 83 ec 28 c5 f8 77 c5 fa 11 44 24 30 48 b9 58 af 36 c6 f7 7f 00 00 e8 b4 6f b0 5e c5 fa 10 44 24 30 c5 fa 11 40 08 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovss dword ptr [rsp+30h],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 30}
000dh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0017h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 6f b0 5e}
001ch vmovss xmm0,dword ptr [rsp+30h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 30}
0022h vmovss dword ptr [rax+8],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c5 fa 11 40 08}
0027h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber number<double>(double src)
; number_g[64f](64f)[44] = {48 83 ec 28 c5 f8 77 c5 fb 11 44 24 30 48 b9 38 b8 36 c6 f7 7f 00 00 e8 64 6f b0 5e c5 fb 10 44 24 30 c5 fb 11 40 08 48 83 c4 28 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
000dh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0017h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 6f b0 5e}
001ch vmovsd xmm0,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 30}
0022h vmovsd qword ptr [rax+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 40 08}
0027h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte unbox<byte>(BoxedNumber src)
; unbox_g[8u]()[51] = {56 48 83 ec 20 48 8b f1 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 b7 35 ad 5e 0f b6 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 35 ad 5e}
0029h movzx eax,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 46 08}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte unbox<sbyte>(BoxedNumber src)
; unbox_g[8i]()[52] = {56 48 83 ec 20 48 8b f1 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 67 35 ad 5e 48 0f be 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 35 ad 5e}
0029h movsx rax,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 46 08}
002eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort unbox<ushort>(BoxedNumber src)
; unbox_g[16u]()[51] = {56 48 83 ec 20 48 8b f1 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 17 35 ad 5e 0f b7 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 35 ad 5e}
0029h movzx eax,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 46 08}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short unbox<short>(BoxedNumber src)
; unbox_g[16i]()[52] = {56 48 83 ec 20 48 8b f1 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 c7 34 ad 5e 48 0f bf 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 34 ad 5e}
0029h movsx rax,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 46 08}
002eh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0032h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint unbox<uint>(BoxedNumber src)
; unbox_g[32u]()[50] = {56 48 83 ec 20 48 8b f1 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 77 34 ad 5e 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 34 ad 5e}
0029h mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int unbox<int>(BoxedNumber src)
; unbox_g[32i]()[50] = {56 48 83 ec 20 48 8b f1 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 27 34 ad 5e 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 34 ad 5e}
0029h mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
002ch add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong unbox<ulong>(BoxedNumber src)
; unbox_g[64u]()[51] = {56 48 83 ec 20 48 8b f1 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 d7 33 ad 5e 48 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 33 ad 5e}
0029h mov rax,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 46 08}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long unbox<long>(BoxedNumber src)
; unbox_g[64i]()[51] = {56 48 83 ec 20 48 8b f1 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 87 33 ad 5e 48 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
0012h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0015h je short 0029h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0017h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001ah mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0024h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 33 ad 5e}
0029h mov rax,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 46 08}
002dh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0031h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float unbox<float>(BoxedNumber src)
; unbox_g[32f]()[55] = {56 48 83 ec 20 c5 f8 77 48 8b f1 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 34 33 ad 5e c5 fa 10 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0015h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0018h je short 002ch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
001ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001dh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0027h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 33 ad 5e}
002ch vmovss xmm0,dword ptr [rsi+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 46 08}
0031h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double unbox<double>(BoxedNumber src)
; unbox_g[64f]()[55] = {56 48 83 ec 20 c5 f8 77 48 8b f1 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 e4 32 ad 5e c5 fb 10 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0015h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0018h je short 002ch                          ; JE rel8 || 74 cb || encoded[2]{74 12}
001ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001dh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0027h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 32 ad 5e}
002ch vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0031h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0035h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0036h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte convert<byte>(BoxedNumber src)
; convert_g[8u]()[87] = {56 48 83 ec 20 48 8b f1 48 b9 58 77 36 c6 f7 7f 00 00 e8 39 ef aa 5e 48 8b c8 e8 61 2b 01 ff 8b c8 48 8b d6 e8 ef 27 01 ff 48 8b f0 48 ba 58 77 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 77 36 c6 f7 7f 00 00 e8 73 32 ad 5e 0f b6 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ef aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 2b 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 27 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 77 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 77 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 32 ad 5e}
004dh movzx eax,byte ptr [rsi+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 46 08}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte convert<sbyte>(BoxedNumber src)
; convert_g[8i]()[88] = {56 48 83 ec 20 48 8b f1 48 b9 68 6f 36 c6 f7 7f 00 00 e8 c9 ee aa 5e 48 8b c8 e8 f1 2a 01 ff 8b c8 48 8b d6 e8 7f 27 01 ff 48 8b f0 48 ba 68 6f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 68 6f 36 c6 f7 7f 00 00 e8 03 32 ad 5e 48 0f be 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ee aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 2a 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 27 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 68 6f 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6f 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 32 ad 5e}
004dh movsx rax,byte ptr [rsi+8]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 46 08}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort convert<ushort>(BoxedNumber src)
; convert_g[16u]()[87] = {56 48 83 ec 20 48 8b f1 48 b9 38 87 36 c6 f7 7f 00 00 e8 59 ee aa 5e 48 8b c8 e8 81 2a 01 ff 8b c8 48 8b d6 e8 0f 27 01 ff 48 8b f0 48 ba 38 87 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 87 36 c6 f7 7f 00 00 e8 93 31 ad 5e 0f b7 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ee aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 2a 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 27 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 87 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 87 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 31 ad 5e}
004dh movzx eax,word ptr [rsi+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 46 08}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short convert<short>(BoxedNumber src)
; convert_g[16i]()[88] = {56 48 83 ec 20 48 8b f1 48 b9 48 7f 36 c6 f7 7f 00 00 e8 e9 ed aa 5e 48 8b c8 e8 11 2a 01 ff 8b c8 48 8b d6 e8 9f 26 01 ff 48 8b f0 48 ba 48 7f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 48 7f 36 c6 f7 7f 00 00 e8 23 31 ad 5e 48 0f bf 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ed aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 2a 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 26 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 48 7f 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7f 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 31 ad 5e}
004dh movsx rax,word ptr [rsi+8]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 46 08}
0052h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0056h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint convert<uint>(BoxedNumber src)
; convert_g[32u]()[86] = {56 48 83 ec 20 48 8b f1 48 b9 d8 96 36 c6 f7 7f 00 00 e8 79 ed aa 5e 48 8b c8 e8 a1 29 01 ff 8b c8 48 8b d6 e8 2f 26 01 ff 48 8b f0 48 ba d8 96 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 d8 96 36 c6 f7 7f 00 00 e8 b3 30 ad 5e 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 ed aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 29 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 26 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba d8 96 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 96 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 30 ad 5e}
004dh mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
0050h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert<int>(BoxedNumber src)
; convert_g[32i]()[86] = {56 48 83 ec 20 48 8b f1 48 b9 08 8f 36 c6 f7 7f 00 00 e8 09 ed aa 5e 48 8b c8 e8 31 29 01 ff 8b c8 48 8b d6 e8 bf 25 01 ff 48 8b f0 48 ba 08 8f 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 08 8f 36 c6 f7 7f 00 00 e8 43 30 ad 5e 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ed aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 29 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 25 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 08 8f 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 30 ad 5e}
004dh mov eax,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 46 08}
0050h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong convert<ulong>(BoxedNumber src)
; convert_g[64u]()[87] = {56 48 83 ec 20 48 8b f1 48 b9 78 a6 36 c6 f7 7f 00 00 e8 99 ec aa 5e 48 8b c8 e8 c1 28 01 ff 8b c8 48 8b d6 e8 4f 25 01 ff 48 8b f0 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 d3 2f ad 5e 48 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ec aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 28 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 25 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 2f ad 5e}
004dh mov rax,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 46 08}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert<long>(BoxedNumber src)
; convert_g[64i]()[87] = {56 48 83 ec 20 48 8b f1 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 29 ec aa 5e 48 8b c8 e8 51 28 01 ff 8b c8 48 8b d6 e8 df 24 01 ff 48 8b f0 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 63 2f ad 5e 48 8b 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0012h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ec aa 5e}
0017h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 28 01 ff}
001fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0021h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0024h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 24 01 ff}
0029h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002ch mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
0036h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0039h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
003eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0048h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 2f ad 5e}
004dh mov rax,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 46 08}
0051h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float convert<float>(BoxedNumber src)
; convert_g[32f]()[91] = {56 48 83 ec 20 c5 f8 77 48 8b f1 48 b9 58 af 36 c6 f7 7f 00 00 e8 b6 eb aa 5e 48 8b c8 e8 de 27 01 ff 8b c8 48 8b d6 e8 6c 24 01 ff 48 8b f0 48 ba 58 af 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 58 af 36 c6 f7 7f 00 00 e8 f0 2e ad 5e c5 fa 10 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
0015h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 eb aa 5e}
001ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001dh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 27 01 ff}
0022h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 24 01 ff}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov rdx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 58 af 36 c6 f7 7f 00 00}
0039h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
003ch je short 0050h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0041h mov rcx,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 af 36 c6 f7 7f 00 00}
004bh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 2e ad 5e}
0050h vmovss xmm0,dword ptr [rsi+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c5 fa 10 46 08}
0055h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double convert<double>(BoxedNumber src)
; convert_g[64f]()[91] = {56 48 83 ec 20 c5 f8 77 48 8b f1 48 b9 38 b8 36 c6 f7 7f 00 00 e8 46 eb aa 5e 48 8b c8 e8 6e 27 01 ff 8b c8 48 8b d6 e8 fc 23 01 ff 48 8b f0 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 80 2e ad 5e c5 fb 10 46 08 48 83 c4 20 5e c3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0015h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 eb aa 5e}
001ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
001dh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 27 01 ff}
0022h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0024h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0027h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 23 01 ff}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0039h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
003ch je short 0050h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
003eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0041h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
004bh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 2e ad 5e}
0050h vmovsd xmm0,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 46 08}
0055h add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber from(object src)
; from_(object)[9] = {0f 1f 44 00 00 48 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber convert(BoxedNumber src, NumericKind:uint dst)
; convert_(NumericKind~32u)[24] = {48 83 ec 28 90 48 8b c1 8b ca 48 8b d0 e8 86 23 01 ff 90 48 83 c4 28 c3}
; TermCode = CTC_RET_SBB
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
000dh call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 23 01 ff}
0012h nop                                     ; NOP || o32 90 || encoded[1]{90}
0013h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BoxedNumber convert(BoxedNumber src, Type target)
; convert_()[33] = {56 48 83 ec 20 48 8b f1 48 8b ca e8 c0 26 01 ff 8b c8 48 8b d6 e8 4e 23 01 ff 90 48 83 c4 20 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0005h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0008h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
000bh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 26 01 ff}
0010h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 23 01 ff}
001ah nop                                     ; NOP || o32 90 || encoded[1]{90}
001bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
001fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; FixedWidth:uint width(BoxedNumber src)
; width_()[26] = {48 83 ec 28 90 e8 36 62 a5 5e 48 8b c8 e8 7e 26 01 ff 0f b7 c0 48 83 c4 28 c3}
; TermCode = CTC_RET_Zx3
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 62 a5 5e}
000ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
000dh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 26 01 ff}
0012h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0015h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool eq(BoxedNumber lhs, BoxedNumber rhs)
; eq_()[1179] = {57 56 53 48 83 ec 30 c5 f8 77 c5 f8 29 74 24 20 48 8b f1 48 8b fa 48 8b ce 48 85 c9 74 11 48 b8 68 6f 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 66 48 8b ce 48 85 f6 74 11 48 b8 48 7f 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 48 48 8b ce 48 85 f6 74 11 48 b8 08 8f 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 2a 48 8b ce 48 85 f6 74 11 48 b8 a8 9e 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 1e 01 00 00 48 8b cf 48 85 ff 74 11 48 b8 68 6f 36 c6 f7 7f 00 00 48 39 07 74 02 33 c9 48 85 c9 75 66 48 8b cf 48 85 ff 74 11 48 b8 48 7f 36 c6 f7 7f 00 00 48 39 07 74 02 33 c9 48 85 c9 75 48 48 8b cf 48 85 ff 74 11 48 b8 08 8f 36 c6 f7 7f 00 00 48 39 07 74 02 33 c9 48 85 c9 75 2a 48 8b cf 48 85 ff 74 11 48 b8 a8 9e 36 c6 f7 7f 00 00 48 39 07 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 9a 00 00 00 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 03 e9 aa 5e 48 8b d8 48 8b cb e8 28 25 01 ff 8b c8 48 8b d6 e8 b6 21 01 ff 48 8b f0 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 3a 2c ad 5e 48 8b 76 08 48 8b cb e8 ee 24 01 ff 8b c8 48 8b d7 e8 7c 21 01 ff 48 8b f8 48 ba a8 9e 36 c6 f7 7f 00 00 48 39 17 74 12 48 8b d7 48 b9 a8 9e 36 c6 f7 7f 00 00 e8 00 2c ad 5e 48 3b 77 08 0f 94 c0 0f b6 c0 c5 f8 28 74 24 20 48 83 c4 30 5b 5e 5f c3 48 8b ce 48 85 c9 74 11 48 b8 58 77 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 66 48 8b ce 48 85 f6 74 11 48 b8 38 87 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 48 48 8b ce 48 85 f6 74 11 48 b8 d8 96 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 75 2a 48 8b ce 48 85 f6 74 11 48 b8 78 a6 36 c6 f7 7f 00 00 48 39 06 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 1e 01 00 00 48 8b cf 48 85 c9 74 11 48 b8 58 77 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 75 66 48 8b cf 48 85 c9 74 11 48 b8 38 87 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 75 48 48 8b cf 48 85 c9 74 11 48 b8 d8 96 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 75 2a 48 8b cf 48 85 c9 74 11 48 b8 78 a6 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 9a 00 00 00 48 b9 78 a6 36 c6 f7 7f 00 00 e8 61 e7 aa 5e 48 8b d8 48 8b cb e8 86 23 01 ff 8b c8 48 8b d6 e8 14 20 01 ff 48 8b f0 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 78 a6 36 c6 f7 7f 00 00 e8 98 2a ad 5e 48 8b 76 08 48 8b cb e8 4c 23 01 ff 8b c8 48 8b d7 e8 da 1f 01 ff 48 8b f8 48 ba 78 a6 36 c6 f7 7f 00 00 48 39 17 74 12 48 8b d7 48 b9 78 a6 36 c6 f7 7f 00 00 e8 5e 2a ad 5e 48 3b 77 08 0f 94 c0 0f b6 c0 c5 f8 28 74 24 20 48 83 c4 30 5b 5e 5f c3 48 8b ce 48 85 c9 74 11 48 b8 58 af 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 75 2a 48 8b ce 48 85 c9 74 11 48 b8 38 b8 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 e9 00 00 00 48 8b cf 48 85 c9 74 11 48 b8 58 af 36 c6 f7 7f 00 00 48 39 01 74 02 33 c9 48 85 c9 75 2a 48 8b cf 48 85 ff 74 11 48 b8 38 b8 36 c6 f7 7f 00 00 48 39 07 74 02 33 c9 48 85 c9 0f 95 c1 0f b6 c9 85 c9 0f 84 a1 00 00 00 48 b9 38 b8 36 c6 f7 7f 00 00 e8 37 e6 aa 5e 48 8b d8 48 8b cb e8 5c 22 01 ff 8b c8 48 8b d6 e8 ea 1e 01 ff 48 8b f0 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 6e 29 ad 5e c5 fb 10 76 08 48 8b cb e8 21 22 01 ff 8b c8 48 8b d7 e8 af 1e 01 ff 48 8b f0 48 ba 38 b8 36 c6 f7 7f 00 00 48 39 16 74 12 48 8b d6 48 b9 38 b8 36 c6 f7 7f 00 00 e8 33 29 ad 5e c5 f9 2e 76 08 0f 9b c0 7a 03 0f 94 c0 0f b6 c0 c5 f8 28 74 24 20 48 83 c4 30 5b 5e 5f c3 33 c0 c5 f8 28 74 24 20 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h mov rdi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fa}
0016h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0019h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
001ch je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
001eh mov rax,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 6f 36 c6 f7 7f 00 00}
0028h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
002bh je short 002fh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
002dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
002fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0032h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 66}
0034h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0037h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
003ah je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
003ch mov rax,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 7f 36 c6 f7 7f 00 00}
0046h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
0049h je short 004dh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
004bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004dh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0050h jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 48}
0052h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0055h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0058h je short 006bh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
005ah mov rax,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8f 36 c6 f7 7f 00 00}
0064h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
0067h je short 006bh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0069h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
006bh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
006eh jne short 009ah                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
0070h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0073h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0076h je short 0089h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0078h mov rax,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 36 c6 f7 7f 00 00}
0082h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
0085h je short 0089h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0087h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0089h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
008ch setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
008fh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0092h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0094h je near ptr 01b8h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 1e 01 00 00}
009ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009dh test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a0h je short 00b3h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00a2h mov rax,7ff7c6366f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 6f 36 c6 f7 7f 00 00}
00ach cmp [rdi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 07}
00afh je short 00b3h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
00b1h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
00b3h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
00b6h jne short 011eh                         ; JNE rel8 || 75 cb || encoded[2]{75 66}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00beh je short 00d1h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00c0h mov rax,7ff7c6367f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 7f 36 c6 f7 7f 00 00}
00cah cmp [rdi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 07}
00cdh je short 00d1h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
00cfh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
00d1h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
00d4h jne short 011eh                         ; JNE rel8 || 75 cb || encoded[2]{75 48}
00d6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d9h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00dch je short 00efh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00deh mov rax,7ff7c6368f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 8f 36 c6 f7 7f 00 00}
00e8h cmp [rdi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 07}
00ebh je short 00efh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
00edh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
00efh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
00f2h jne short 011eh                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
00f4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f7h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00fah je short 010dh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
00fch mov rax,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 9e 36 c6 f7 7f 00 00}
0106h cmp [rdi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 07}
0109h je short 010dh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
010bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
010dh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0110h setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
0113h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0116h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0118h je near ptr 01b8h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 00 00 00}
011eh mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0128h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e9 aa 5e}
012dh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0130h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0133h call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 25 01 ff}
0138h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
013ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
013dh call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 21 01 ff}
0142h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0145h mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
014fh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0152h je short 0166h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0154h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0157h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
0161h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 2c ad 5e}
0166h mov rsi,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 76 08}
016ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
016dh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 24 01 ff}
0172h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0174h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0177h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 21 01 ff}
017ch mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
017fh mov rdx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba a8 9e 36 c6 f7 7f 00 00}
0189h cmp [rdi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 17}
018ch je short 01a0h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
018eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0191h mov rcx,7ff7c6369ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 9e 36 c6 f7 7f 00 00}
019bh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 2c ad 5e}
01a0h cmp rsi,[rdi+8]                         ; CMP r64, r/m64 || REX.W 3B /r || encoded[4]{48 3b 77 08}
01a4h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
01a7h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
01aah vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
01b0h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
01b4h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01b5h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01b6h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01b7h ret                                     ; RET || C3 || encoded[1]{c3}
01b8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bbh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
01beh je short 01d1h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01c0h mov rax,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 77 36 c6 f7 7f 00 00}
01cah cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
01cdh je short 01d1h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01cfh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
01d1h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
01d4h jne short 023ch                         ; JNE rel8 || 75 cb || encoded[2]{75 66}
01d6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01d9h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
01dch je short 01efh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01deh mov rax,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 87 36 c6 f7 7f 00 00}
01e8h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
01ebh je short 01efh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
01edh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
01efh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
01f2h jne short 023ch                         ; JNE rel8 || 75 cb || encoded[2]{75 48}
01f4h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01f7h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
01fah je short 020dh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
01fch mov rax,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 96 36 c6 f7 7f 00 00}
0206h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
0209h je short 020dh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
020bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
020dh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0210h jne short 023ch                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
0212h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0215h test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0218h je short 022bh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
021ah mov rax,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a6 36 c6 f7 7f 00 00}
0224h cmp [rsi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 06}
0227h je short 022bh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0229h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
022bh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
022eh setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
0231h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0234h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0236h je near ptr 035ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 1e 01 00 00}
023ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
023fh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0242h je short 0255h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0244h mov rax,7ff7c6367758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 77 36 c6 f7 7f 00 00}
024eh cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
0251h je short 0255h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0253h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0255h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0258h jne short 02c0h                         ; JNE rel8 || 75 cb || encoded[2]{75 66}
025ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
025dh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0260h je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0262h mov rax,7ff7c6368738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 87 36 c6 f7 7f 00 00}
026ch cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
026fh je short 0273h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0271h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0273h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0276h jne short 02c0h                         ; JNE rel8 || 75 cb || encoded[2]{75 48}
0278h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
027bh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
027eh je short 0291h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0280h mov rax,7ff7c63696d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 96 36 c6 f7 7f 00 00}
028ah cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
028dh je short 0291h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
028fh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0291h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0294h jne short 02c0h                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
0296h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0299h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
029ch je short 02afh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
029eh mov rax,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 a6 36 c6 f7 7f 00 00}
02a8h cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
02abh je short 02afh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
02adh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
02afh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
02b2h setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
02b5h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
02b8h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
02bah je near ptr 035ah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 9a 00 00 00}
02c0h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
02cah call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e7 aa 5e}
02cfh mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
02d2h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d5h call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 23 01 ff}
02dah mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
02dch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02dfh call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 20 01 ff}
02e4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
02e7h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
02f1h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
02f4h je short 0308h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
02f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02f9h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
0303h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 2a ad 5e}
0308h mov rsi,[rsi+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 76 08}
030ch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
030fh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 23 01 ff}
0314h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0316h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0319h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 1f 01 ff}
031eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0321h mov rdx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 a6 36 c6 f7 7f 00 00}
032bh cmp [rdi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 17}
032eh je short 0342h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0330h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0333h mov rcx,7ff7c636a678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a6 36 c6 f7 7f 00 00}
033dh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 2a ad 5e}
0342h cmp rsi,[rdi+8]                         ; CMP r64, r/m64 || REX.W 3B /r || encoded[4]{48 3b 77 08}
0346h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0349h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
034ch vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0352h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0356h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0357h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0358h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0359h ret                                     ; RET || C3 || encoded[1]{c3}
035ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
035dh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0360h je short 0373h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0362h mov rax,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 af 36 c6 f7 7f 00 00}
036ch cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
036fh je short 0373h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
0371h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0373h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0376h jne short 03a2h                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
0378h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
037bh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
037eh je short 0391h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
0380h mov rax,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 36 c6 f7 7f 00 00}
038ah cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
038dh je short 0391h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
038fh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0391h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0394h setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
0397h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
039ah test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
039ch je near ptr 048bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 e9 00 00 00}
03a2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a5h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
03a8h je short 03bbh                          ; JE rel8 || 74 cb || encoded[2]{74 11}
03aah mov rax,7ff7c636af58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 af 36 c6 f7 7f 00 00}
03b4h cmp [rcx],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 01}
03b7h je short 03bbh                          ; JE rel8 || 74 cb || encoded[2]{74 02}
03b9h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
03bbh test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
03beh jne short 03eah                         ; JNE rel8 || 75 cb || encoded[2]{75 2a}
03c0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03c3h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
03c6h je short 03d9h                          ; JE rel8 || 74 cb || encoded[2]{74 11}
03c8h mov rax,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 b8 36 c6 f7 7f 00 00}
03d2h cmp [rdi],rax                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 07}
03d5h je short 03d9h                          ; JE rel8 || 74 cb || encoded[2]{74 02}
03d7h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
03d9h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
03dch setne cl                                ; SETNE r/m8 || 0F 95 /r || encoded[3]{0f 95 c1}
03dfh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
03e2h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
03e4h je near ptr 048bh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 a1 00 00 00}
03eah mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
03f4h call 7ff825e4eff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 e6 aa 5e}
03f9h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
03fch mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
03ffh call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 22 01 ff}
0404h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0406h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0409h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 1e 01 ff}
040eh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0411h mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
041bh cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
041eh je short 0432h                          ; JE rel8 || 74 cb || encoded[2]{74 12}
0420h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0423h mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
042dh call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 29 ad 5e}
0432h vmovsd xmm6,qword ptr [rsi+8]           ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 76 08}
0437h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
043ah call 7ff7c63b2c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 22 01 ff}
043fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0441h mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
0444h call 7ff7c63b28b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 1e 01 ff}
0449h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
044ch mov rdx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 38 b8 36 c6 f7 7f 00 00}
0456h cmp [rsi],rdx                           ; CMP r/m64, r64 || REX.W 39 /r || encoded[3]{48 39 16}
0459h je short 046dh                          ; JE rel8 || 74 cb || encoded[2]{74 12}
045bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
045eh mov rcx,7ff7c636b838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b8 36 c6 f7 7f 00 00}
0468h call 7ff825e73360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 29 ad 5e}
046dh vucomisd xmm6,qword ptr [rsi+8]         ; VUCOMISD xmm1, xmm2/m64 || VEX.LIG.66.0F.WIG 2E /r || encoded[5]{c5 f9 2e 76 08}
0472h setnp al                                ; SETNP r/m8 || 0F 9B /r || encoded[3]{0f 9b c0}
0475h jp short 047ah                          ; JP rel8 || 7A cb || encoded[2]{7a 03}
0477h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
047ah movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
047dh vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0483h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0487h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0488h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0489h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
048ah ret                                     ; RET || C3 || encoded[1]{c3}
048bh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
048dh vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0493h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0497h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0498h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0499h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
049ah ret                                     ; RET || C3 || encoded[1]{c3}
