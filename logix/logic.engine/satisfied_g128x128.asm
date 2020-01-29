------------------------------------------------------------------------------------------------------------------------
; bit satisfied<byte>(ComparisonExpr<Vector128<byte>> expr, Vector128<byte> a, Vector128<byte> b)
; satisfied__gComparisonExpr`1_128x8u_128x8u[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 d8 48 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 89 c1 c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 f2 fb ff ff 48 8b cb e8 2a d5 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 74 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a48d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 48 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c1 c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722a868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c72281a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d5 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqb xmm1,xmm1,xmm2                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<sbyte>(ComparisonExpr<Vector128<sbyte>> expr, Vector128<sbyte> a, Vector128<sbyte> b)
; satisfied__gComparisonExpr`1_128x8i_128x8i[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 88 50 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 e9 c0 c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 82 fc ff ff 48 8b cb e8 52 d5 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 74 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a5088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 50 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 c0 c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722a998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c7228270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d5 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqb xmm1,xmm1,xmm2                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f1 74 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ushort>(ComparisonExpr<Vector128<ushort>> expr, Vector128<ushort> a, Vector128<ushort> b)
; satisfied__gComparisonExpr`1_128x16u_128x16u[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 c8 54 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 49 c0 c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 72 fc ff ff 48 8b cb e8 8a d6 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 75 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a54c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 54 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 c0 c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722aa28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c7228448h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d6 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqw xmm1,xmm1,xmm2                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<short>(ComparisonExpr<Vector128<short>> expr, Vector128<short> a, Vector128<short> b)
; satisfied__gComparisonExpr`1_128x16i_128x16i[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 08 59 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 a9 bf c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 62 fc ff ff 48 8b cb e8 a2 d6 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 75 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a5908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 59 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 bf c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722aab8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c7228500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 d6 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqw xmm1,xmm1,xmm2                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f1 75 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<uint>(ComparisonExpr<Vector128<uint>> expr, Vector128<uint> a, Vector128<uint> b)
; satisfied__gComparisonExpr`1_128x32u_128x32u[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 48 5d 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 09 bf c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 52 fc ff ff 48 8b cb e8 ba d6 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 76 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a5d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5d 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 bf c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722ab48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c72285b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d6 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqd xmm1,xmm1,xmm2                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<int>(ComparisonExpr<Vector128<int>> expr, Vector128<int> a, Vector128<int> b)
; satisfied__gComparisonExpr`1_128x32i_128x32i[114] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 88 61 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 69 be c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 42 fc ff ff 48 8b cb e8 d2 d6 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c5 f1 76 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a6188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 61 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 be c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722abd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c7228670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d6 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqd xmm1,xmm1,xmm2                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f1 76 ca}
005fh vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0064h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0067h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006ah add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<ulong>(ComparisonExpr<Vector128<ulong>> expr, Vector128<ulong> a, Vector128<ulong> b)
; satisfied__gComparisonExpr`1_128x64u_128x64u[115] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 b0 66 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 c9 b9 c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 f2 fb ff ff 48 8b cb e8 72 fc ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c4 e2 71 29 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a66b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 66 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b9 c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722b028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 fb ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c722b0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fc ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqq xmm1,xmm1,xmm2                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 71 29 ca}
0060h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit satisfied<long>(ComparisonExpr<Vector128<long>> expr, Vector128<long> a, Vector128<long> b)
; satisfied__gComparisonExpr`1_128x64i_128x64i[115] = {57 56 53 48 83 ec 20 c5 f8 77 48 8b d9 48 8b f2 49 8b f8 48 b9 b0 6b 5a c7 f7 7f 00 00 ba 02 00 00 00 e8 29 b9 c7 5e c5 f9 10 06 c5 f9 11 40 10 c5 f9 10 07 c5 f9 11 40 20 48 8b cb 48 8b d0 39 09 e8 2a fc ff ff 48 8b cb e8 4a d2 ff ff c5 f9 10 40 08 c5 f0 57 c9 c5 e8 57 d2 c4 e2 71 29 ca c4 e2 79 17 c1 0f 92 c0 0f b6 c0 48 83 c4 20 5b 5e 5f c3}
; TermCode = RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
000dh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0010h mov rdi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f8}
0013h mov rcx,7ff7c75a6bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6b 5a c7 f7 7f 00 00}
001dh mov edx,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 02 00 00 00}
0022h call 7ff825ea6de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 b9 c7 5e}
0027h vmovupd xmm0,[rsi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 06}
002bh vmovupd [rax+10h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 10}
0030h vmovupd xmm0,[rdi]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 07}
0034h vmovupd [rax+20h],xmm0                  ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 20}
0039h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
003ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
003fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0041h call 7ff7c722b100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fc ff ff}
0046h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0049h call 7ff7c7228728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a d2 ff ff}
004eh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0053h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0057h vxorps xmm2,xmm2,xmm2                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e8 57 d2}
005bh vpcmpeqq xmm1,xmm1,xmm2                 ; VPCMPEQQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 29 /r || encoded[5]{c4 e2 71 29 ca}
0060h vptest xmm0,xmm1                        ; VPTEST xmm1, xmm2/m128 || VEX.128.66.0F38.WIG 17 /r || encoded[5]{c4 e2 79 17 c1}
0065h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0068h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
006bh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
