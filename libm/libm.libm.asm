------------------------------------------------------------------------------------------------------------------------
; double cbrt(double x), hex://libm/libm?cbrt#cbrt_(64f)
; cbrt_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xd4,0xb1,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa0,0xf6,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xd0,0xed,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xbd,0x3a,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xb5,0x71,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b1 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 f6 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631230h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 ed 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f073abdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d bd 3a 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f0671b5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 71 06 5f}
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
; ceil_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0xb1,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0xf6,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x10,0xed,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xed,0x39,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xe5,0x70,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b1 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 f6 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6312f0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 ed 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0739edh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ed 39 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f0670e5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 70 06 5f}
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
; copysign_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0xb0,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x30,0xf7,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x46,0xec,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x13,0x39,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x0b,0x70,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f b0 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9f730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 f7 f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-6313bah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 ec 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f073913h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 13 39 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f06700bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b 70 06 5f}
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
; erfc_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0xaf,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc0,0xf7,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x90,0xeb,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x3d,0x38,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x35,0x6f,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 af b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f7c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 f7 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631470h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 eb 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07383dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 3d 38 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066f35h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 6f 06 5f}
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
; erf_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0xae,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0xf7,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xb0,0xea,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x6d,0x37,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x65,0x6e,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 ae b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 f7 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631550h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 ea 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07376dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 6d 37 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066e65h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 6e 06 5f}
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
; exp2_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0xad,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x08,0xf8,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x00,0xea,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x9d,0x36,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x95,0x6d,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ad b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 f8 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631600h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 ea 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07369dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 9d 36 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066d95h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 6d 06 5f}
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
; exp_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0xac,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x50,0xf8,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x40,0xe9,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xcd,0x35,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xc5,0x6c,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ac b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 f8 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6316c0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 e9 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0735cdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d cd 35 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066cc5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 6c 06 5f}
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
; expm1_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x14,0xac,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x98,0xf8,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x80,0xe8,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xfd,0x34,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xf5,0x6b,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 ac b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 f8 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631780h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 e8 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0734fdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d fd 34 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066bf5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 6b 06 5f}
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
; fabs_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0xab,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0xf8,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc0,0xe7,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x2d,0x34,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x25,0x6b,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ab b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f8e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 f8 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631840h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 e7 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07342dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 2d 34 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066b25h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 6b 06 5f}
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
; fdim_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x6f,0xaa,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x28,0xf9,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xf6,0xe6,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x53,0x33,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x4b,0x6a,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f aa b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 f9 f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-63190ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f6 e6 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f073353h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 53 33 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f066a4bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4b 6a 06 5f}
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
; floor_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x94,0xa9,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x70,0xf9,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x30,0xe6,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x7d,0x32,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x75,0x69,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a9 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9f970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 f9 f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6319d0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 e6 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07327dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 7d 32 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066975h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 69 06 5f}
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
; fma_(64f,64f,64f)[180] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0xc5,0xfb,0x11,0x55,0x20,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xba,0xa8,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x55,0x20,0xc5,0xfb,0x10,0x45,0x10,0xc5,0xfb,0x10,0x4d,0x18,0x45,0x33,0xdb,0x48,0xb8,0xb8,0xf9,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x5c,0xe5,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x99,0x31,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x91,0x68,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0031h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba a8 b9 5e}
0036h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0039h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
003ch mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0040h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0043h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0047h vmovsd xmm2,qword ptr [rbp+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 55 20}
004ch vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0051h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0056h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0059h mov rax,7ff7c7f9f9b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 f9 f9 c7 f7 7f 00 00}
0063h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0067h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
006eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0072h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0076h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
007ah mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
007eh call qword ptr [rip-631aa4h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5c e5 9c ff}
0084h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0088h cmp dword ptr [rip+5f073199h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 99 31 07 5f 00}
008fh je short 0097h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0091h call qword ptr [rip+5f066891h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 68 06 5f}
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
; fmax_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xdf,0xa7,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x00,0xfa,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x96,0xe4,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xc3,0x30,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xbb,0x67,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a7 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9fa00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 fa f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-631b6ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 e4 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f0730c3h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d c3 30 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f0667bbh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bb 67 06 5f}
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
; fmin_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xff,0xa6,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x48,0xfa,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc6,0xe3,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xe3,0x2f,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xdb,0x66,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff a6 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9fa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 fa f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-631c3ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 e3 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f072fe3h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d e3 2f 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f0666dbh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 db 66 06 5f}
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
; fmod_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x1f,0xa6,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x90,0xfa,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xf6,0xe2,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x03,0x2f,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xfb,0x65,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f a6 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9fa90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 fa f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-631d0ah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f6 e2 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f072f03h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 03 2f 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f0665fbh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb 65 06 5f}
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
; hypot_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x0f,0xa5,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x20,0xfb,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x06,0xe2,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xf3,0x2d,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xeb,0x64,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f a5 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7f9fb20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 fb f9 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-631dfah]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 e2 9c ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f072df3h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d f3 2d 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f0664ebh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 eb 64 06 5f}
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
; ilogb_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0xa4,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x68,0xfb,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x40,0xe1,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x1d,0x2d,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x15,0x64,0x06,0x5f,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 a4 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 fb f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-631ec0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 e1 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f072d1dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 1d 2d 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066415h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 64 06 5f}
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
; ldexp_(64f,32i)[164] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x62,0xa3,0xb9,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb0,0xfb,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0x7c,0xe0,0x9c,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0x49,0x2c,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x41,0x63,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 a3 b9 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7f9fbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 fb f9 c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh call qword ptr [rip-631f84h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7c e0 9c ff}
0074h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0078h cmp dword ptr [rip+5f072c49h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 49 2c 07 5f 00}
007fh je short 0087h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0081h call qword ptr [rip+5f066341h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 63 06 5f}
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
; lgamma_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x94,0xa2,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf8,0xfb,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc0,0xdf,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x7d,0x2b,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x75,0x62,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 a2 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fbf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 fb f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-632040h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 df 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f072b7dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 7d 2b 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066275h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 62 06 5f}
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
; llrint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc4,0xa1,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x40,0xfc,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x00,0xdf,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xad,0x2a,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xa5,0x61,0x06,0x5f,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a1 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 fc f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-632100h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 df 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f072aadh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ad 2a 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f0661a5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a5 61 06 5f}
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
; llround_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xf4,0xa0,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x88,0xfc,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x40,0xde,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xdd,0x29,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xd5,0x60,0x06,0x5f,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 a0 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fc88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 fc f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6321c0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 de 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0729ddh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d dd 29 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f0660d5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 60 06 5f}
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
; log10_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0xa0,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd0,0xfc,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x80,0xdd,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x0d,0x29,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x05,0x60,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a0 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 fc f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-632280h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 dd 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07290dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 0d 29 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f066005h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 60 06 5f}
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
; log1p_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0x9f,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x18,0xfd,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc0,0xdc,0x9c,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x3d,0x28,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x35,0x5f,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 9f b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fd18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 fd f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-632340h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 dc 9c ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07283dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 3d 28 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065f35h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 5f 06 5f}
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
; log2_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0x9e,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0xfd,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x20,0xdc,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x6d,0x27,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x65,0x5e,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 9e b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 fd f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6223e0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 dc 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07276dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 6d 27 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065e65h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 5e 06 5f}
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
; log_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0x9d,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0xfd,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x60,0xdb,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x9d,0x26,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x95,0x5d,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 9d b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 fd f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6224a0h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 db 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07269dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 9d 26 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065d95h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 5d 06 5f}
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
; lrint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x9c,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf0,0xfd,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xa0,0xda,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xcd,0x25,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xc5,0x5c,0x06,0x5f,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 9c b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fdf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 fd f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-622560h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 da 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0725cdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d cd 25 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065cc5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 5c 06 5f}
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
; lround_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x14,0x9c,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x38,0xfe,0xf9,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xe0,0xd9,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xfd,0x24,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xf5,0x5b,0x06,0x5f,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 9c b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7f9fe38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 fe f9 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-622620h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 d9 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0724fdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d fd 24 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065bf5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 5b 06 5f}
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
; nearbyint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x9a,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x10,0x01,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x98,0xe0,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xcd,0x23,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xc5,0x5a,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 9a b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb0110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 01 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-621f68h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 e0 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f0723cdh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d cd 23 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065ac5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 5a 06 5f}
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
; nextafter_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x0f,0x9a,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x58,0x01,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xce,0xdf,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xf3,0x22,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xeb,0x59,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9a b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb0158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 01 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-622032h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce df 9d ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f0722f3h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d f3 22 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f0659ebh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 eb 59 06 5f}
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
; pow_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0x99,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa0,0x01,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xfe,0xde,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x13,0x22,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x0b,0x59,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 99 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb01a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 01 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-622102h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe de 9d ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f072213h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 13 22 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f06590bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0b 59 06 5f}
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
; remainder_(64f,64f)[170] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x4f,0x98,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0x01,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x2e,0xde,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x33,0x21,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x2b,0x58,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 98 b9 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb01e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 01 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h call qword ptr [rip-6221d2h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e de 9d ff}
007ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007eh cmp dword ptr [rip+5f072133h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 33 21 07 5f 00}
0085h je short 008dh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0087h call qword ptr [rip+5f06582bh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2b 58 06 5f}
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
; rint_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x97,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0x02,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x48,0xdd,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x2d,0x20,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x25,0x57,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 97 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb0278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 02 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6222b8h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 dd 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f07202dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 2d 20 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065725h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 57 06 5f}
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
; round_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x74,0x96,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc0,0x02,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x88,0xdc,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x5d,0x1f,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x55,0x56,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 96 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb02c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 02 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-622378h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 dc 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f071f5dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 5d 1f 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065655h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 56 06 5f}
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
; scalbln_(64f,64i)[166] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa1,0x95,0xb9,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x48,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x08,0x03,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0xc2,0xdb,0x9d,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0x87,0x1e,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x7f,0x55,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ah call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 95 b9 5e}
002fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0032h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0035h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0039h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003ch mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
0040h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0043h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0048h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004bh mov rax,7ff7c7fb0308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 03 fb c7 f7 7f 00 00}
0055h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0059h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
0060h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0064h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0068h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ch mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
0070h call qword ptr [rip-62243eh]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 db 9d ff}
0076h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
007ah cmp dword ptr [rip+5f071e87h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 87 1e 07 5f 00}
0081h je short 0089h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0083h call qword ptr [rip+5f06557fh]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 55 06 5f}
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
; scalbn_(64f,32i)[164] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xd2,0x94,0xb9,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x50,0x03,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0xff,0x15,0x04,0xdb,0x9d,0xff,0xc6,0x47,0x0c,0x01,0x83,0x3d,0xb9,0x1d,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xb1,0x54,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 94 b9 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7fb0350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 03 fb c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh call qword ptr [rip-6224fch]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 04 db 9d ff}
0074h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0078h cmp dword ptr [rip+5f071db9h],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d b9 1d 07 5f 00}
007fh je short 0087h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0081h call qword ptr [rip+5f0654b1h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 54 06 5f}
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
; sqrt_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x94,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x98,0x03,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x48,0xda,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0xed,0x1c,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0xe5,0x53,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 94 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb0398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 03 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-6225b8h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 da 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f071cedh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d ed 1c 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f0653e5h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 53 06 5f}
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
; tgamma_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0x93,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0x03,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0x88,0xd9,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x1d,0x1c,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x15,0x53,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 93 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb03e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 03 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-622678h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 d9 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f071c1dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 1d 1c 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065315h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 53 06 5f}
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
; trunc_(64f)[160] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0x92,0xb9,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x28,0x04,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x16,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0xff,0x15,0xc8,0xd8,0x9d,0xff,0xc6,0x46,0x0c,0x01,0x83,0x3d,0x4d,0x1b,0x07,0x5f,0x00,0x74,0x06,0xff,0x15,0x45,0x52,0x06,0x5f,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 92 b9 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb0428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 04 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+16h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 16 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah call qword ptr [rip-622738h]            ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 d8 9d ff}
0070h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0074h cmp dword ptr [rip+5f071b4dh],0         ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[7]{83 3d 4d 1b 07 5f 00}
007bh je short 0083h                          ; JE rel8 || 74 cb || encoded[2]{74 06}
007dh call qword ptr [rip+5f065245h]          ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 52 06 5f}
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