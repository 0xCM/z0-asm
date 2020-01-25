; bit parse(string src, out double dst)
; parse_String_0o~bit[7ff7c7185e40h, 7ff7c7185e9ch][92] = {57 56 53 48 83 ec 30 c5 f8 77 33 c0 48 89 44 24 20 48 8b f2 48 85 c9 75 0c c5 f8 57 c0 c5 fb 11 06 33 c0 eb 2f 48 8d 79 0c 8b 59 08 e8 7f 58 d5 4e 4c 8b c0 48 8d 4c 24 20 48 89 39 89 59 08 48 8d 4c 24 20 4c 8b ce ba e7 00 00 00 e8 67 6c 22 ff 0f b6 c0 48 83 c4 30 5b 5e 5f c3}
; Capture completion code, RET_INTR
; 2020-01-24 01:44:37:046
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
000ch mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0011h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
0014h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0017h jne short 0025h                         ; JNE rel8 || 75 cb || encoded[2]{75 0c}
0019h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
001dh vmovsd qword ptr [rsi],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[4]{c5 fb 11 06}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 2f}
0025h lea rdi,[rcx+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 79 0c}
0029h mov ebx,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 59 08}
002ch call 7ff815edb6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 58 d5 4e}
0031h mov r8,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c0}
0034h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0039h mov [rcx],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 39}
003ch mov [rcx+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 59 08}
003fh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0044h mov r9,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b ce}
0047h mov edx,0e7h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba e7 00 00 00}
004ch call 7ff7c63acaf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 6c 22 ff}
0051h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0054h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0058h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
