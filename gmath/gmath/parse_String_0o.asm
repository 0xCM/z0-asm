; double parse<double>(string src)
; parse_String_0o[7ff7c71a2ba0h, 7ff7c71a2c50h][176] = {57 56 53 48 83 ec 40 c5 f8 77 33 c0 48 89 44 24 30 48 89 44 24 20 48 89 44 24 28 48 8b f1 c5 f8 57 c0 c5 fb 11 44 24 30 33 c0 48 89 44 24 38 48 85 f6 75 0e c5 f8 57 c0 c5 fb 11 44 24 30 33 ff eb 32 48 8d 7e 0c 8b 5e 08 e8 02 8b d3 4e 4c 8b c0 48 8d 4c 24 20 48 89 39 89 59 08 48 8d 4c 24 20 4c 8d 4c 24 30 ba e7 00 00 00 e8 b8 08 22 ff 40 0f b6 f8 85 ff 74 13 c5 fb 10 44 24 30 c5 fb 11 44 24 38 b9 01 00 00 00 eb 02 33 c9 85 c9 74 0e c5 fb 10 44 24 38 48 83 c4 40 5b 5e 5f c3 48 8b ce e8 d9 f3 ff ff 90 48 83 c4 40 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:10:57:513
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
0011h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0016h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
001bh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001eh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0022h vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
0028h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
002ah mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
002fh test rsi,rsi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 f6}
0032h jne short 0042h                         ; JNE rel8 || 75 cb || encoded[2]{75 0e}
0034h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0038h vmovsd qword ptr [rsp+30h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 30}
003eh xor edi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ff}
0040h jmp short 0074h                         ; JMP rel8 || EB cb || encoded[2]{eb 32}
0042h lea rdi,[rsi+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 7e 0c}
0046h mov ebx,[rsi+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 5e 08}
0049h call 7ff815edb6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8b d3 4e}
004eh mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0051h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0056h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
0059h mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
005ch lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0061h lea r9,[rsp+30h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 30}
0066h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
006bh call 7ff7c63c34c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 08 22 ff}
0070h movzx edi,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f8}
0074h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0076h je short 008bh                          ; JE rel8 || 74 cb || encoded[2]{74 13}
0078h vmovsd xmm0,qword ptr [rsp+30h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 30}
007eh vmovsd qword ptr [rsp+38h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 38}
0084h mov ecx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 01 00 00 00}
0089h jmp short 008dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008bh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
008dh test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
008fh je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
0091h vmovsd xmm0,qword ptr [rsp+38h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 38}
0097h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
009bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
009fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
00a2h call 7ff7c71a2020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f3 ff ff}
00a7h nop                                     ; NOP || o32 90 || encoded[1]{90}
00a8h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
00ach pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00adh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00aeh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00afh ret                                     ; RET || C3 || encoded[1]{c3}
