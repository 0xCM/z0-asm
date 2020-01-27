------------------------------------------------------------------------------------------------------------------------
; Vector512<byte> vincrements<byte>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 e9 57 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 09 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e43957e9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e9 57 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395809h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 09 58 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<sbyte> vincrements<sbyte>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 e9 57 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 09 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e43957e9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e9 57 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395809h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 09 58 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ushort> vincrements<ushort>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 29 56 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 49 56 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e4395629h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 56 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395649h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 49 56 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<short> vincrements<short>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 29 56 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 49 56 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e4395629h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 56 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395649h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 49 56 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<uint> vincrements<uint>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 f9 54 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 19 55 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e43954f9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f9 54 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395519h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 55 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<int> vincrements<int>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 f9 54 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 19 55 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e43954f9h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f9 54 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395519h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 19 55 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<ulong> vincrements<ulong>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 29 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 49 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e4395829h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 58 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395849h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 49 58 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector512<long> vincrements<long>(N512 w)
; vincrements__gn512[100] = {57 56 48 83 ec 48 c5 f8 77 48 8b f1 48 8d 3c 24 b9 10 00 00 00 33 c0 f3 ab 48 8b ce 48 b8 29 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 44 24 20 48 b8 49 58 39 e4 d5 01 00 00 c5 ff f0 00 c5 fd 11 04 24 c5 fd 10 44 24 20 c5 fd 10 0c 24 c5 fd 11 01 c5 fd 11 49 20 48 8b c1 c5 f8 77 48 83 c4 48 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 3c 24}
0010h mov ecx,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 10 00 00 00}
0015h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0017h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
0019h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001ch mov rax,1d5e4395829h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 29 58 39 e4 d5 01 00 00}
0026h vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
002ah vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0030h mov rax,1d5e4395849h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 49 58 39 e4 d5 01 00 00}
003ah vlddqu ymm0,ymmword ptr [rax]           ; VLDDQU ymm1, m256 || VEX.256.F2.0F.WIG F0 /r || encoded[4]{c5 ff f0 00}
003eh vmovupd [rsp],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 04 24}
0043h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0049h vmovupd ymm1,[rsp]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 0c 24}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h vmovupd [rcx+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 49 20}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005dh add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
