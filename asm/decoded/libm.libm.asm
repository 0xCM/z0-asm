------------------------------------------------------------------------------------------------------------------------
; double cbrt(double x), hex://libm/libm?cbrt#cbrt_(64f)
; cbrt_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x85,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x68,0xf7,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x48,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 85 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 f7 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ff48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ceil(double x), hex://libm/libm?ceil#ceil_(64f)
; ceil_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x85,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb0,0xf7,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x58,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 85 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 f7 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ff58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double copysign(double x, double y), hex://libm/libm?copysign#copysign_(64f,64f)
; copysign_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x1f,0x84,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf8,0xf7,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x68,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 84 da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3f7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 f7 e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e3ff68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 ff e3 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double erfc(double x), hex://libm/libm?erfc#erfc_(64f)
; erfc_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0x83,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x88,0xf8,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x88,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 83 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 f8 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ff88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double erf(double x), hex://libm/libm?erf#erf_(64f)
; erf_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0x82,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x40,0xf8,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x78,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 82 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 f8 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ff78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double exp2(double x), hex://libm/libm?exp2#exp2_(64f)
; exp2_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x74,0x81,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd0,0xf8,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x98,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 81 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 f8 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ff98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double exp(double x), hex://libm/libm?exp#exp_(64f)
; exp_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x94,0x80,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x18,0xf9,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa8,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 80 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 f9 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ffa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double expm1(double x), hex://libm/libm?expm1#expm1_(64f)
; expm1_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0x7f,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0xf9,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb8,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 7f da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 f9 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ffb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fabs(double x), hex://libm/libm?fabs#fabs_(64f)
; fabs_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xd4,0x7e,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0xf9,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xc8,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 7e da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3f9a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 f9 e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ffc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fdim(double x, double y), hex://libm/libm?fdim#fdim_(64f,64f)
; fdim_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xef,0x7d,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf0,0xf9,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xd8,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 7d da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3f9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 f9 e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e3ffd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 ff e3 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double floor(double x), hex://libm/libm?floor#floor_(64f)
; floor_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x7d,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x38,0xfa,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xe8,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 7d da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fa38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 fa e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e3ffe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 ff e3 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fma(double x, double y, double z), hex://libm/libm?fma#fma_(64f,64f,64f)
; fma_(64f,64f,64f)[198] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0xc5,0xfb,0x11,0x55,0x20,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x1a,0x7c,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x55,0x20,0xc5,0xfb,0x10,0x45,0x10,0xc5,0xfb,0x10,0x4d,0x18,0x45,0x33,0xdb,0x48,0xb8,0x80,0xfa,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x20,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0031h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 7c da 5e}
0036h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0039h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
003ch mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0040h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0043h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0047h vmovsd xmm2,qword ptr [rbp+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 55 20}
004ch vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0051h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0056h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0059h mov rax,7ff7c7e3fa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 fa e3 c7 f7 7f 00 00}
0063h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0067h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
006eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0072h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0076h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
007ah mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
007eh mov rax,7ff7c7e40020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 00 e4 c7 f7 7f 00 00}
0088h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
008ah mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
008eh mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0098h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
009bh je short 00a9h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
009dh mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
00a7h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
00a9h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00adh mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00b1h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00b5h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00b9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00bch pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00beh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00c0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00c2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00c4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00c5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmax(double x, double y), hex://libm/libm?fmax#fmax_(64f,64f)
; fmax_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0x7b,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc8,0xfa,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x30,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 7b da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3fac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 fa e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 00 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmin(double x, double y), hex://libm/libm?fmin#fmin_(64f,64f)
; fmin_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x3f,0x7a,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x10,0xfb,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x40,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 7a da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3fb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 fb e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 00 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double fmod(double x, double y), hex://libm/libm?fmod#fmod_(64f,64f)
; fmod_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x4f,0x79,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x58,0xfb,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x50,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 79 da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3fb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 fb e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 00 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double hypot(double x, double y), hex://libm/libm?hypot#hypot_(64f,64f)
; hypot_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0x78,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0xfb,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x70,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 78 da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e3fbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 fb e3 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 00 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int ilogb(double x), hex://libm/libm?ilogb#ilogb_(64f)
; ilogb_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x77,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x30,0xfc,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x80,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 77 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fc30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 fc e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0099h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double ldexp(double x, int y), hex://libm/libm?ldexp#ldexp_(64f,32i)
; ldexp_(64f,32i)[182] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x62,0x76,0xda,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0xfc,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x90,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 76 da 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7e3fc78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 fc e3 c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh mov rax,7ff7c7e40090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 00 e4 c7 f7 7f 00 00}
0078h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
007ah mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
007eh mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0088h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
008bh je short 0099h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
008dh mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0097h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0099h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
009dh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
00a1h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
00a5h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ach pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aeh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double lgamma(double x), hex://libm/libm?lgamma#lgamma_(64f)
; lgamma_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0x75,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc0,0xfc,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 75 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fcc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 fc e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long llrint(double x), hex://libm/libm?llrint#llrint_(64f)
; llrint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa4,0x74,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x08,0xfd,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 74 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fd08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 fd e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0099h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long llround(double x), hex://libm/libm?llround#llround_(64f)
; llround_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc4,0x73,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x50,0xfd,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xc0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 73 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 fd e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0099h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log10(double x), hex://libm/libm?log10#log10_(64f)
; log10_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x72,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x98,0xfd,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xd0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 72 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fd98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 fd e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log1p(double x), hex://libm/libm?log1p#log1p_(64f)
; log1p_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x72,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0xfd,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xe0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 72 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 fd e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log2(double x), hex://libm/libm?log2#log2_(64f)
; log2_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0x71,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x28,0xfe,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xf0,0x00,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 71 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fe28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 fe e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e400f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 00 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double log(double x), hex://libm/libm?log#log_(64f)
; log_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x70,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x70,0xfe,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x00,0x01,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 70 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3fe70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 fe e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 01 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long lrint(double x), hex://libm/libm?lrint#lrint_(64f)
; lrint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0x6f,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb8,0xfe,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x10,0x01,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 6f da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3feb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 fe e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 01 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0099h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long lround(double x), hex://libm/libm?lround#lround_(64f)
; lround_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0x6e,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x00,0xff,0xe3,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x20,0x01,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 6e da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e3ff00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ff e3 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 01 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rdx,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 55 90}
0099h mov [rsi+10h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 56 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double nearbyint(double x), hex://libm/libm?nearbyint#nearbyint_(64f)
; nearbyint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x6d,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0x01,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x08,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 6d da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e401e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 01 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double nextafter(double x, double y), hex://libm/libm?nextafter#nextafter_(64f,64f)
; nextafter_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x5f,0x6c,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x28,0x02,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x18,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 6c da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e40228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 02 e4 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 09 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double pow(double x, double y), hex://libm/libm?pow#pow_(64f,64f)
; pow_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x6f,0x6b,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x70,0x02,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x28,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6b da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e40270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 02 e4 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 09 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double remainder(double x, double y), hex://libm/libm?remainder#remainder_(64f,64f)
; remainder_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x7f,0x6a,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb8,0x02,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x38,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 6a da 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7e402b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 02 e4 c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7e40938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 09 e4 c7 f7 7f 00 00}
007eh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0080h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
0084h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008eh cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0091h je short 009fh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0093h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
009dh call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009fh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
00a3h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
00a7h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00abh lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00afh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00b0h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00b1h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00b2h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b4h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b6h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b8h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00bah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00bbh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double rint(double x), hex://libm/libm?rint#rint_(64f)
; rint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0x69,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x48,0x03,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x58,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 69 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e40348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 03 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double round(double x), hex://libm/libm?round#round_(64f)
; round_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0x68,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x90,0x03,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x68,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 68 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e40390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 03 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double scalbln(double x, long y), hex://libm/libm?scalbln#scalbln_(64f,64i)
; scalbln_(64f,64i)[184] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa1,0x67,0xda,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x48,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd8,0x03,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x78,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ah call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 67 da 5e}
002fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0032h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0035h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0039h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003ch mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
0040h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0043h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0048h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004bh mov rax,7ff7c7e403d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 03 e4 c7 f7 7f 00 00}
0055h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0059h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0060h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0064h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0068h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ch mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
0070h mov rax,7ff7c7e40978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 09 e4 c7 f7 7f 00 00}
007ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
007ch mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
0080h mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
008ah cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
008dh je short 009bh                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
008fh mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0099h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
009bh mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
009fh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
00a3h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
00a7h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00abh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00ach pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00adh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00aeh pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00b0h pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b2h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b4h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b6h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double scalbn(double x, int y), hex://libm/libm?scalbn#scalbn_(64f,32i)
; scalbn_(64f,32i)[182] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc2,0x66,0xda,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x20,0x04,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x88,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 66 da 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7e40420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 04 e4 c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh mov rax,7ff7c7e40988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 09 e4 c7 f7 7f 00 00}
0078h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
007ah mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
007eh mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0088h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
008bh je short 0099h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
008dh mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0097h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0099h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
009dh mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
00a1h mov byte ptr [rdi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 01}
00a5h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a9h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00ach pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aeh pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00b0h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00b2h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b4h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double sqrt(double x), hex://libm/libm?sqrt#sqrt_(64f)
; sqrt_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x65,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x68,0x04,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x98,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 65 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e40468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 04 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e40998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double tgamma(double x), hex://libm/libm?tgamma#tgamma_(64f)
; tgamma_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x65,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb0,0x04,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa8,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 65 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e404b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 04 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e409a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double trunc(double x), hex://libm/libm?trunc#trunc_(64f)
; trunc_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0x64,0xda,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf8,0x04,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb8,0x09,0xe4,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 64 da 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7e404f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 04 e4 c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7e409b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 09 e4 c7 f7 7f 00 00}
0074h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0076h mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
007ah mov rdx,7ff827644b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 78 4b 64 27 f8 7f 00 00}
0084h cmp dword ptr [rdx],0                   ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 3a 00}
0087h je short 0095h                          ; JE rel8 || 74 cb || encoded[2]{74 0c}
0089h mov rcx,7ff827638278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 82 63 27 f8 7f 00 00}
0093h call qword ptr [rcx]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 11}
0095h mov rax,[rbp-70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 45 90}
0099h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
009dh mov byte ptr [rsi+0ch],1                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 01}
00a1h lea rsp,[rbp-38h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 65 c8}
00a5h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
00a6h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
00a7h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
00a8h pop r12                                 ; POP r64 || 58+ro || encoded[2]{41 5c}
00aah pop r13                                 ; POP r64 || 58+ro || encoded[2]{41 5d}
00ach pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
00aeh pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
00b0h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
00b1h ret                                     ; RET || C3 || encoded[1]{c3}
