------------------------------------------------------------------------------------------------------------------------
; double cbrt(double x), hex://libm/libm?cbrt#cbrt_(64f)
; cbrt_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xf4,0xac,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x10,0xb3,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x60,0xa5,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xdd,0x35,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xd5,0x6c,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 ac b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 b3 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695aa0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 a5 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0035ddh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d dd 35 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6cd5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 6c ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ceil(double x), hex://libm/libm?ceil#ceil_(64f)
; ceil_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0xac,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x58,0xb3,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xa0,0xa4,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x0d,0x35,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x05,0x6c,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 ac b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 b3 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695b60h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 a4 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00350dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 0d 35 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6c05h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 6c ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double copysign(double x, double y), hex://libm/libm?copysign#copysign_(64f,64f)
; copysign_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x4f,0xab,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa0,0xb3,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd6,0xa3,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x33,0x34,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x2b,0x6b,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ab b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab3a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 b3 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-695c2ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 a3 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f003433h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 33 34 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff6b2bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 6b ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double erfc(double x), hex://libm/libm?erfc#erfc_(64f)
; erfc_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x74,0xaa,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x30,0xb4,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x20,0xa3,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x5d,0x33,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x55,0x6a,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 aa b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 b4 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695ce0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 a3 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00335dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 5d 33 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6a55h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 6a ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double erf(double x), hex://libm/libm?erf#erf_(64f)
; erf_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa4,0xa9,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0xb3,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x40,0xa2,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x8d,0x32,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x85,0x69,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a9 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 b3 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695dc0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 a2 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00328dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 8d 32 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6985h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 69 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double exp2(double x), hex://libm/libm?exp2#exp2_(64f)
; exp2_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xd4,0xa8,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0xb4,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x90,0xa1,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xbd,0x31,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xb5,0x68,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 a8 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 b4 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695e70h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 a1 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0031bdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d bd 31 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff68b5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 68 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double exp(double x), hex://libm/libm?exp#exp_(64f)
; exp_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0xa8,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc0,0xb4,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd0,0xa0,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xed,0x30,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xe5,0x67,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a8 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 b4 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695f30h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 a0 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0030edh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ed 30 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff67e5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 67 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double expm1(double x), hex://libm/libm?expm1#expm1_(64f)
; expm1_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0xa7,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x08,0xb5,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x10,0xa0,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x1d,0x30,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x15,0x67,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a7 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 b5 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-695ff0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 a0 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00301dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 1d 30 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6715h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 67 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fabs(double x), hex://libm/libm?fabs#fabs_(64f)
; fabs_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0xa6,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x50,0xb5,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x50,0x9f,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x4d,0x2f,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x45,0x66,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a6 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 b5 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6960b0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 9f 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f002f4dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 4d 2f 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6645h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 66 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fdim(double x, double y), hex://libm/libm?fdim#fdim_(64f,64f)
; fdim_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x8f,0xa5,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x98,0xb5,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x86,0x9e,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x73,0x2e,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x6b,0x65,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a5 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 b5 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-69617ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 9e 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f002e73h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 73 2e 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff656bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6b 65 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double floor(double x), hex://libm/libm?floor#floor_(64f)
; floor_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0xa4,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0xb5,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc0,0x9d,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x9d,0x2d,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x95,0x64,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 a4 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab5e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 b5 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696240h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 9d 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f002d9dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 9d 2d 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff6495h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 64 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fma(double x, double y, double z), hex://libm/libm?fma#fma_(64f,64f,64f)
; fma_(64f,64f,64f)[180] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0xc5,0xfb,0x11,0x55,0x20,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xda,0xa3,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x55,0x20,0xc5,0xfb,0x10,0x45,0x10,0xc5,0xfb,0x10,0x4d,0x18,0x45,0x33,0xdb,0x48,0xb8,0x28,0xb6,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xec,0x9c,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xb9,0x2c,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xb1,0x63,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h vmovsd qword ptr [rbp+20h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 55 20}
002ah lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
002eh mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0031h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da a3 b2 5e}
0036h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0039h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
003ch mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0040h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0043h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0047h vmovsd xmm2,qword ptr [rbp+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 55 20}
004ch vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0051h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0056h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0059h mov rax,7ff7c7fab628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 b6 fa c7 f7 7f 00 00}
0063h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0067h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
006eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0072h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0076h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
007ah mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
007eh call qword ptr [rip-696314h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ec 9c 96 ff}
0084h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0088h cmp dword ptr [rip+5f002cb9h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d b9 2c 00 5f 00}
008fh je short 0097h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0091h call qword ptr [rip+5eff63b1h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 63 ff 5e}
0097h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
009bh mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009fh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a3h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a7h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00aah pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00ach pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00aeh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b0h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmax(double x, double y), hex://libm/libm?fmax#fmax_(64f,64f)
; fmax_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xff,0xa2,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x70,0xb6,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x26,0x9c,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xe3,0x2b,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xdb,0x62,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff a2 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 b6 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-6963dah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 9c 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f002be3h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d e3 2b 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff62dbh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 db 62 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmin(double x, double y), hex://libm/libm?fmin#fmin_(64f,64f)
; fmin_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x1f,0xa2,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb8,0xb6,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x56,0x9b,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x03,0x2b,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xfb,0x61,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f a2 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 b6 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-6964aah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 9b 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f002b03h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 03 2b 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff61fbh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb 61 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmod(double x, double y), hex://libm/libm?fmod#fmod_(64f,64f)
; fmod_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x3f,0xa1,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x00,0xb7,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x86,0x9a,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x23,0x2a,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x1b,0x61,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f a1 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 b7 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-69657ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 9a 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f002a23h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 23 2a 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff611bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 61 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double hypot(double x, double y), hex://libm/libm?hypot#hypot_(64f,64f)
; hypot_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0xa0,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x90,0xb7,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x96,0x99,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x13,0x29,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x0b,0x60,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a0 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fab790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 b7 fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-69666ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 99 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f002913h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 13 29 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff600bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b 60 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ilogb(double x), hex://libm/libm?ilogb#ilogb_(64f)
; ilogb_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0x9f,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd8,0xb7,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd0,0x98,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x3d,0x28,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x35,0x5f,0xff,0x5e,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9f b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 b7 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696730h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 98 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00283dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 3d 28 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5f35h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 5f ff 5e}
0083h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0087h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ldexp(double x, int y), hex://libm/libm?ldexp#ldexp_(64f,32i)
; ldexp_(64f,32i)[164] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x82,0x9e,0xb2,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x20,0xb8,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0x0c,0x98,0x96,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0x69,0x27,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x61,0x5e,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
001dh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0022h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0026h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 9e b2 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7fab820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 b8 fa c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh call qword ptr [rip-6967f4h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0c 98 96 ff}
0074h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0078h cmp dword ptr [rip+5f002769h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 69 27 00 5f 00}
007fh je short 0087h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0081h call qword ptr [rip+5eff5e61h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 5e ff 5e}
0087h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
008bh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
008fh mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0093h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
009ch pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009eh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a0h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double lgamma(double x), hex://libm/libm?lgamma#lgamma_(64f)
; lgamma_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0x9d,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x68,0xb8,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x50,0x97,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x9d,0x26,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x95,0x5d,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 9d b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 b8 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6968b0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 97 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00269dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 9d 26 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5d95h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 5d ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long llrint(double x), hex://libm/libm?llrint#llrint_(64f)
; llrint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x9c,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb0,0xb8,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x90,0x96,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xcd,0x25,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xc5,0x5c,0xff,0x5e,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 9c b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab8b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 b8 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696970h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 96 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0025cdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d cd 25 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5cc5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 5c ff 5e}
0083h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0087h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long llround(double x), hex://libm/libm?llround#llround_(64f)
; llround_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x14,0x9c,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf8,0xb8,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd0,0x95,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xfd,0x24,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xf5,0x5b,0xff,0x5e,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9c b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab8f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 b8 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696a30h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 95 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0024fdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d fd 24 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5bf5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 5b ff 5e}
0083h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0087h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log10(double x), hex://libm/libm?log10#log10_(64f)
; log10_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x9b,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x40,0xb9,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x10,0x95,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x2d,0x24,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x25,0x5b,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9b b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 b9 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696af0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 95 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00242dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 2d 24 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5b25h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 5b ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log1p(double x), hex://libm/libm?log1p#log1p_(64f)
; log1p_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x74,0x9a,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x88,0xb9,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x50,0x94,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x5d,0x23,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x55,0x5a,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9a b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 b9 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696bb0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 94 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00235dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 5d 23 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5a55h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 5a ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log2(double x), hex://libm/libm?log2#log2_(64f)
; log2_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa4,0x99,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd0,0xb9,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x90,0x93,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x8d,0x22,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x85,0x59,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 99 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fab9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 b9 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696c70h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 93 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00228dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 8d 22 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5985h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 59 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log(double x), hex://libm/libm?log#log_(64f)
; log_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xd4,0x98,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x18,0xba,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd0,0x92,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xbd,0x21,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xb5,0x58,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 98 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7faba18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 ba fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696d30h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 92 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0021bdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d bd 21 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff58b5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 58 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long lrint(double x), hex://libm/libm?lrint#lrint_(64f)
; lrint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x98,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0xba,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x10,0x92,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xed,0x20,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xe5,0x57,0xff,0x5e,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 98 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7faba60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 ba fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696df0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 92 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0020edh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ed 20 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff57e5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 57 ff 5e}
0083h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0087h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long lround(double x), hex://libm/libm?lround#lround_(64f)
; lround_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0x97,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0xba,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x50,0x91,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x1d,0x20,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x15,0x57,0xff,0x5e,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 97 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fabaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 ba fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696eb0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 91 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00201dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 1d 20 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5715h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 57 ff 5e}
0083h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0087h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double nearbyint(double x), hex://libm/libm?nearbyint#nearbyint_(64f)
; nearbyint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x96,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0xbd,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x08,0x98,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xed,0x1e,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xe5,0x55,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 96 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fabd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 bd fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6967f8h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 98 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f001eedh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ed 1e 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff55e5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 55 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double nextafter(double x, double y), hex://libm/libm?nextafter#nextafter_(64f,64f)
; nextafter_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0x95,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0xbd,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x3e,0x97,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x13,0x1e,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x0b,0x55,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 95 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fabda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 bd fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-6968c2h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e 97 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f001e13h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 13 1e 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff550bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b 55 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double pow(double x, double y), hex://libm/libm?pow#pow_(64f,64f)
; pow_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x4f,0x94,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf0,0xbd,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x6e,0x96,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x33,0x1d,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x2b,0x54,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 94 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fabdf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 bd fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-696992h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e 96 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f001d33h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 33 1d 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff542bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 54 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double remainder(double x, double y), hex://libm/libm?remainder#remainder_(64f,64f)
; remainder_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x6f,0x93,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x38,0xbe,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x9e,0x95,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x53,0x1c,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x4b,0x53,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h vmovsd qword ptr [rbp+18h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 4d 18}
0025h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0029h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 93 b2 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fabe38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 be fa c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-696a62h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e 95 96 ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f001c53h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 53 1c 00 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5eff534bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4b 53 ff 5e}
008dh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0091h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0095h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0099h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
009dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a0h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00a2h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a4h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a6h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a8h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a9h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double rint(double x), hex://libm/libm?rint#rint_(64f)
; rint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0x92,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc8,0xbe,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xb8,0x94,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x4d,0x1b,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x45,0x52,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 92 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fabec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 be fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696b48h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 94 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f001b4dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 4d 1b 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5245h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 52 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double round(double x), hex://libm/libm?round#round_(64f)
; round_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x94,0x91,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x10,0xbf,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xf8,0x93,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x7d,0x1a,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x75,0x51,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 91 b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fabf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 bf fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696c08h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 93 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f001a7dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 7d 1a 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff5175h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 51 ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double scalbln(double x, long y), hex://libm/libm?scalbln#scalbln_(64f,64i)
; scalbln_(64f,64i)[166] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc1,0x90,0xb2,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x48,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x58,0xbf,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0x32,0x93,0x96,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0xa7,0x19,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x9f,0x50,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
001eh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0023h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0027h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
002ah call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 90 b2 5e}
002fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0032h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0035h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0039h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003ch mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
0040h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0043h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0048h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004bh mov rax,7ff7c7fabf58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 bf fa c7 f7 7f 00 00}
0055h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0059h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0060h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0064h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0068h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ch mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
0070h call qword ptr [rip-696cceh]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 93 96 ff}
0076h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
007ah cmp dword ptr [rip+5f0019a7h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d a7 19 00 5f 00}
0081h je short 0089h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0083h call qword ptr [rip+5eff509fh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 50 ff 5e}
0089h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
008dh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
0091h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0095h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0099h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
009ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
009eh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00a0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double scalbn(double x, int y), hex://libm/libm?scalbn#scalbn_(64f,32i)
; scalbn_(64f,32i)[164] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xf2,0x8f,0xb2,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa0,0xbf,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0x74,0x92,0x96,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0xd9,0x18,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0xd1,0x4f,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
001dh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0022h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0026h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 8f b2 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7fabfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 bf fa c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh call qword ptr [rip-696d8ch]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 74 92 96 ff}
0074h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0078h cmp dword ptr [rip+5f0018d9h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d d9 18 00 5f 00}
007fh je short 0087h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0081h call qword ptr [rip+5eff4fd1h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 4f ff 5e}
0087h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
008bh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
008fh mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0093h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0097h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0098h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0099h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009ah pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
009ch pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009eh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00a0h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00a2h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00a3h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sqrt(double x), hex://libm/libm?sqrt#sqrt_(64f)
; sqrt_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0x8f,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0xbf,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xb8,0x91,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x0d,0x18,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x05,0x4f,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 8f b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fabfe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 bf fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696e48h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 91 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00180dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 0d 18 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff4f05h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 4f ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double tgamma(double x), hex://libm/libm?tgamma#tgamma_(64f)
; tgamma_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0x8e,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x30,0xc0,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xf8,0x90,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x3d,0x17,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x35,0x4e,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 8e b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fac030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 c0 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696f08h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 90 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00173dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 3d 17 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff4e35h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 4e ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double trunc(double x), hex://libm/libm?trunc#trunc_(64f)
; trunc_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0x8d,0xb2,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0xc0,0xfa,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x38,0x90,0x96,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x6d,0x16,0x00,0x5f,0x00,0x74,0x06,0xff,0x15,0x65,0x4d,0xff,0x5e,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
; TermCode = CTC_RET_INTR
0000h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0001h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0003h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0005h push r13                                ; PUSH r64 || 50+ro || encoded[2]{41 55}
0007h push r12                                ; PUSH r64 || 50+ro || encoded[2]{41 54}
0009h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
000ah push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
000bh push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
000ch sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h lea rbp,[rsp+0a0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d ac 24 a0 00 00 00}
001bh vmovsd qword ptr [rbp+10h],xmm0         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 45 10}
0020h lea rcx,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 4d 88}
0024h mov rdx,r10                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d2}
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 8d b2 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fac078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 c0 fa c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-696fc8h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 90 96 ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f00166dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 6d 16 00 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5eff4d65h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 4d ff 5e}
0083h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0087h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
008bh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008fh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
0093h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0094h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0095h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0096h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
0098h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
009ah pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
009ch pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
009eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
009fh ret                                     ; RET || C3 || encoded[1]{c3}
