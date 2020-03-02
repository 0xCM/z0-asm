------------------------------------------------------------------------------------------------------------------------
; double cbrt(double x), hex://libm/libm?cbrt#cbrt_(64f)
; cbrt_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc4,0xb7,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x88,0x4f,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x68,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b7 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb4f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 4f fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 57 fb c7 f7 7f 00 00}
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
; ceil_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0xb6,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd0,0x4f,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x78,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b6 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb4fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 4f fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 57 fb c7 f7 7f 00 00}
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
; copysign_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xff,0xb5,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x18,0x50,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x88,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff b5 af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 50 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb5788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 57 fb c7 f7 7f 00 00}
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
; erfc_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x14,0xb5,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0x50,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 b5 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb50a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 50 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb57a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 57 fb c7 f7 7f 00 00}
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
; erf_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x34,0xb4,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0x50,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x98,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b4 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 50 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 57 fb c7 f7 7f 00 00}
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
; exp2_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x54,0xb3,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf0,0x50,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b3 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb50f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 50 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb57b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 57 fb c7 f7 7f 00 00}
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
; exp_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x74,0xb2,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x38,0x51,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xc8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 b2 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 51 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb57c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 57 fb c7 f7 7f 00 00}
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
; expm1_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x94,0xb1,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x80,0x51,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xd8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b1 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 51 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb57d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 57 fb c7 f7 7f 00 00}
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
; fabs_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xb4,0xb0,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xc8,0x51,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xe8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b0 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb51c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 51 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb57e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 57 fb c7 f7 7f 00 00}
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
; fdim_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xcf,0xaf,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x10,0x52,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xf8,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf af af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 52 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb57f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 57 fb c7 f7 7f 00 00}
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
; floor_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0xae,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x58,0x52,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x08,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 ae af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 52 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 58 fb c7 f7 7f 00 00}
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
; fma_(64f,64f,64f)[198] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0xc5,0xfb,0x11,0x55,0x20,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xfa,0xad,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x55,0x20,0xc5,0xfb,0x10,0x45,0x10,0xc5,0xfb,0x10,0x4d,0x18,0x45,0x33,0xdb,0x48,0xb8,0xa0,0x52,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x18,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0031h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ad af 5e}
0036h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0039h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
003ch mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0040h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0043h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0047h vmovsd xmm2,qword ptr [rbp+20h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 55 20}
004ch vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0051h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0056h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0059h mov rax,7ff7c7fb52a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 52 fb c7 f7 7f 00 00}
0063h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0067h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
006eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0072h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0076h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
007ah mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
007eh mov rax,7ff7c7fb5818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 58 fb c7 f7 7f 00 00}
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
; fmax_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x0f,0xad,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe8,0x52,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x28,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ad af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb52e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 52 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb5828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 58 fb c7 f7 7f 00 00}
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
; fmin_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x1f,0xac,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x30,0x53,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x38,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ac af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 53 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb5838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 58 fb c7 f7 7f 00 00}
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
; fmod_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x2f,0xab,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x78,0x53,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x48,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ab af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 53 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb5848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 58 fb c7 f7 7f 00 00}
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
; hypot_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x0f,0xaa,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x08,0x54,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x68,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f aa af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 54 fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb5868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 58 fb c7 f7 7f 00 00}
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
; ilogb_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0xa9,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x50,0x54,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x78,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a9 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 54 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 58 fb c7 f7 7f 00 00}
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
; ldexp_(64f,32i)[182] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x42,0xa8,0xaf,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x98,0x54,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x88,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a8 af 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7fb5498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 54 fb c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh mov rax,7ff7c7fb5888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 58 fb c7 f7 7f 00 00}
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
; lgamma_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0xa7,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xe0,0x54,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x98,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a7 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb54e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 54 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 58 fb c7 f7 7f 00 00}
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
; llrint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x84,0xa6,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x28,0x55,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 a6 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 55 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 58 fb c7 f7 7f 00 00}
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
; llround_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa4,0xa5,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x70,0x55,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 a5 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 55 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 58 fb c7 f7 7f 00 00}
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
; log10_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc4,0xa4,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb8,0x55,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xc8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 a4 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb55b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 55 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 58 fb c7 f7 7f 00 00}
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
; log1p_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0xa3,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x00,0x56,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xd8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a3 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 56 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 58 fb c7 f7 7f 00 00}
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
; log2_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0xa3,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x48,0x56,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xe8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 a3 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 56 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 58 fb c7 f7 7f 00 00}
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
; log_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0xa2,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x90,0x56,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xf8,0x58,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a2 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 56 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb58f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 58 fb c7 f7 7f 00 00}
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
; lrint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0xa1,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd8,0x56,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x08,0x59,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a1 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb56d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 56 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 59 fb c7 f7 7f 00 00}
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
; lround_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0xa0,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x20,0x57,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x18,0x59,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x55,0x90,0x48,0x89,0x56,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 a0 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 57 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb5918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 59 fb c7 f7 7f 00 00}
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
; nearbyint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x24,0x9f,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd8,0x59,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x00,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 9f af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb59d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 59 fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb6100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 61 fb c7 f7 7f 00 00}
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
; nextafter_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x3f,0x9e,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x20,0x5a,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x10,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 9e af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 5a fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb6110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 61 fb c7 f7 7f 00 00}
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
; pow_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x4f,0x9d,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x68,0x5a,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x20,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 9d af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 5a fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb6120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 61 fb c7 f7 7f 00 00}
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
; remainder_(64f,64f)[188] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0xc5,0xfb,0x11,0x4d,0x18,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x5f,0x9c,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x4d,0x18,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xb0,0x5a,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x30,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ch call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 9c af 5e}
0031h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0034h mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0037h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
003bh mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
003eh mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
0042h vmovsd xmm1,qword ptr [rbp+18h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 4d 18}
0047h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
004ch xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004fh mov rax,7ff7c7fb5ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 5a fb c7 f7 7f 00 00}
0059h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
005dh lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0064h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0068h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
006ch mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0070h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
0074h mov rax,7ff7c7fb6130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 61 fb c7 f7 7f 00 00}
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
; rint_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x44,0x9b,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x40,0x5b,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x50,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 9b af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 5b fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb6150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 61 fb c7 f7 7f 00 00}
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
; round_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x64,0x9a,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x88,0x5b,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x60,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 9a af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 5b fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb6160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 61 fb c7 f7 7f 00 00}
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
; scalbln_(64f,64i)[184] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x48,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x81,0x99,0xaf,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x48,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xd0,0x5b,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x70,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
002ah call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 99 af 5e}
002fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0032h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0035h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0039h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003ch mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
0040h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0043h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0048h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
004bh mov rax,7ff7c7fb5bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 5b fb c7 f7 7f 00 00}
0055h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0059h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
0060h mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0064h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0068h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ch mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
0070h mov rax,7ff7c7fb6170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 61 fb c7 f7 7f 00 00}
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
; scalbn_(64f,32i)[182] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0x8b,0xf2,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xa2,0x98,0xaf,0x5e,0x48,0x8b,0xf8,0x48,0x8b,0xd4,0x48,0x89,0x55,0xa8,0x48,0x8b,0xd5,0x48,0x89,0x55,0xb8,0x8b,0xd6,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x18,0x5c,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x00,0x48,0xb8,0x80,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x47,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x47,0x10,0xc6,0x47,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0029h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 98 af 5e}
002eh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0031h mov rdx,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d4}
0034h mov [rbp-58h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 a8}
0038h mov rdx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d5}
003bh mov [rbp-48h],rdx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 55 b8}
003fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0041h vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0046h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0049h mov rax,7ff7c7fb5c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 5c fb c7 f7 7f 00 00}
0053h mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0057h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005eh mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
0062h lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0066h mov [rdi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 47 10}
006ah mov byte ptr [rdi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 47 0c 00}
006eh mov rax,7ff7c7fb6180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 61 fb c7 f7 7f 00 00}
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
; sqrt_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xc4,0x97,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0x60,0x5c,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0x90,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 97 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 5c fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb6190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 61 fb c7 f7 7f 00 00}
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
; tgamma_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0xe4,0x96,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xa8,0x5c,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xa0,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 96 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 5c fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb61a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 61 fb c7 f7 7f 00 00}
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
; trunc_(64f)[178] = {0x55,0x41,0x57,0x41,0x56,0x41,0x55,0x41,0x54,0x57,0x56,0x53,0x48,0x83,0xec,0x68,0xc5,0xf8,0x77,0x48,0x8d,0xac,0x24,0xa0,0x00,0x00,0x00,0xc5,0xfb,0x11,0x45,0x10,0x48,0x8d,0x4d,0x88,0x49,0x8b,0xd2,0xe8,0x04,0x96,0xaf,0x5e,0x48,0x8b,0xf0,0x4c,0x8b,0xdc,0x4c,0x89,0x5d,0xa8,0x4c,0x8b,0xdd,0x4c,0x89,0x5d,0xb8,0xc5,0xfb,0x10,0x45,0x10,0x45,0x33,0xdb,0x48,0xb8,0xf0,0x5c,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0x48,0x89,0x45,0x98,0x48,0x8d,0x05,0x1c,0x00,0x00,0x00,0x48,0x89,0x45,0xb0,0x48,0x8d,0x45,0x88,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x00,0x48,0xb8,0xb0,0x61,0xfb,0xc7,0xf7,0x7f,0x00,0x00,0xff,0x10,0xc6,0x46,0x0c,0x01,0x48,0xba,0x78,0x4b,0x64,0x27,0xf8,0x7f,0x00,0x00,0x83,0x3a,0x00,0x74,0x0c,0x48,0xb9,0x78,0x82,0x63,0x27,0xf8,0x7f,0x00,0x00,0xff,0x11,0x48,0x8b,0x45,0x90,0x48,0x89,0x46,0x10,0xc6,0x46,0x0c,0x01,0x48,0x8d,0x65,0xc8,0x5b,0x5e,0x5f,0x41,0x5c,0x41,0x5d,0x41,0x5e,0x41,0x5f,0x5d,0xc3}
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
0027h call 7ff82716c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 96 af 5e}
002ch mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
002fh mov r11,rsp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dc}
0032h mov [rbp-58h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d a8}
0036h mov r11,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b dd}
0039h mov [rbp-48h],r11                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 5d b8}
003dh vmovsd xmm0,qword ptr [rbp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 45 10}
0042h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0045h mov rax,7ff7c7fb5cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 5c fb c7 f7 7f 00 00}
004fh mov [rbp-68h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 98}
0053h lea rax,[rip+1ch]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 1c 00 00 00}
005ah mov [rbp-50h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 45 b0}
005eh lea rax,[rbp-78h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 45 88}
0062h mov [rsi+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 46 10}
0066h mov byte ptr [rsi+0ch],0                ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 46 0c 00}
006ah mov rax,7ff7c7fb61b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 61 fb c7 f7 7f 00 00}
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
