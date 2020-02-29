------------------------------------------------------------------------------------------------------------------------
; Perm<byte> identity<byte>(byte n), hex://intrinsics/permute?identity#identity_g[8u](8u)
; identity_g[8u](8u)[122] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x0f,0xb6,0xca,0xff,0xc9,0x0f,0xb6,0xd1,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x28,0x88,0x08,0x44,0x88,0x40,0x01,0x33,0xc9,0x4c,0x0f,0xbf,0x44,0x24,0x28,0xe8,0x9d,0xfb,0xff,0xff,0x48,0x8b,0xc8,0xe8,0xc5,0xfb,0xff,0xff,0x48,0x85,0xc0,0x75,0x06,0x33,0xd2,0x33,0xc9,0xeb,0x07,0x48,0x8d,0x50,0x10,0x8b,0x48,0x08,0x48,0x8d,0x44,0x24,0x30,0x48,0x89,0x10,0x89,0x48,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x23,0x6c,0xc1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0019h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
001bh movzx edx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d1}
001eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0020h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0023h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0028h mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
002ah mov [rax+1],r8b                         ; MOV r/m8, r8 || 88 /r || encoded[4]{44 88 40 01}
002eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0030h movsx r8,word ptr [rsp+28h]             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[6]{4c 0f bf 44 24 28}
0036h call 7ff7c864edd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d fb ff ff}
003bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
003eh call 7ff7c864ee08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 fb ff ff}
0043h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0046h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0048h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004ah xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004ch jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
004eh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
005ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
005dh mov [rax+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 48 08}
0060h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0063h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0068h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 6c c1 5e}
006dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0072h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm<ushort> identity<ushort>(ushort n), hex://intrinsics/permute?identity#identity_g[16u](16u)
; identity_g[16u](16u)[122] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x0f,0xb7,0xca,0xff,0xc9,0x0f,0xb7,0xd1,0x33,0xc9,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x28,0x88,0x08,0x66,0x44,0x89,0x40,0x02,0x33,0xc9,0x44,0x8b,0x44,0x24,0x28,0xe8,0x65,0xfd,0xff,0xff,0x48,0x8b,0xc8,0xe8,0x7d,0xfd,0xff,0xff,0x48,0x85,0xc0,0x75,0x06,0x33,0xd2,0x33,0xc9,0xeb,0x07,0x48,0x8d,0x50,0x10,0x8b,0x48,0x08,0x48,0x8d,0x44,0x24,0x30,0x48,0x89,0x10,0x89,0x48,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x83,0x6b,0xc1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0019h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
001bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
001eh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0020h xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0023h lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0028h mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
002ah mov [rax+2],r8w                         ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 44 89 40 02}
002fh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0031h mov r8d,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 44 24 28}
0036h call 7ff7c864f040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 fd ff ff}
003bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
003eh call 7ff7c864f060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d fd ff ff}
0043h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0046h jne short 004eh                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0048h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
004ah xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
004ch jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
004eh lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
0052h mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0055h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
005ah mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
005dh mov [rax+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 48 08}
0060h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
0063h lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0068h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 6b c1 5e}
006dh movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006fh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
0072h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0076h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0077h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0078h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm<uint> identity<uint>(uint n), hex://intrinsics/permute?identity#identity_g[32u](32u)
; identity_g[32u](32u)[115] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x33,0xc9,0xff,0xca,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x28,0x44,0x88,0x00,0x89,0x48,0x04,0x33,0xc9,0x4c,0x8b,0x44,0x24,0x28,0xe8,0x24,0xfc,0xff,0xff,0x48,0x8b,0xc8,0xe8,0x3c,0xfc,0xff,0xff,0x48,0x85,0xc0,0x75,0x06,0x33,0xd2,0x33,0xc9,0xeb,0x07,0x48,0x8d,0x50,0x10,0x8b,0x48,0x08,0x48,0x8d,0x44,0x24,0x30,0x48,0x89,0x10,0x89,0x48,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0xea,0x66,0xc1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0018h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
001ah xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
001dh lea rax,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 28}
0022h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0025h mov [rax+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 48 04}
0028h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
002ah mov r8,[rsp+28h]                        ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 44 24 28}
002fh call 7ff7c864f398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 fc ff ff}
0034h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0037h call 7ff7c864f3b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fc ff ff}
003ch test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
003fh jne short 0047h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0041h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0043h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0045h jmp short 004eh                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
0047h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
004bh mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
004eh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0053h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0056h mov [rax+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 48 08}
0059h mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005ch lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0061h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 66 c1 5e}
0066h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0068h mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006bh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0072h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm<ulong> identity<ulong>(ulong n), hex://intrinsics/permute?identity#identity_g[64u](64u)
; identity_g[64u](64u)[117] = {0x57,0x56,0x53,0x48,0x83,0xec,0x40,0x33,0xc0,0x48,0x89,0x44,0x24,0x30,0x48,0x89,0x44,0x24,0x38,0x48,0x8b,0xd9,0x33,0xc9,0x48,0xff,0xca,0x45,0x33,0xc0,0x48,0x8d,0x44,0x24,0x20,0x44,0x88,0x00,0x48,0x89,0x48,0x08,0x33,0xc9,0x4c,0x8d,0x44,0x24,0x20,0xe8,0x8a,0xfd,0xff,0xff,0x48,0x8b,0xc8,0xe8,0xa2,0xfd,0xff,0xff,0x48,0x85,0xc0,0x75,0x06,0x33,0xd2,0x33,0xc9,0xeb,0x07,0x48,0x8d,0x50,0x10,0x8b,0x48,0x08,0x48,0x8d,0x44,0x24,0x30,0x48,0x89,0x10,0x89,0x48,0x08,0x48,0x8b,0xfb,0x48,0x8d,0x74,0x24,0x30,0xe8,0x58,0x66,0xc1,0x5e,0x48,0xa5,0x48,0x8b,0xc3,0x48,0x83,0xc4,0x40,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
000eh mov [rsp+38h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 38}
0013h mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0016h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0018h dec rdx                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{48 ff ca}
001bh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
001eh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0023h mov [rax],r8b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{44 88 00}
0026h mov [rax+8],rcx                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 48 08}
002ah xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
002ch lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0031h call 7ff7c864f590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a fd ff ff}
0036h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0039h call 7ff7c864f5b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 fd ff ff}
003eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0041h jne short 0049h                         ; JNE rel8 || 75 cb || encoded[2]{75 06}
0043h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0045h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
0047h jmp short 0050h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
0049h lea rdx,[rax+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 10}
004dh mov ecx,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 48 08}
0050h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0055h mov [rax],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 10}
0058h mov [rax+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 48 08}
005bh mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005eh lea rsi,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 30}
0063h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 66 c1 5e}
0068h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006ah mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006dh add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0071h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm4L:byte assemble(Perm4L:byte x0, Perm4L:byte x1, Perm4L:byte x2, Perm4L:byte x3), hex://intrinsics/permute?assemble#assemble_(Perm4L~8u,Perm4L~8u,Perm4L~8u,Perm4L~8u)
; assemble_(Perm4L~8u,Perm4L~8u,Perm4L~8u,Perm4L~8u)[38] = {0x0f,0x1f,0x44,0x00,0x00,0x0f,0xb6,0xc1,0x0f,0xb6,0xd2,0xc1,0xe2,0x02,0x0b,0xc2,0x41,0x0f,0xb6,0xd0,0xc1,0xe2,0x04,0x0b,0xc2,0x41,0x0f,0xb6,0xd1,0xc1,0xe2,0x06,0x0b,0xc2,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
000eh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0010h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
0014h shl edx,4                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 04}
0017h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0019h movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
001dh shl edx,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 06}
0020h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0022h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm8L:uint assemble(Perm8L:uint x0, Perm8L:uint x1, Perm8L:uint x2, Perm8L:uint x3, Perm8L:uint x4, Perm8L:uint x5, Perm8L:uint x6, Perm8L:uint x7), hex://intrinsics/permute?assemble#assemble_(Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u)
; assemble_(Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u,Perm8L~32u)[61] = {0x0f,0x1f,0x44,0x00,0x00,0xc1,0xe2,0x03,0x0b,0xd1,0x41,0xc1,0xe0,0x06,0x41,0x0b,0xd0,0x41,0xc1,0xe1,0x09,0x41,0x0b,0xd1,0x8b,0x44,0x24,0x28,0xc1,0xe0,0x0c,0x0b,0xc2,0x8b,0x54,0x24,0x30,0xc1,0xe2,0x0f,0x0b,0xc2,0x8b,0x54,0x24,0x38,0xc1,0xe2,0x12,0x0b,0xc2,0x8b,0x54,0x24,0x40,0xc1,0xe2,0x15,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,3                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 03}
0008h or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
000ah shl r8d,6                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e0 06}
000eh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0011h shl r9d,9                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[4]{41 c1 e1 09}
0015h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
0018h mov eax,[rsp+28h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 44 24 28}
001ch shl eax,0ch                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e0 0c}
001fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0021h mov edx,[rsp+30h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 30}
0025h shl edx,0fh                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 0f}
0028h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
002ah mov edx,[rsp+38h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 38}
002eh shl edx,12h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 12}
0031h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0033h mov edx,[rsp+40h]                       ; MOV r32, r/m32 || o32 8B /r || encoded[4]{8b 54 24 40}
0037h shl edx,15h                             ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 15}
003ah or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Perm16L:ulong assemble(Perm16L:ulong x0, Perm16L:ulong x1, Perm16L:ulong x2, Perm16L:ulong x3, Perm16L:ulong x4, Perm16L:ulong x5, Perm16L:ulong x6, Perm16L:ulong x7, Perm16L:ulong x8, Perm16L:ulong x9, Perm16L:ulong xA, Perm16L:ulong xB, Perm16L:ulong xC, Perm16L:ulong xD, Perm16L:ulong xE, Perm16L:ulong xF), hex://intrinsics/permute?assemble#assemble_(Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u)
; assemble_(Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u,Perm16L~64u)[174] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0xc1,0xe2,0x04,0x48,0x0b,0xd1,0x49,0xc1,0xe0,0x08,0x49,0x0b,0xd0,0x49,0xc1,0xe1,0x0c,0x49,0x0b,0xd1,0x48,0x8b,0x44,0x24,0x28,0x48,0xc1,0xe0,0x10,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x30,0x48,0xc1,0xe2,0x14,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x38,0x48,0xc1,0xe2,0x18,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x40,0x48,0xc1,0xe2,0x1c,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x48,0x48,0xc1,0xe2,0x20,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x50,0x48,0xc1,0xe2,0x24,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x58,0x48,0xc1,0xe2,0x28,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x60,0x48,0xc1,0xe2,0x2c,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x68,0x48,0xc1,0xe2,0x30,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x70,0x48,0xc1,0xe2,0x34,0x48,0x0b,0xc2,0x48,0x8b,0x54,0x24,0x78,0x48,0xc1,0xe2,0x38,0x48,0x0b,0xc2,0x48,0x8b,0x94,0x24,0x80,0x00,0x00,0x00,0x48,0xc1,0xe2,0x3c,0x48,0x0b,0xc2,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl rdx,4                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 04}
0009h or rdx,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d1}
000ch shl r8,8                                ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e0 08}
0010h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
0013h shl r9,0ch                              ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{49 c1 e1 0c}
0017h or rdx,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d1}
001ah mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
001fh shl rax,10h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 10}
0023h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0026h mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
002bh shl rdx,14h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 14}
002fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0032h mov rdx,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 38}
0037h shl rdx,18h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 18}
003bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
003eh mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0043h shl rdx,1ch                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 1c}
0047h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
004ah mov rdx,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 48}
004fh shl rdx,20h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 20}
0053h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0056h mov rdx,[rsp+50h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 50}
005bh shl rdx,24h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 24}
005fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0062h mov rdx,[rsp+58h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 58}
0067h shl rdx,28h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 28}
006bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
006eh mov rdx,[rsp+60h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 60}
0073h shl rdx,2ch                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 2c}
0077h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
007ah mov rdx,[rsp+68h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 68}
007fh shl rdx,30h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 30}
0083h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0086h mov rdx,[rsp+70h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 70}
008bh shl rdx,34h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 34}
008fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0092h mov rdx,[rsp+78h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 78}
0097h shl rdx,38h                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 38}
009bh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
009eh mov rdx,[rsp+80h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[8]{48 8b 94 24 80 00 00 00}
00a6h shl rdx,3ch                             ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e2 3c}
00aah or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00adh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit literal(Perm4L:byte src, int index, out Perm4L:byte dst), hex://intrinsics/permute?literal#literal_(Perm4L~8u,32i,Perm4L~8u~out)
; literal_(Perm4L~8u,32i,Perm4L~8u~out)[59] = {0x0f,0x1f,0x44,0x00,0x00,0xd1,0xe2,0x0f,0xb6,0xc2,0x8d,0x50,0x01,0x0f,0xb6,0xd2,0x0f,0xb6,0xc9,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0x0f,0xb6,0xc0,0x41,0x88,0x00,0x41,0x0f,0xb6,0x00,0x83,0xf8,0x03,0x0f,0x9e,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e2}
0007h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000ah lea edx,[rax+1]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 01}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0013h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0015h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0017h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001ah shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0022h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
002dh movzx eax,byte ptr [r8]                 ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 00}
0031h cmp eax,3                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 03}
0034h setle al                                ; SETLE r/m8 || 0F 9E /r || encoded[3]{0f 9e c0}
0037h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit literal(Perm8L:uint src, int index, out Perm8L:uint dst), hex://intrinsics/permute?literal#literal_(Perm8L~32u,32i,Perm8L~32u~out)
; literal_(Perm8L~32u,32i,Perm8L~32u~out)[53] = {0x0f,0x1f,0x44,0x00,0x00,0x8d,0x04,0x52,0x0f,0xb6,0xc0,0x8d,0x50,0x02,0x0f,0xb6,0xd2,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0x78,0xf7,0xc1,0x41,0x89,0x00,0x41,0x8b,0x00,0x83,0xf8,0x07,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h lea eax,[rdx+rdx*2]                     ; LEA r32, m || o32 8D /r || encoded[3]{8d 04 52}
0008h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000bh lea edx,[rax+2]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 02}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0015h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0018h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0020h bextr eax,ecx,eax                       ; BEXTR r32a, r/m32, r32b || VEX.LZ.0F38.W0 F7 /r || encoded[5]{c4 e2 78 f7 c1}
0025h mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0028h mov eax,[r8]                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b 00}
002bh cmp eax,7                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 07}
002eh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0031h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0034h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit literal(Perm16L:ulong src, int index, out Perm16L:ulong dst), hex://intrinsics/permute?literal#literal_(Perm16L~64u,32i,Perm16L~64u~out)
; literal_(Perm16L~64u,32i,Perm16L~64u~out)[54] = {0x0f,0x1f,0x44,0x00,0x00,0xc1,0xe2,0x02,0x0f,0xb6,0xc2,0x8d,0x50,0x03,0x0f,0xb6,0xd2,0x2b,0xd0,0xff,0xc2,0x0f,0xb6,0xd2,0xc1,0xe2,0x08,0x0b,0xc2,0x0f,0xb7,0xc0,0xc4,0xe2,0xf8,0xf7,0xc1,0x49,0x89,0x00,0x49,0x8b,0x00,0x48,0x83,0xf8,0x0f,0x0f,0x96,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h shl edx,2                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 02}
0008h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
000bh lea edx,[rax+3]                         ; LEA r32, m || o32 8D /r || encoded[3]{8d 50 03}
000eh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0011h sub edx,eax                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b d0}
0013h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0015h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0018h shl edx,8                               ; SHL r/m32, imm8 || o32 C1 /4 ib || encoded[3]{c1 e2 08}
001bh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0020h bextr rax,rcx,rax                       ; BEXTR r64a, r/m64, r64b || VEX.LZ.0F38.W1 F7 /r || encoded[5]{c4 e2 f8 f7 c1}
0025h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0028h mov rax,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 00}
002bh cmp rax,0fh                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 0f}
002fh setbe al                                ; SETBE r/m8 || 0F 96 /r || encoded[3]{0f 96 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
