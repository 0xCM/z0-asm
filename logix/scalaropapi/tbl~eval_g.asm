------------------------------------------------------------------------------------------------------------------------
; byte eval<byte>(TernaryBitLogicKind:byte kind, byte a, byte b, byte c)
; tbl~eval_g8u[466] = {57 56 53 48 83 ec 30 8b f1 40 0f b6 ce ff c9 83 f9 5e 0f 87 9d 08 00 00 8b c9 48 8d 05 c7 08 00 00 8b 04 88 4c 8d 15 de ff ff ff 49 03 c2 ff e0 45 0f b6 c0 45 0f b6 c9 45 0b c1 41 0f b6 c8 0f b6 d2 0b ca f7 d1 0f b6 c1 e9 5c 08 00 00 41 0f b6 c0 44 0f b6 c2 41 0b c0 8b d0 f7 d2 0f b6 ca 45 0f b6 c9 41 23 c9 0f b6 c1 e9 3b 08 00 00 41 0f b6 c0 0f b6 d2 0b c2 44 8b c0 41 f7 d0 41 0f b6 c0 e9 23 08 00 00 0f b6 c2 45 0f b6 c9 41 0b c1 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c1 e9 03 08 00 00 41 0f b6 c1 0f b6 d2 0b c2 44 8b c8 41 f7 d1 41 0f b6 c1 e9 eb 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 45 0f b6 c9 45 33 c1 41 0f b6 c0 0f b6 c9 23 c8 0f b6 c1 e9 c5 07 00 00 41 0f b6 c0 45 0f b6 c1 41 23 c0 44 0f b6 c8 0f b6 d2 41 0b d1 8b ca f7 d1 0f b6 c1 e9 a4 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c9 45 0f b6 c9 41 23 c9 0f b6 c1 e9 81 07 00 00 41 0f b6 c0 45 0f b6 c9 41 33 c1 44 0f b6 c0 0f b6 d2 41 0b d0 8b ca f7 d1 0f b6 c1 e9 60 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c9 41 23 c9 0f b6 c1 e9 47 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 81 f0 ff 00 00 00 41 0f b6 c0 45 0f b6 c9 41 0b c1 0f b6 c0 0f b6 c9 23 c8 0f b6 c1 e9 17 07 00 00 0f b6 c2 8b d0 f7 d2 0f b6 ca 45 0f b6 c0 41 23 c8 0f b6 c1 e9 fe 06 00 00 0f b6 ca f7 d1 40 0f b6 f1 41 0f b6 c9 81 f1 ff 00 00 00 40 0f b6 f9 41 0f b6 c8 88 4c 24 28 48 8d 4c 24 28 e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov esi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f1}
0009h movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
000dh dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
000fh cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0012h ja near ptr 08b5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 9d 08 00 00}
0018h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001ah lea rax,[rip+8c7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 c7 08 00 00}
0021h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0024h lea r10,[rip-22h]                       ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 15 de ff ff ff}
002bh add rax,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c2}
002eh jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0030h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0034h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0038h or r8d,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{45 0b c1}
003bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
003fh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0042h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0044h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0046h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0049h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 5c 08 00 00}
004eh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0052h movzx r8d,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c2}
0056h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0059h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
005bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
005dh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0060h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0064h and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
0067h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
006ah jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 3b 08 00 00}
006fh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0073h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0076h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0078h mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
007bh not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
007eh movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0082h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 23 08 00 00}
0087h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
008ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
008eh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0091h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0093h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0095h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0098h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
009ch and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
009fh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
00a2h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 08 00 00}
00a7h movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
00abh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00aeh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b0h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
00b3h not r9d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d1}
00b6h movzx eax,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c1}
00bah jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 07 00 00}
00bfh movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
00c2h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00c4h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00c6h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
00c9h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
00cdh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
00d1h xor r8d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c1}
00d4h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00d8h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
00dbh and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00ddh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
00e0h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 07 00 00}
00e5h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
00e9h movzx r8d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c1}
00edh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00f0h movzx r9d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c8}
00f4h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
00f7h or edx,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d1}
00fah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
00fch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00feh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0101h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 a4 07 00 00}
0106h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0109h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
010bh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
010dh movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0110h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0114h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
0117h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
011ah movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
011eh and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
0121h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0124h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 07 00 00}
0129h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
012dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0131h xor eax,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c1}
0134h movzx r8d,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c0}
0138h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
013bh or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
013eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0140h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0142h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0145h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 60 07 00 00}
014ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
014dh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
014fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0151h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0154h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0158h and ecx,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c9}
015bh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
015eh jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 07 00 00}
0163h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0166h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0168h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
016ah movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
016dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0171h xor r8d,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[7]{41 81 f0 ff 00 00 00}
0178h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
017ch movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0180h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0183h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0186h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0189h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
018bh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
018eh jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 07 00 00}
0193h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0196h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0198h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
019ah movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
019dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
01a1h and ecx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c8}
01a4h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
01a7h jmp near ptr 08aah                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 06 00 00}
01ach movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
01afh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
01b1h movzx esi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f1}
01b5h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
01b9h xor ecx,0ffh                            ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f1 ff 00 00 00}
01bfh movzx edi,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f9}
01c3h movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
01c7h mov [rsp+28h],cl                        ; MOV r/m8, r8 || 88 /r || encoded[4]{88 4c 24 28}
01cbh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
01d0h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte eval<sbyte>(TernaryBitLogicKind:byte kind, sbyte a, sbyte b, sbyte c)
; tbl~eval_g8u[2261] = {57 56 53 48 83 ec 20 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 b8 08 00 00 8b c9 48 8d 05 e2 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0f be ce 48 0f be c7 0b c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 75 08 00 00 48 0f be c6 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c9 48 0f be c7 23 c8 48 0f be c1 e9 54 08 00 00 48 0f be c6 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c1 e9 3d 08 00 00 48 0f be c2 48 0f be d7 0b c2 8b c8 f7 d1 48 0f be c9 48 0f be c6 23 c8 48 0f be c1 e9 1c 08 00 00 48 0f be c7 48 0f be d2 0b c2 8b c8 f7 d1 48 0f be c1 e9 05 08 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c6 48 0f be d7 33 c2 48 0f be c0 48 0f be c9 23 c8 48 0f be c1 e9 dc 07 00 00 48 0f be c6 48 0f be cf 23 c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 bd 07 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c6 23 c8 48 0f be c9 48 0f be c7 23 c8 48 0f be c1 e9 98 07 00 00 48 0f be c6 48 0f be cf 33 c8 48 0f be c9 48 0f be d2 0b ca f7 d1 48 0f be c1 e9 79 07 00 00 48 0f be c2 8b d0 f7 d2 48 0f be ca 48 0f be c7 23 c8 48 0f be c1 e9 5e 07 00 00 48 0f be ca f7 d1 48 0f be d9 48 0f be ce e8 c2 fd ff ff 48 0f be c8 48 0f be d7 e8 65 0c 9d ff 48 0f be d0 8b cb e8 a2 ae ff ff 48 0f be c0 e9 2a 07 00 00 48 0f be ca e8 e8 09 9d ff 48 0f be d0 48 0f be ce e8 83 ae ff ff 48 0f be c0 e9 0b 07 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 a1 fc ff ff e9 f5 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 7b fc ff ff e9 df 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 55 fc ff ff e9 c9 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 2f fc ff ff e9 b3 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 09 fc ff ff e9 9d 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 e3 fb ff ff e9 87 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 bd fb ff ff e9 71 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 97 fb ff ff e9 5b 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 71 fb ff ff e9 45 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 4b fb ff ff e9 2f 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 25 fb ff ff e9 19 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 ff fa ff ff e9 03 06 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 d9 fa ff ff e9 ed 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 b3 fa ff ff e9 d7 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 8d fa ff ff e9 c1 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 67 fa ff ff e9 ab 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 41 fa ff ff e9 95 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 1b fa ff ff e9 7f 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 f5 f9 ff ff e9 69 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 cf f9 ff ff e9 53 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 a9 f9 ff ff e9 3d 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 83 f9 ff ff e9 27 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 5d f9 ff ff e9 11 05 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 37 f9 ff ff e9 fb 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 11 f9 ff ff e9 e5 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 eb f8 ff ff e9 cf 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 c5 f8 ff ff e9 b9 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 9f f8 ff ff e9 a3 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 79 f8 ff ff e9 8d 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 53 f8 ff ff e9 77 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 2d f8 ff ff e9 61 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 07 f8 ff ff e9 4b 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 e1 f7 ff ff e9 35 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 bb f7 ff ff e9 1f 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 95 f7 ff ff e9 09 04 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 6f f7 ff ff e9 f3 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 49 f7 ff ff e9 dd 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 23 f7 ff ff e9 c7 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 fd f6 ff ff e9 b1 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 d7 f6 ff ff e9 9b 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 b1 f6 ff ff e9 85 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 fb eb ff ff e9 6f 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 d5 eb ff ff e9 59 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 af eb ff ff e9 43 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 89 eb ff ff e9 2d 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 63 eb ff ff e9 17 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 3d eb ff ff e9 01 03 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 17 eb ff ff e9 eb 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 f1 ea ff ff e9 d5 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 cb ea ff ff e9 bf 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 a5 ea ff ff e9 a9 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 7f ea ff ff e9 93 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 59 ea ff ff e9 7d 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 33 ea ff ff e9 67 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 0d ea ff ff e9 51 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 e7 e9 ff ff e9 3b 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 c1 e9 ff ff e9 25 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 9b e9 ff ff e9 0f 02 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 75 e9 ff ff e9 f9 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 4f e9 ff ff e9 e3 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 29 e9 ff ff e9 cd 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 03 e9 ff ff e9 b7 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 dd e8 ff ff e9 a1 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 b7 e8 ff ff e9 8b 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 91 e8 ff ff e9 75 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 6b e8 ff ff e9 5f 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 45 e8 ff ff e9 49 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 1f e8 ff ff e9 33 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 f9 e7 ff ff e9 1d 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 d3 e7 ff ff e9 07 01 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 ad e7 ff ff e9 f1 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 87 e7 ff ff e9 db 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 61 e7 ff ff e9 c5 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 3b e7 ff ff e9 af 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 15 e7 ff ff e9 99 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 ef e6 ff ff e9 83 00 00 00 48 0f be ca 48 0f be d6 4c 0f be c7 e8 c9 e6 ff ff eb 70 48 0f be ca 48 0f be d6 4c 0f be c7 e8 a6 e6 ff ff eb 5d 48 0f be ca 48 0f be d6 4c 0f be c7 e8 83 e6 ff ff eb 4a 48 0f be ca 48 0f be d6 4c 0f be c7 e8 60 e6 ff ff eb 37 48 0f be ca 48 0f be d6 4c 0f be c7 e8 3d e6 ff ff eb 24 48 0f be ca 48 0f be d6 4c 0f be c7 e8 1a e6 ff ff eb 11 48 0f be ca 48 0f be d6 4c 0f be c7 e8 f7 e5 ff ff 48 0f be c0 48 83 c4 20 5b 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 08d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+8e2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e2 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
0039h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
003dh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003fh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0043h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0047h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0049h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
004bh movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
004fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 08 00 00}
0054h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0058h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
005ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0060h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0062h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0066h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
006ah and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
006ch movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0070h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 08 00 00}
0075h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0079h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
007dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
007fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0081h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0083h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0087h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 08 00 00}
008ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0090h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
0094h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0096h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0098h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
009ah movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
009eh movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00a2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00a4h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00a8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 08 00 00}
00adh movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
00b1h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
00b5h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b9h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00bbh movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00bfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 08 00 00}
00c4h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
00c8h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00cah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00cch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
00d0h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00d4h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
00d8h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00dah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
00deh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
00e2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00e4h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
00e8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 07 00 00}
00edh movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
00f1h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
00f5h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00f7h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
00fbh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
00ffh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0101h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0103h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0107h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 07 00 00}
010ch movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0110h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0112h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0114h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0118h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
011ch and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
011eh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0122h movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0126h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0128h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
012ch jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 07 00 00}
0131h movsx rax,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c6}
0135h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0139h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
013bh movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
013fh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0143h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0145h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0147h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
014bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 07 00 00}
0150h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0154h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0156h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0158h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
015ch movsx rax,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c7}
0160h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0162h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0166h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 07 00 00}
016bh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
016fh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0171h movsx rbx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d9}
0175h movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
0179h call 7ff7c730c3b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 fd ff ff}
017eh movsx rcx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c8}
0182h movsx rdx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d7}
0186h call 7ff7c6cdd260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 0c 9d ff}
018bh movsx rdx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d0}
018fh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
0191h call 7ff7c73074a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ae ff ff}
0196h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
019ah jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 07 00 00}
019fh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01a3h call 7ff7c6cdd000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 09 9d ff}
01a8h movsx rdx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d0}
01ach movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
01b0h call 7ff7c73074a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 ae ff ff}
01b5h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
01b9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 07 00 00}
01beh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01c2h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01c6h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01cah call 7ff7c730c2e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 fc ff ff}
01cfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 06 00 00}
01d4h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01d8h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01dch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01e0h call 7ff7c730c2d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fc ff ff}
01e5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 06 00 00}
01eah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
01eeh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
01f2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
01f6h call 7ff7c730c2c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 fc ff ff}
01fbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 06 00 00}
0200h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0204h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0208h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
020ch call 7ff7c730c2b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f fc ff ff}
0211h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 06 00 00}
0216h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
021ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
021eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0222h call 7ff7c730c2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fc ff ff}
0227h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 06 00 00}
022ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0230h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0234h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0238h call 7ff7c730c290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 fb ff ff}
023dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 06 00 00}
0242h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0246h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
024ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
024eh call 7ff7c730c280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd fb ff ff}
0253h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 06 00 00}
0258h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
025ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0260h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0264h call 7ff7c730c270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fb ff ff}
0269h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
026eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0272h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0276h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
027ah call 7ff7c730c260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 fb ff ff}
027fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 06 00 00}
0284h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0288h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
028ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0290h call 7ff7c730c250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fb ff ff}
0295h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 06 00 00}
029ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
029eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02a2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02a6h call 7ff7c730c240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 fb ff ff}
02abh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 06 00 00}
02b0h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02b4h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02b8h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02bch call 7ff7c730c230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fa ff ff}
02c1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 06 00 00}
02c6h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02cah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02ceh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02d2h call 7ff7c730c220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 fa ff ff}
02d7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 05 00 00}
02dch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02e0h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02e4h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02e8h call 7ff7c730c210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 fa ff ff}
02edh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 05 00 00}
02f2h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
02f6h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
02fah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
02feh call 7ff7c730c200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d fa ff ff}
0303h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 05 00 00}
0308h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
030ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0310h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0314h call 7ff7c730c1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 fa ff ff}
0319h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ab 05 00 00}
031eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0322h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0326h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
032ah call 7ff7c730c1e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 fa ff ff}
032fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 05 00 00}
0334h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0338h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
033ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0340h call 7ff7c730c1d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fa ff ff}
0345h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 05 00 00}
034ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
034eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0352h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0356h call 7ff7c730c1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f9 ff ff}
035bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 69 05 00 00}
0360h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0364h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0368h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
036ch call 7ff7c730c1b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f9 ff ff}
0371h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 53 05 00 00}
0376h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
037ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
037eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0382h call 7ff7c730c1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f9 ff ff}
0387h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 05 00 00}
038ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0390h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0394h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0398h call 7ff7c730c190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f9 ff ff}
039dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 05 00 00}
03a2h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
03a6h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
03aah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
03aeh call 7ff7c730c180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f9 ff ff}
03b3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 05 00 00}
03b8h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
03bch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
03c0h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
03c4h call 7ff7c730c170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f9 ff ff}
03c9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 04 00 00}
03ceh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
03d2h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
03d6h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
03dah call 7ff7c730c160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f9 ff ff}
03dfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 04 00 00}
03e4h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
03e8h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
03ech movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
03f0h call 7ff7c730c150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f8 ff ff}
03f5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cf 04 00 00}
03fah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
03feh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0402h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0406h call 7ff7c730c140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f8 ff ff}
040bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 04 00 00}
0410h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0414h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0418h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
041ch call 7ff7c730c130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f8 ff ff}
0421h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 04 00 00}
0426h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
042ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
042eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0432h call 7ff7c730c120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f8 ff ff}
0437h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 04 00 00}
043ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0440h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0444h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0448h call 7ff7c730c110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f8 ff ff}
044dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 77 04 00 00}
0452h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0456h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
045ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
045eh call 7ff7c730c100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f8 ff ff}
0463h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 61 04 00 00}
0468h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
046ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0470h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0474h call 7ff7c730c0f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f8 ff ff}
0479h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4b 04 00 00}
047eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0482h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0486h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
048ah call 7ff7c730c0e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f7 ff ff}
048fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 04 00 00}
0494h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0498h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
049ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
04a0h call 7ff7c730c0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f7 ff ff}
04a5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1f 04 00 00}
04aah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
04aeh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
04b2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
04b6h call 7ff7c730c0c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f7 ff ff}
04bbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 04 00 00}
04c0h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
04c4h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
04c8h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
04cch call 7ff7c730c0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f7 ff ff}
04d1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f3 03 00 00}
04d6h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
04dah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
04deh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
04e2h call 7ff7c730c0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f7 ff ff}
04e7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 03 00 00}
04ech movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
04f0h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
04f4h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
04f8h call 7ff7c730c090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f7 ff ff}
04fdh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c7 03 00 00}
0502h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0506h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
050ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
050eh call 7ff7c730c080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f6 ff ff}
0513h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 03 00 00}
0518h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
051ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0520h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0524h call 7ff7c730c070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f6 ff ff}
0529h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9b 03 00 00}
052eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0532h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0536h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
053ah call 7ff7c730c060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f6 ff ff}
053fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 03 00 00}
0544h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0548h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
054ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0550h call 7ff7c730b5c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb eb ff ff}
0555h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 03 00 00}
055ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
055eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0562h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0566h call 7ff7c730b5b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 eb ff ff}
056bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 03 00 00}
0570h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0574h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0578h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
057ch call 7ff7c730b5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af eb ff ff}
0581h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 03 00 00}
0586h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
058ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
058eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0592h call 7ff7c730b590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 eb ff ff}
0597h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 03 00 00}
059ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
05a0h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
05a4h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
05a8h call 7ff7c730b580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 eb ff ff}
05adh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
05b2h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
05b6h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
05bah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
05beh call 7ff7c730b570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d eb ff ff}
05c3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 01 03 00 00}
05c8h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
05cch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
05d0h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
05d4h call 7ff7c730b560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 eb ff ff}
05d9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 02 00 00}
05deh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
05e2h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
05e6h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
05eah call 7ff7c730b550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ea ff ff}
05efh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 02 00 00}
05f4h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
05f8h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
05fch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0600h call 7ff7c730b540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ea ff ff}
0605h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 02 00 00}
060ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
060eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0612h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0616h call 7ff7c730b530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 ea ff ff}
061bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 02 00 00}
0620h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0624h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0628h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
062ch call 7ff7c730b520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ea ff ff}
0631h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 02 00 00}
0636h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
063ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
063eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0642h call 7ff7c730b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ea ff ff}
0647h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 02 00 00}
064ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0650h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0654h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0658h call 7ff7c730b500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ea ff ff}
065dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 67 02 00 00}
0662h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0666h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
066ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
066eh call 7ff7c730b4f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ea ff ff}
0673h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 02 00 00}
0678h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
067ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0680h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0684h call 7ff7c730b4e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 e9 ff ff}
0689h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3b 02 00 00}
068eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0692h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0696h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
069ah call 7ff7c730b4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e9 ff ff}
069fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 25 02 00 00}
06a4h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
06a8h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
06ach movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
06b0h call 7ff7c730b4c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e9 ff ff}
06b5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0f 02 00 00}
06bah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
06beh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
06c2h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
06c6h call 7ff7c730b4b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 e9 ff ff}
06cbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
06d0h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
06d4h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
06d8h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
06dch call 7ff7c730b4a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e9 ff ff}
06e1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 01 00 00}
06e6h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
06eah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
06eeh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
06f2h call 7ff7c730b490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 e9 ff ff}
06f7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 01 00 00}
06fch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0700h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0704h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0708h call 7ff7c730b480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e9 ff ff}
070dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 01 00 00}
0712h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0716h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
071ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
071eh call 7ff7c730b470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e8 ff ff}
0723h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 01 00 00}
0728h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
072ch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0730h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0734h call 7ff7c730b460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 e8 ff ff}
0739h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8b 01 00 00}
073eh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0742h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0746h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
074ah call 7ff7c730b450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e8 ff ff}
074fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
0754h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0758h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
075ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0760h call 7ff7c730b440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e8 ff ff}
0765h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5f 01 00 00}
076ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
076eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0772h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0776h call 7ff7c730b430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 e8 ff ff}
077bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 49 01 00 00}
0780h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0784h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0788h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
078ch call 7ff7c730b420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e8 ff ff}
0791h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 01 00 00}
0796h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
079ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
079eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
07a2h call 7ff7c730b410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e7 ff ff}
07a7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 01 00 00}
07ach movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
07b0h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
07b4h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
07b8h call 7ff7c730b400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 e7 ff ff}
07bdh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 01 00 00}
07c2h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
07c6h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
07cah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
07ceh call 7ff7c730b3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad e7 ff ff}
07d3h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
07d8h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
07dch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
07e0h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
07e4h call 7ff7c730b3e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 e7 ff ff}
07e9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 db 00 00 00}
07eeh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
07f2h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
07f6h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
07fah call 7ff7c730b3d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 e7 ff ff}
07ffh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 00 00 00}
0804h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0808h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
080ch movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0810h call 7ff7c730b3c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e7 ff ff}
0815h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 00 00 00}
081ah movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
081eh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0822h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0826h call 7ff7c730b3b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e7 ff ff}
082bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 00 00 00}
0830h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0834h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0838h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
083ch call 7ff7c730b3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef e6 ff ff}
0841h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 83 00 00 00}
0846h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
084ah movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
084eh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0852h call 7ff7c730b390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e6 ff ff}
0857h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 70}
0859h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
085dh movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0861h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0865h call 7ff7c730b380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 e6 ff ff}
086ah jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 5d}
086ch movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0870h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0874h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
0878h call 7ff7c730b370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 e6 ff ff}
087dh jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 4a}
087fh movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0883h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
0887h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
088bh call 7ff7c730b360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 e6 ff ff}
0890h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 37}
0892h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
0896h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
089ah movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
089eh call 7ff7c730b350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d e6 ff ff}
08a3h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 24}
08a5h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
08a9h movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
08adh movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
08b1h call 7ff7c730b340h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a e6 ff ff}
08b6h jmp short 08c9h                         ; JMP rel8 || EB cb || encoded[2]{eb 11}
08b8h movsx rcx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ca}
08bch movsx rdx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d6}
08c0h movsx r8,dil                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4c 0f be c7}
08c4h call 7ff7c730b330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e5 ff ff}
08c9h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
08cdh add rsp,20h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 20}
08d1h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
08d2h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
08d3h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
08d4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort eval<ushort>(TernaryBitLogicKind:byte kind, ushort a, ushort b, ushort c)
; tbl~eval_g8u[2093] = {57 56 53 48 83 ec 30 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 10 08 00 00 8b c9 48 8d 05 3a 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 0f b7 ce 0f b7 c7 0b c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 d3 07 00 00 0f b7 c6 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c9 0f b7 c7 23 c8 0f b7 c1 e9 b7 07 00 00 0f b7 c6 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c1 e9 a3 07 00 00 0f b7 c2 0f b7 d7 0b c2 8b c8 f7 d1 0f b7 c9 0f b7 c6 23 c8 0f b7 c1 e9 87 07 00 00 0f b7 c7 0f b7 d2 0b c2 8b c8 f7 d1 0f b7 c1 e9 73 07 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 0f b7 d7 33 c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 51 07 00 00 0f b7 c6 0f b7 cf 23 c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 37 07 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 23 c8 0f b7 c9 0f b7 c7 23 c8 0f b7 c1 e9 18 07 00 00 0f b7 c6 0f b7 cf 33 c8 0f b7 c9 0f b7 d2 0b ca f7 d1 0f b7 c1 e9 fe 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c7 23 c8 0f b7 c1 e9 e7 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 35 ff ff 00 00 89 44 24 2c 0f b7 44 24 2c 0f b7 d7 0b c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 b7 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c6 23 c8 0f b7 c1 e9 a0 06 00 00 0f b7 c2 8b d0 f7 d2 0f b7 ca 0f b7 c7 35 ff ff 00 00 89 44 24 28 0f b7 44 24 28 0f b7 d6 0b c2 0f b7 c0 0f b7 c9 23 c8 0f b7 c1 e9 70 06 00 00 0f b7 ca f7 d1 0f b7 c9 66 89 4c 24 20 48 8d 4c 24 20 e8 87 f3 99 ff 0f b7 18 0f b7 ce 0f b7 d7 e8 61 9c ff ff 8b d0 8b cb e8 b8 9c ff ff 0f b7 c0 e9 3a 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 91 fa ff ff e9 26 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 6d fa ff ff e9 12 06 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 49 fa ff ff e9 fe 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 25 fa ff ff e9 ea 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 01 fa ff ff e9 d6 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 dd f9 ff ff e9 c2 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b9 f9 ff ff e9 ae 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 95 f9 ff ff e9 9a 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 71 f9 ff ff e9 86 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 4d f9 ff ff e9 72 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 21 f9 ff ff e9 5e 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 fd f8 ff ff e9 4a 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d9 f8 ff ff e9 36 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b5 f8 ff ff e9 22 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 91 f8 ff ff e9 0e 05 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 6d f8 ff ff e9 fa 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 49 f8 ff ff e9 e6 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 25 f8 ff ff e9 d2 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 01 f8 ff ff e9 be 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 dd f7 ff ff e9 aa 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b9 f7 ff ff e9 96 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 95 f7 ff ff e9 82 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 71 f7 ff ff e9 6e 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 4d f7 ff ff e9 5a 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 29 f7 ff ff e9 46 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 05 f7 ff ff e9 32 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e1 f6 ff ff e9 1e 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 bd f6 ff ff e9 0a 04 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 99 f6 ff ff e9 f6 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 75 f6 ff ff e9 e2 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 51 f6 ff ff e9 ce 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 2d f6 ff ff e9 ba 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 09 f6 ff ff e9 a6 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e5 f5 ff ff e9 92 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c1 f5 ff ff e9 7e 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 9d f5 ff ff e9 6a 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 79 f5 ff ff e9 56 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 55 f5 ff ff e9 42 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 31 f5 ff ff e9 2e 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 0d f5 ff ff e9 1a 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 e9 f4 ff ff e9 06 03 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c5 f4 ff ff e9 f2 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a1 f4 ff ff e9 de 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 7d f4 ff ff e9 ca 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 59 f4 ff ff e9 b6 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 35 f4 ff ff e9 a2 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 11 f4 ff ff e9 8e 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 ed f3 ff ff e9 7a 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 c9 f3 ff ff e9 66 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a5 f3 ff ff e9 52 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 81 f3 ff ff e9 3e 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 5d f3 ff ff e9 2a 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 39 f3 ff ff e9 16 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 15 f3 ff ff e9 02 02 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f1 f2 ff ff e9 ee 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 cd f2 ff ff e9 da 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 a9 f2 ff ff e9 c6 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 85 f2 ff ff e9 b2 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 61 f2 ff ff e9 9e 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 3d f2 ff ff e9 8a 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 19 f2 ff ff e9 76 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f5 f1 ff ff e9 62 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d1 f1 ff ff e9 4e 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 ad f1 ff ff e9 3a 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 89 f1 ff ff e9 26 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 65 f1 ff ff e9 12 01 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 41 f1 ff ff e9 fe 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 1d f1 ff ff e9 ea 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f9 f0 ff ff e9 d6 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 d5 f0 ff ff e9 c2 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 b1 f0 ff ff e9 ae 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 8d f0 ff ff e9 9a 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 69 f0 ff ff e9 86 00 00 00 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 45 f0 ff ff eb 75 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 74 e5 ff ff eb 64 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 53 e5 ff ff eb 53 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 32 e5 ff ff eb 42 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 11 e5 ff ff eb 31 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 f0 e4 ff ff eb 20 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 cf e4 ff ff eb 0f 0f b7 ca 0f b7 d6 44 0f b7 c7 e8 ae e4 ff ff 0f b7 c0 48 83 c4 30 5b 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 082dh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 10 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+83ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 3a 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movzx ecx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ce}
0038h movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
003bh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003dh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0040h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0043h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0045h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0047h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
004ah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d3 07 00 00}
004fh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0052h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0055h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0057h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0059h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
005bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
005eh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0061h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0063h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0066h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 07 00 00}
006bh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
006eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0071h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0073h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0075h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0077h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
007ah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a3 07 00 00}
007fh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0082h movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
0085h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0087h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0089h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
008bh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
008eh movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0091h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0093h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0096h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 07 00 00}
009bh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
009eh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00a1h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00a3h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00a5h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00a7h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00aah jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 73 07 00 00}
00afh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00b2h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00b4h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00b6h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
00b9h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00bch movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
00bfh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00c1h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00c4h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00c7h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00c9h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00cch jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 07 00 00}
00d1h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00d4h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
00d7h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00d9h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00dch movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
00dfh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00e1h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00e3h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
00e6h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 37 07 00 00}
00ebh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
00eeh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00f0h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00f2h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
00f5h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
00f8h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00fah movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
00fdh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0100h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0102h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0105h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 18 07 00 00}
010ah movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
010dh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0110h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
0112h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0115h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0118h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
011ah not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
011ch movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
011fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 06 00 00}
0124h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0127h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0129h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
012bh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
012eh movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
0131h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0133h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0136h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e7 06 00 00}
013bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
013eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0140h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0142h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0145h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0148h xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
014dh mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
0151h movzx eax,word ptr [rsp+2ch]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 2c}
0156h movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
0159h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
015bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
015eh movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0161h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0163h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0166h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 06 00 00}
016bh movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
016eh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0170h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0172h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0175h movzx eax,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c6}
0178h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
017ah movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
017dh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a0 06 00 00}
0182h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0185h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0187h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0189h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
018ch movzx eax,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c7}
018fh xor eax,0ffffh                          ; XOR EAX, imm32 || o32 35 id || encoded[5]{35 ff ff 00 00}
0194h mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0198h movzx eax,word ptr [rsp+28h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 28}
019dh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
01a0h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
01a2h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01a5h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
01a8h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
01aah movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
01adh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 70 06 00 00}
01b2h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01b5h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
01b7h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
01bah mov [rsp+20h],cx                        ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 4c 24 20}
01bfh lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
01c4h call 7ff7c6cacc70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 f3 99 ff}
01c9h movzx ebx,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 18}
01cch movzx ecx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ce}
01cfh movzx edx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d7}
01d2h call 7ff7c7307558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 9c ff ff}
01d7h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
01d9h mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
01dbh call 7ff7c73075b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 9c ff ff}
01e0h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
01e3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 06 00 00}
01e8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01ebh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
01eeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
01f2h call 7ff7c730d3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 fa ff ff}
01f7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 06 00 00}
01fch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
01ffh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0202h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0206h call 7ff7c730d398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d fa ff ff}
020bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 06 00 00}
0210h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0213h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0216h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
021ah call 7ff7c730d388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 fa ff ff}
021fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 05 00 00}
0224h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0227h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
022ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
022eh call 7ff7c730d378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 fa ff ff}
0233h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 05 00 00}
0238h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
023bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
023eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0242h call 7ff7c730d368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 fa ff ff}
0247h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 05 00 00}
024ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
024fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0252h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0256h call 7ff7c730d358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f9 ff ff}
025bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 05 00 00}
0260h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0263h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0266h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
026ah call 7ff7c730d348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f9 ff ff}
026fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 05 00 00}
0274h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0277h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
027ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
027eh call 7ff7c730d338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f9 ff ff}
0283h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 05 00 00}
0288h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
028bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
028eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0292h call 7ff7c730d328h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f9 ff ff}
0297h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 05 00 00}
029ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
029fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02a2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02a6h call 7ff7c730d318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f9 ff ff}
02abh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 72 05 00 00}
02b0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02b3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02b6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02bah call 7ff7c730d300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f9 ff ff}
02bfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 05 00 00}
02c4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02c7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02cah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02ceh call 7ff7c730d2f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f8 ff ff}
02d3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4a 05 00 00}
02d8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02dbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02deh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02e2h call 7ff7c730d2e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f8 ff ff}
02e7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 36 05 00 00}
02ech movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
02efh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
02f2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
02f6h call 7ff7c730d2d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 f8 ff ff}
02fbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 22 05 00 00}
0300h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0303h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0306h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
030ah call 7ff7c730d2c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f8 ff ff}
030fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 05 00 00}
0314h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0317h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
031ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
031eh call 7ff7c730d2b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d f8 ff ff}
0323h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 04 00 00}
0328h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
032bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
032eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0332h call 7ff7c730d2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f8 ff ff}
0337h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 04 00 00}
033ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
033fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0342h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0346h call 7ff7c730d290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 f8 ff ff}
034bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d2 04 00 00}
0350h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0353h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0356h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
035ah call 7ff7c730d280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f8 ff ff}
035fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 be 04 00 00}
0364h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0367h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
036ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
036eh call 7ff7c730d270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f7 ff ff}
0373h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 aa 04 00 00}
0378h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
037bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
037eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0382h call 7ff7c730d260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f7 ff ff}
0387h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 96 04 00 00}
038ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
038fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0392h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0396h call 7ff7c730d250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 f7 ff ff}
039bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 82 04 00 00}
03a0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03a3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03a6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03aah call 7ff7c730d240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f7 ff ff}
03afh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6e 04 00 00}
03b4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03b7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03bah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03beh call 7ff7c730d230h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f7 ff ff}
03c3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5a 04 00 00}
03c8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03cbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03ceh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03d2h call 7ff7c730d220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f7 ff ff}
03d7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 04 00 00}
03dch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03dfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03e2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03e6h call 7ff7c730d210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 f7 ff ff}
03ebh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 04 00 00}
03f0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
03f3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
03f6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
03fah call 7ff7c730d200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f6 ff ff}
03ffh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1e 04 00 00}
0404h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0407h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
040ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
040eh call 7ff7c730d1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd f6 ff ff}
0413h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 04 00 00}
0418h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
041bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
041eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0422h call 7ff7c730d1e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f6 ff ff}
0427h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 03 00 00}
042ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
042fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0432h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0436h call 7ff7c730d1d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 f6 ff ff}
043bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e2 03 00 00}
0440h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0443h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0446h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
044ah call 7ff7c730d1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f6 ff ff}
044fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ce 03 00 00}
0454h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0457h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
045ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
045eh call 7ff7c730d1b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d f6 ff ff}
0463h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ba 03 00 00}
0468h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
046bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
046eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0472h call 7ff7c730d1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f6 ff ff}
0477h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 03 00 00}
047ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
047fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0482h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0486h call 7ff7c730d190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f5 ff ff}
048bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 03 00 00}
0490h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0493h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0496h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
049ah call 7ff7c730d180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f5 ff ff}
049fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 03 00 00}
04a4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04a7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04aah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04aeh call 7ff7c730d170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f5 ff ff}
04b3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6a 03 00 00}
04b8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04bbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04beh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04c2h call 7ff7c730d160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f5 ff ff}
04c7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 56 03 00 00}
04cch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04cfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04d2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04d6h call 7ff7c730d150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 f5 ff ff}
04dbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 42 03 00 00}
04e0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04e3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04e6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04eah call 7ff7c730d140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f5 ff ff}
04efh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2e 03 00 00}
04f4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
04f7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
04fah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
04feh call 7ff7c730d130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f5 ff ff}
0503h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1a 03 00 00}
0508h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
050bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
050eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0512h call 7ff7c730d120h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f4 ff ff}
0517h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 06 03 00 00}
051ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
051fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0522h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0526h call 7ff7c730d110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f4 ff ff}
052bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 02 00 00}
0530h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0533h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0536h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
053ah call 7ff7c730d100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f4 ff ff}
053fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
0544h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0547h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
054ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
054eh call 7ff7c730d0f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f4 ff ff}
0553h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ca 02 00 00}
0558h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
055bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
055eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0562h call 7ff7c730d0e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f4 ff ff}
0567h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b6 02 00 00}
056ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
056fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0572h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0576h call 7ff7c730d0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f4 ff ff}
057bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a2 02 00 00}
0580h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0583h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0586h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
058ah call 7ff7c730d0c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f4 ff ff}
058fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 02 00 00}
0594h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0597h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
059ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
059eh call 7ff7c730d0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f3 ff ff}
05a3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7a 02 00 00}
05a8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05abh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05aeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05b2h call 7ff7c730d0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 f3 ff ff}
05b7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 66 02 00 00}
05bch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05bfh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05c2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05c6h call 7ff7c730d090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 f3 ff ff}
05cbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 52 02 00 00}
05d0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05d3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05d6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05dah call 7ff7c730d080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f3 ff ff}
05dfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3e 02 00 00}
05e4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05e7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05eah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
05eeh call 7ff7c730d070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d f3 ff ff}
05f3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 02 00 00}
05f8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
05fbh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
05feh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0602h call 7ff7c730d060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f3 ff ff}
0607h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 16 02 00 00}
060ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
060fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0612h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0616h call 7ff7c730d050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 f3 ff ff}
061bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 02 00 00}
0620h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0623h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0626h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
062ah call 7ff7c730d040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f2 ff ff}
062fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ee 01 00 00}
0634h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0637h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
063ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
063eh call 7ff7c730d030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f2 ff ff}
0643h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 da 01 00 00}
0648h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
064bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
064eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0652h call 7ff7c730d020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 f2 ff ff}
0657h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 01 00 00}
065ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
065fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0662h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0666h call 7ff7c730d010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 f2 ff ff}
066bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b2 01 00 00}
0670h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0673h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0676h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
067ah call 7ff7c730d000h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f2 ff ff}
067fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 01 00 00}
0684h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0687h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
068ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
068eh call 7ff7c730cff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f2 ff ff}
0693h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 01 00 00}
0698h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
069bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
069eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06a2h call 7ff7c730cfe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f2 ff ff}
06a7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 01 00 00}
06ach movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06afh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06b2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06b6h call 7ff7c730cfd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f1 ff ff}
06bbh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 01 00 00}
06c0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06c3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06c6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06cah call 7ff7c730cfc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f1 ff ff}
06cfh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4e 01 00 00}
06d4h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06d7h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06dah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06deh call 7ff7c730cfb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad f1 ff ff}
06e3h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3a 01 00 00}
06e8h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06ebh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
06eeh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
06f2h call 7ff7c730cfa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f1 ff ff}
06f7h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 01 00 00}
06fch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
06ffh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0702h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0706h call 7ff7c730cf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f1 ff ff}
070bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 12 01 00 00}
0710h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0713h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0716h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
071ah call 7ff7c730cf80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f1 ff ff}
071fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fe 00 00 00}
0724h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0727h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
072ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
072eh call 7ff7c730cf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f1 ff ff}
0733h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ea 00 00 00}
0738h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
073bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
073eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0742h call 7ff7c730cf60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f0 ff ff}
0747h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 00 00 00}
074ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
074fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0752h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0756h call 7ff7c730cf50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 f0 ff ff}
075bh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 00 00 00}
0760h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0763h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0766h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
076ah call 7ff7c730cf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f0 ff ff}
076fh jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 00 00 00}
0774h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0777h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
077ah movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
077eh call 7ff7c730cf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f0 ff ff}
0783h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9a 00 00 00}
0788h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
078bh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
078eh movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
0792h call 7ff7c730cf20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f0 ff ff}
0797h jmp near ptr 0822h                      ; JMP rel32 || E9 cd || encoded[5]{e9 86 00 00 00}
079ch movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
079fh movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07a2h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07a6h call 7ff7c730cf10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f0 ff ff}
07abh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 75}
07adh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07b0h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07b3h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07b7h call 7ff7c730c450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 e5 ff ff}
07bch jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 64}
07beh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07c1h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07c4h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07c8h call 7ff7c730c440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 e5 ff ff}
07cdh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 53}
07cfh movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07d2h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07d5h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07d9h call 7ff7c730c430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e5 ff ff}
07deh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 42}
07e0h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07e3h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07e6h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07eah call 7ff7c730c420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e5 ff ff}
07efh jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 31}
07f1h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
07f4h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
07f7h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
07fbh call 7ff7c730c410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 e4 ff ff}
0800h jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 20}
0802h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0805h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0808h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
080ch call 7ff7c730c400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf e4 ff ff}
0811h jmp short 0822h                         ; JMP rel8 || EB cb || encoded[2]{eb 0f}
0813h movzx ecx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ca}
0816h movzx edx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d6}
0819h movzx r8d,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{44 0f b7 c7}
081dh call 7ff7c730c3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e4 ff ff}
0822h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0825h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0829h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
082ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
082bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
082ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short eval<short>(TernaryBitLogicKind:byte kind, short a, short b, short c)
; tbl~eval_g8u[834] = {57 56 53 48 83 ec 20 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 b8 08 00 00 8b c9 48 8d 05 e2 08 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0f bf ce 48 0f bf c7 0b c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 75 08 00 00 48 0f bf c6 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c9 48 0f bf c7 23 c8 48 0f bf c1 e9 54 08 00 00 48 0f bf c6 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c1 e9 3d 08 00 00 48 0f bf c2 48 0f bf d7 0b c2 8b c8 f7 d1 48 0f bf c9 48 0f bf c6 23 c8 48 0f bf c1 e9 1c 08 00 00 48 0f bf c7 48 0f bf d2 0b c2 8b c8 f7 d1 48 0f bf c1 e9 05 08 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c6 48 0f bf d7 33 c2 48 0f bf c0 48 0f bf c9 23 c8 48 0f bf c1 e9 dc 07 00 00 48 0f bf c6 48 0f bf cf 23 c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 bd 07 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c6 23 c8 48 0f bf c9 48 0f bf c7 23 c8 48 0f bf c1 e9 98 07 00 00 48 0f bf c6 48 0f bf cf 33 c8 48 0f bf c9 48 0f bf d2 0b ca f7 d1 48 0f bf c1 e9 79 07 00 00 48 0f bf c2 8b d0 f7 d2 48 0f bf ca 48 0f bf c7 23 c8 48 0f bf c1 e9 5e 07 00 00 48 0f bf ca f7 d1 48 0f bf d9 48 0f bf ce e8 72 fa ff ff 48 0f bf c8 48 0f bf d7 e8 25 e8 9c ff 48 0f bf d0 8b cb e8 02 8c ff ff 48 0f bf c0 e9 2a 07 00 00 48 0f bf ca e8 c8 e5 9c ff 48 0f bf d0 48 0f bf ce e8 e3 8b ff ff 48 0f bf c0 e9 0b 07 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 49 f9 ff ff e9 f5 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 23 f9 ff ff e9 df 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 fd f8 ff ff e9 c9 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 d7 f8 ff ff e9 b3 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 b1 f8 ff ff e9 9d 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 8b f8 ff ff e9 87 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 65 f8 ff ff e9 71 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 3f f8 ff ff e9 5b 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 19 f8 ff ff e9 45 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 f3 f7 ff ff e9 2f 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 cd f7 ff ff e9 19 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 a7 f7 ff ff e9 03 06 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 81 f7 ff ff e9 ed 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 5b f7 ff ff e9 d7 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 35 f7 ff ff e9 c1 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 0f f7 ff ff e9 ab 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 e9 f6 ff ff e9 95 05 00 00 48 0f bf ca 48 0f bf d6 4c 0f bf c7 e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,20h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 20}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 08d5h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 b8 08 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+8e2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e2 08 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
0039h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
003dh or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
003fh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0043h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0047h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0049h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
004bh movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
004fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 08 00 00}
0054h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0058h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
005ch or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005eh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0060h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0062h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0066h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
006ah and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
006ch movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0070h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 08 00 00}
0075h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0079h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
007dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
007fh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0081h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0083h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0087h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 08 00 00}
008ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0090h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
0094h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0096h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0098h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
009ah movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
009eh movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00a2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00a4h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00a8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 08 00 00}
00adh movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
00b1h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
00b5h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b7h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
00b9h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00bbh movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00bfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 08 00 00}
00c4h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
00c8h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
00cah not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
00cch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
00d0h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00d4h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
00d8h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
00dah movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
00deh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00e2h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00e4h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
00e8h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 07 00 00}
00edh movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
00f1h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
00f5h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
00f7h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
00fbh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
00ffh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0101h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0103h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0107h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 07 00 00}
010ch movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0110h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0112h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0114h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0118h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
011ch and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
011eh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0122h movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0126h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0128h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
012ch jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 07 00 00}
0131h movsx rax,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c6}
0135h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0139h xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
013bh movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
013fh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0143h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0145h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0147h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
014bh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 07 00 00}
0150h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
0154h mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0156h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0158h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
015ch movsx rax,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c7}
0160h and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
0162h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0166h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5e 07 00 00}
016bh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
016fh not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
0171h movsx rbx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d9}
0175h movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
0179h call 7ff7c730e520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 fa ff ff}
017eh movsx rcx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c8}
0182h movsx rdx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d7}
0186h call 7ff7c6cdd2e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 e8 9c ff}
018bh movsx rdx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d0}
018fh mov ecx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cb}
0191h call 7ff7c73076c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 8c ff ff}
0196h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
019ah jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 07 00 00}
019fh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01a3h call 7ff7c6cdd0a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 e5 9c ff}
01a8h movsx rdx,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d0}
01ach movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
01b0h call 7ff7c73076c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 8b ff ff}
01b5h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
01b9h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 07 00 00}
01beh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01c2h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01c6h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01cah call 7ff7c730e448h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f9 ff ff}
01cfh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f5 06 00 00}
01d4h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01d8h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01dch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01e0h call 7ff7c730e438h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f9 ff ff}
01e5h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 06 00 00}
01eah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
01eeh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
01f2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
01f6h call 7ff7c730e428h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f8 ff ff}
01fbh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 06 00 00}
0200h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0204h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0208h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
020ch call 7ff7c730e418h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f8 ff ff}
0211h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b3 06 00 00}
0216h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
021ah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
021eh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0222h call 7ff7c730e408h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f8 ff ff}
0227h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 06 00 00}
022ch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0230h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0234h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0238h call 7ff7c730e3f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f8 ff ff}
023dh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 87 06 00 00}
0242h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0246h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
024ah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
024eh call 7ff7c730e3e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 f8 ff ff}
0253h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 06 00 00}
0258h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
025ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0260h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0264h call 7ff7c730e3d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f8 ff ff}
0269h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5b 06 00 00}
026eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0272h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0276h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
027ah call 7ff7c730e3c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f8 ff ff}
027fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 06 00 00}
0284h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0288h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
028ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0290h call 7ff7c730e3b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f7 ff ff}
0295h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2f 06 00 00}
029ah movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
029eh movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02a2h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02a6h call 7ff7c730e3a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f7 ff ff}
02abh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 19 06 00 00}
02b0h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02b4h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02b8h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02bch call 7ff7c730e398h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f7 ff ff}
02c1h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 06 00 00}
02c6h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02cah movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02ceh movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02d2h call 7ff7c730e388h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f7 ff ff}
02d7h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 05 00 00}
02dch movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02e0h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02e4h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02e8h call 7ff7c730e378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b f7 ff ff}
02edh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d7 05 00 00}
02f2h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
02f6h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
02fah movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
02feh call 7ff7c730e368h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f7 ff ff}
0303h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 05 00 00}
0308h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
030ch movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0310h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0314h call 7ff7c730e358h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f7 ff ff}
0319h jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ab 05 00 00}
031eh movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0322h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
0326h movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
032ah call 7ff7c730e348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 f6 ff ff}
032fh jmp near ptr 08c9h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 05 00 00}
0334h movsx rcx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ca}
0338h movsx rdx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d6}
033ch movsx r8,di                             ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4c 0f bf c7}
0340h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; uint eval<uint>(TernaryBitLogicKind:byte kind, uint a, uint b, uint c)
; tbl~eval_g8u[1321] = {57 56 48 83 ec 28 8b f9 8b f2 41 8b d0 45 8b c1 40 0f b6 cf ff c9 83 f9 5e 0f 87 0a 05 00 00 8b c9 48 8d 05 30 05 00 00 8b 04 88 4c 8d 0d de ff ff ff 49 03 c1 ff e0 41 0b d0 0b d6 8b c2 f7 d0 e9 dc 04 00 00 8b c2 8b d6 0b c2 f7 d0 41 23 c0 e9 cc 04 00 00 8b c2 8b d6 0b c2 f7 d0 e9 bf 04 00 00 8b c6 41 0b c0 f7 d0 23 c2 e9 b1 04 00 00 41 8b c0 44 8b c6 41 0b c0 f7 d0 e9 a1 04 00 00 8b c6 f7 d0 41 33 d0 23 c2 e9 93 04 00 00 8b c2 41 8b d0 23 c2 44 8b c6 41 0b c0 f7 d0 e9 7f 04 00 00 8b c6 f7 d0 23 c2 41 23 c0 e9 71 04 00 00 8b c2 41 33 c0 8b d6 0b c2 f7 d0 e9 61 04 00 00 8b c6 f7 d0 41 23 c0 e9 55 04 00 00 8b c6 f7 d0 8b ca f7 d1 41 0b c8 23 c1 e9 43 04 00 00 8b c6 f7 d0 44 8b c2 41 23 c0 e9 34 04 00 00 8b c6 f7 d0 41 8b c8 f7 d1 0b ca 23 c1 e9 22 04 00 00 8b c6 f7 d0 41 0b d0 23 c2 e9 14 04 00 00 8b c6 f7 d0 e9 0b 04 00 00 8b c2 41 0b c0 f7 d0 8b d6 23 c2 e9 fb 03 00 00 41 8b c0 0b c2 f7 d0 e9 ef 03 00 00 8b c2 f7 d0 8b d6 41 33 d0 23 c2 e9 df 03 00 00 8b c6 41 23 c0 0b c2 f7 d0 e9 d1 03 00 00 41 8b c0 f7 d0 44 8b c6 41 33 d0 23 c2 e9 bf 03 00 00 8b c6 23 c2 41 0b c0 f7 d0 e9 b1 03 00 00 8b c2 41 0b c0 f7 d0 41 33 d0 23 c6 c4 e2 48 f2 ca 0b c1 e9 99 03 00 00 8b c2 41 0b c0 41 23 d0 23 c6 c4 e2 48 f2 ca 0b c8 8b c1 f7 d0 e9 7f 03 00 00 8b c2 33 c6 8b d6 41 33 d0 23 c2 e9 6f 03 00 00 8b c2 41 33 c0 41 23 d0 8b ce 23 ca 33 c8 8b c1 f7 d0 e9 58 03 00 00 8b c2 23 c6 f7 d0 8b d6 41 33 d0 23 c2 e9 46 03 00 00 8b c6 f7 d0 f7 d2 41 23 c0 c4 62 38 f2 c2 41 0b c0 e9 30 03 00 00 41 8b c0 23 c6 f7 d0 44 8b c6 41 33 d0 23 c2 e9 1c 03 00 00 8b c6 f7 d0 41 f7 d0 23 c2 c4 c2 68 f2 d0 0b c2 e9 07 03 00 00 8b c2 41 0b c0 8b d6 33 c2 e9 f9 02 00 00 8b ca 41 0b c8 89 4c 24 20 48 8d 4c 24 20 e8 15 cf 99 ff 8b 10 8b ce e8 3c f5 9b ff 8b c8 e8 e5 ce 99 ff e9 d1 02 00 00 8b ce e8 b9 f5 ff ff e9 c5 02 00 00 8b ce e8 9d f5 ff ff e9 b9 02 00 00 8b ce e8 81 f5 ff ff e9 ad 02 00 00 8b ce e8 b5 ea ff ff e9 a1 02 00 00 8b ce e8 99 ea ff ff e9 95 02 00 00 8b ce e8 7d ea ff ff e9 89 02 00 00 8b ce e8 61 ea ff ff e9 7d 02 00 00 8b ce e8 45 ea ff ff e9 71 02 00 00 8b ce e8 29 ea ff ff e9 65 02 00 00 8b ce e8 0d ea ff ff e9 59 02 00 00 8b ce e8 f1 e9 ff ff e9 4d 02 00 00 8b ce e8 d5 e9 ff ff e9 41 02 00 00 8b ce e8 b9 e9 ff ff e9 35 02 00 00 8b ce e8 9d e9 ff ff e9 29 02 00 00 8b ce e8 81 e9 ff ff e9 1d 02 00 00 8b ce e8 65 e9 ff ff e9 11 02 00 00 8b ce e8 49 e9 ff ff e9 05 02 00 00 8b ce e8 2d e9 ff ff e9 f9 01 00 00 8b ce e8 11 e9 ff ff e9 ed 01 00 00 8b ce e8 f5 e8 ff ff e9 e1 01 00 00 8b ce e8 d9 e8 ff ff e9 d5 01 00 00 8b ce e8 bd e8 ff ff e9 c9 01 00 00 8b ce e8 a1 e8 ff ff e9 bd 01 00 00 8b ce e8 85 e8 ff ff e9 b1 01 00 00 8b ce e8 69 e8 ff ff e9 a5 01 00 00 8b ce e8 4d e8 ff ff e9 99 01 00 00 8b ce e8 31 e8 ff ff e9 8d 01 00 00 8b ce e8 15 e8 ff ff e9 81 01 00 00 8b ce e8 f9 e7 ff ff e9 75 01 00 00 8b ce e8 dd e7 ff ff e9 69 01 00 00 8b ce e8 c1 e7 ff ff e9 5d 01 00 00 8b ce e8 a5 e7 ff ff e9 51 01 00 00 8b ce e8 89 e7 ff ff e9 45 01 00 00 8b ce e8 6d e7 ff ff e9 39 01 00 00 8b ce e8 51 e7 ff ff e9 2d 01 00 00 8b ce e8 35 e7 ff ff e9 21 01 00 00 8b ce e8 19 e7 ff ff e9 15 01 00 00 8b ce e8 fd e6 ff ff e9 09 01 00 00 8b ce e8 e1 e6 ff ff e9 fd 00 00 00 8b ce e8 c5 e6 ff ff e9 f1 00 00 00 8b ce e8 a9 e6 ff ff e9 e5 00 00 00 8b ce e8 8d e6 ff ff e9 d9 00 00 00 8b ce e8 71 e6 ff ff e9 cd 00 00 00 8b ce e8 55 e6 ff ff e9 c1 00 00 00 8b ce e8 39 e6 ff ff e9 b5 00 00 00 8b ce e8 1d e6 ff ff e9 a9 00 00 00 8b ce e8 01 e6 ff ff e9 9d 00 00 00 8b ce e8 e5 e5 ff ff e9 91 00 00 00 8b ce e8 c9 e5 ff ff e9 85 00 00 00 8b ce e8 ad e5 ff ff eb 7c 8b ce e8 94 e5 ff ff eb 73 8b ce e8 7b e5 ff ff eb 6a 8b ce e8 62 e5 ff ff eb 61 8b ce e8 49 e5 ff ff eb 58 8b ce e8 30 e5 ff ff eb 4f 8b ce e8 17 e5 ff ff eb 46 8b ce e8 fe e4 ff ff eb 3d 8b ce e8 e5 e4 ff ff eb 34 8b ce e8 cc e4 ff ff eb 2b 8b ce e8 b3 e4 ff ff eb 22 8b ce e8 9a e4 ff ff eb 19 8b ce e8 81 e4 ff ff eb 10 8b ce e8 68 e4 ff ff eb 07 8b ce e8 4f e4 ff ff 90 48 83 c4 28 5e 5f c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0008h mov esi,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f2}
000ah mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
000dh mov r8d,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b c1}
0010h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0014h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0016h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0019h ja near ptr 0529h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 0a 05 00 00}
001fh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0021h lea rax,[rip+530h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 30 05 00 00}
0028h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
002bh lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
0032h add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
0035h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0037h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
003ah or edx,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d6}
003ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003eh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0040h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dc 04 00 00}
0045h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0047h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0049h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
004bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
004dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0050h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 04 00 00}
0055h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0057h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0059h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
005bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
005dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 04 00 00}
0062h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0064h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0067h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0069h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
006bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 04 00 00}
0070h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0073h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0076h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0079h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 04 00 00}
0080h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0082h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0084h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
0087h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0089h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 04 00 00}
008eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0090h mov edx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d0}
0093h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0095h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0098h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
009bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 04 00 00}
00a2h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00a4h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00a6h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00a8h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00abh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 04 00 00}
00b0h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00b2h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
00b5h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00b7h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
00b9h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00bbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 61 04 00 00}
00c0h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00c2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00c4h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00c7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 04 00 00}
00cch mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00ceh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00d0h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
00d2h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00d4h or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
00d7h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00d9h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 04 00 00}
00deh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00e0h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00e2h mov r8d,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c2}
00e5h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
00e8h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 04 00 00}
00edh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00efh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00f1h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
00f4h not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
00f6h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00f8h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00fah jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 22 04 00 00}
00ffh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0101h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0103h or edx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b d0}
0106h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0108h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 14 04 00 00}
010dh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
010fh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0111h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0b 04 00 00}
0116h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0118h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
011bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
011dh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
011fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0121h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 03 00 00}
0126h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0129h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
012bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
012dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ef 03 00 00}
0132h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0134h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0136h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0138h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
013bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
013dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 03 00 00}
0142h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0144h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0147h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0149h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
014bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 03 00 00}
0150h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0153h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0155h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
0158h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
015bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
015dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bf 03 00 00}
0162h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0164h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0166h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0169h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
016bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 03 00 00}
0170h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0172h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0175h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0177h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
017ah and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
017ch andn ecx,esi,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 ca}
0181h or eax,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c1}
0183h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 03 00 00}
0188h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
018ah or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
018dh and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
0190h and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
0192h andn ecx,esi,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 ca}
0197h or ecx,eax                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c8}
0199h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
019bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
019dh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 03 00 00}
01a2h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01a4h xor eax,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c6}
01a6h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
01a8h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01abh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
01adh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6f 03 00 00}
01b2h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01b4h xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
01b7h and edx,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 d0}
01bah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
01bch and ecx,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 ca}
01beh xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
01c0h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
01c2h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01c4h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 58 03 00 00}
01c9h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
01cbh and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
01cdh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01cfh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
01d1h xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01d4h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
01d6h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 03 00 00}
01dbh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
01ddh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01dfh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
01e1h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
01e4h andn r8d,r8d,edx                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 62 38 f2 c2}
01e9h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
01ech jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 30 03 00 00}
01f1h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
01f4h and eax,esi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c6}
01f6h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
01f8h mov r8d,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c6}
01fbh xor edx,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 d0}
01feh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0200h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 03 00 00}
0205h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0207h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0209h not r8d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d0}
020ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
020eh andn edx,edx,r8d                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 c2 68 f2 d0}
0213h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0215h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 07 03 00 00}
021ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
021ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
021fh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0221h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0223h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 02 00 00}
0228h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
022ah or ecx,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c8}
022dh mov [rsp+20h],ecx                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 20}
0231h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0236h call 7ff7c6cacd30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 cf 99 ff}
023bh mov edx,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 10}
023dh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
023fh call 7ff7c6ccf360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c f5 9b ff}
0244h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
0246h call 7ff7c6cacd10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ce 99 ff}
024bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 02 00 00}
0250h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0252h call 7ff7c730f3f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f5 ff ff}
0257h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c5 02 00 00}
025ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
025eh call 7ff7c730f3e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f5 ff ff}
0263h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 02 00 00}
0268h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
026ah call 7ff7c730f3d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f5 ff ff}
026fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ad 02 00 00}
0274h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0276h call 7ff7c730e910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 ea ff ff}
027bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a1 02 00 00}
0280h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0282h call 7ff7c730e900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ea ff ff}
0287h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 02 00 00}
028ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
028eh call 7ff7c730e8f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ea ff ff}
0293h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 02 00 00}
0298h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
029ah call 7ff7c730e8e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 ea ff ff}
029fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7d 02 00 00}
02a4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02a6h call 7ff7c730e8d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 ea ff ff}
02abh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 71 02 00 00}
02b0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02b2h call 7ff7c730e8c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ea ff ff}
02b7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 02 00 00}
02bch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02beh call 7ff7c730e8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ea ff ff}
02c3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 02 00 00}
02c8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02cah call 7ff7c730e8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e9 ff ff}
02cfh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 4d 02 00 00}
02d4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02d6h call 7ff7c730e890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e9 ff ff}
02dbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 41 02 00 00}
02e0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02e2h call 7ff7c730e880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 e9 ff ff}
02e7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 02 00 00}
02ech mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02eeh call 7ff7c730e870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e9 ff ff}
02f3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 02 00 00}
02f8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
02fah call 7ff7c730e860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e9 ff ff}
02ffh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1d 02 00 00}
0304h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0306h call 7ff7c730e850h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 e9 ff ff}
030bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 11 02 00 00}
0310h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0312h call 7ff7c730e840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e9 ff ff}
0317h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 02 00 00}
031ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
031eh call 7ff7c730e830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e9 ff ff}
0323h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f9 01 00 00}
0328h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
032ah call 7ff7c730e820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e9 ff ff}
032fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ed 01 00 00}
0334h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0336h call 7ff7c730e810h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 e8 ff ff}
033bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e1 01 00 00}
0340h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0342h call 7ff7c730e800h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e8 ff ff}
0347h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 01 00 00}
034ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
034eh call 7ff7c730e7f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e8 ff ff}
0353h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c9 01 00 00}
0358h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
035ah call 7ff7c730e7e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e8 ff ff}
035fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 01 00 00}
0364h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0366h call 7ff7c730e7d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 e8 ff ff}
036bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b1 01 00 00}
0370h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0372h call 7ff7c730e7c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e8 ff ff}
0377h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 01 00 00}
037ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
037eh call 7ff7c730e7b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e8 ff ff}
0383h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 99 01 00 00}
0388h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
038ah call 7ff7c730e7a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 e8 ff ff}
038fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 01 00 00}
0394h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0396h call 7ff7c730e790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 e8 ff ff}
039bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 81 01 00 00}
03a0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03a2h call 7ff7c730e780h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 e7 ff ff}
03a7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
03ach mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03aeh call 7ff7c730e770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd e7 ff ff}
03b3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 69 01 00 00}
03b8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03bah call 7ff7c730e760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 e7 ff ff}
03bfh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 5d 01 00 00}
03c4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03c6h call 7ff7c730e750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 e7 ff ff}
03cbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 01 00 00}
03d0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03d2h call 7ff7c730e740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 e7 ff ff}
03d7h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 45 01 00 00}
03dch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03deh call 7ff7c730e730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e7 ff ff}
03e3h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 39 01 00 00}
03e8h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03eah call 7ff7c730e720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 e7 ff ff}
03efh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 2d 01 00 00}
03f4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
03f6h call 7ff7c730e710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 e7 ff ff}
03fbh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 01 00 00}
0400h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0402h call 7ff7c730e700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e7 ff ff}
0407h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 15 01 00 00}
040ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
040eh call 7ff7c730e6f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e6 ff ff}
0413h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 09 01 00 00}
0418h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
041ah call 7ff7c730e6e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e6 ff ff}
041fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 00 00 00}
0424h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0426h call 7ff7c730e6d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 e6 ff ff}
042bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 00 00 00}
0430h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0432h call 7ff7c730e6c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e6 ff ff}
0437h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e5 00 00 00}
043ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
043eh call 7ff7c730e6b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d e6 ff ff}
0443h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d9 00 00 00}
0448h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
044ah call 7ff7c730e6a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e6 ff ff}
044fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cd 00 00 00}
0454h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0456h call 7ff7c730e690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 e6 ff ff}
045bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 00 00 00}
0460h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0462h call 7ff7c730e680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 e6 ff ff}
0467h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 00 00 00}
046ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
046eh call 7ff7c730e670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d e6 ff ff}
0473h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 00 00 00}
0478h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
047ah call 7ff7c730e660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e6 ff ff}
047fh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9d 00 00 00}
0484h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0486h call 7ff7c730e650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e5 ff ff}
048bh jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 00 00 00}
0490h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0492h call 7ff7c730e640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e5 ff ff}
0497h jmp near ptr 0521h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 00 00 00}
049ch mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
049eh call 7ff7c730e630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad e5 ff ff}
04a3h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 7c}
04a5h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04a7h call 7ff7c730e620h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 e5 ff ff}
04ach jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 73}
04aeh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04b0h call 7ff7c730e610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b e5 ff ff}
04b5h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 6a}
04b7h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04b9h call 7ff7c730e600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e5 ff ff}
04beh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 61}
04c0h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04c2h call 7ff7c730e5f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e5 ff ff}
04c7h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 58}
04c9h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04cbh call 7ff7c730e5e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 e5 ff ff}
04d0h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 4f}
04d2h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04d4h call 7ff7c730e5d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e5 ff ff}
04d9h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
04dbh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04ddh call 7ff7c730e5c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe e4 ff ff}
04e2h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 3d}
04e4h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04e6h call 7ff7c730e5b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e4 ff ff}
04ebh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 34}
04edh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04efh call 7ff7c730e5a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc e4 ff ff}
04f4h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 2b}
04f6h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
04f8h call 7ff7c730e590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 e4 ff ff}
04fdh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
04ffh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0501h call 7ff7c730e580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a e4 ff ff}
0506h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 19}
0508h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
050ah call 7ff7c730e570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e4 ff ff}
050fh jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
0511h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0513h call 7ff7c730e560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e4 ff ff}
0518h jmp short 0521h                         ; JMP rel8 || EB cb || encoded[2]{eb 07}
051ah mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
051ch call 7ff7c730e550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e4 ff ff}
0521h nop                                     ; NOP || o32 90 || encoded[1]{90}
0522h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0526h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0527h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0528h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int eval<int>(TernaryBitLogicKind:byte kind, int a, int b, int c)
; tbl~eval_g8u[216] = {57 56 53 48 83 ec 30 8b d9 41 8b f0 41 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 63 06 00 00 8b c9 48 8d 05 8a 06 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 0b f7 0b d6 8b c2 f7 d0 e9 35 06 00 00 8b c6 0b c2 f7 d0 8b cf 23 c1 e9 26 06 00 00 8b c6 0b c2 f7 d0 e9 1b 06 00 00 8b c2 8b d7 0b c2 f7 d0 8b ce 23 c1 e9 0a 06 00 00 8b c7 0b c2 f7 d0 e9 ff 05 00 00 8b c2 f7 d0 8b d6 8b cf 33 ca 23 c1 e9 ee 05 00 00 8b c6 8b cf 23 c8 0b ca 8b c1 f7 d0 e9 dd 05 00 00 8b c2 f7 d0 8b d6 23 c2 8b cf 23 c1 e9 cc 05 00 00 8b c6 8b cf 33 c8 0b ca 8b c1 f7 d0 e9 bb 05 00 00 8b c2 f7 d0 8b d7 23 c2 e9 ae 05 00 00 8b da f7 d3 8b ce e8 1c fe ff ff 0b c7 23 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov esi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f0}
000ch mov edi,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 0680h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 63 06 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+68ah]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 8a 06 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h or edx,esi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d6}
0039h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
003bh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
003dh jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 06 00 00}
0042h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0044h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0046h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0048h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
004ah and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
004ch jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 26 06 00 00}
0051h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
0053h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0055h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0057h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 06 00 00}
005ch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
005eh mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
0060h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0062h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0064h mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
0066h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0068h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 06 00 00}
006dh mov eax,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c7}
006fh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0071h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0073h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ff 05 00 00}
0078h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
007ah not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
007ch mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
007eh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
0080h xor ecx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 ca}
0082h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
0084h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ee 05 00 00}
0089h mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
008bh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
008dh and ecx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c8}
008fh or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
0091h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0093h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0095h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 05 00 00}
009ah mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
009ch not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
009eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
00a0h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00a2h mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00a4h and eax,ecx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c1}
00a6h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 05 00 00}
00abh mov eax,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c6}
00adh mov ecx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b cf}
00afh xor ecx,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c8}
00b1h or ecx,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b ca}
00b3h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
00b5h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00b7h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 bb 05 00 00}
00bch mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
00beh not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
00c0h mov edx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d7}
00c2h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
00c4h jmp near ptr 0677h                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 05 00 00}
00c9h mov ebx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b da}
00cbh not ebx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d3}
00cdh mov ecx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ce}
00cfh call 7ff7c73105d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c fe ff ff}
00d4h or eax,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c7}
00d6h and eax,ebx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c3}
------------------------------------------------------------------------------------------------------------------------
; ulong eval<ulong>(TernaryBitLogicKind:byte kind, ulong a, ulong b, ulong c)
; tbl~eval_g8u[770] = {57 56 48 83 ec 28 8b f9 48 8b f2 49 8b d0 4d 8b c1 40 0f b6 cf ff c9 83 f9 5e 0f 87 bb 05 00 00 8b c9 48 8d 05 e7 05 00 00 8b 04 88 4c 8d 0d de ff ff ff 49 03 c1 ff e0 49 0b d0 48 0b d6 48 8b c2 48 f7 d0 e9 8a 05 00 00 48 8b c2 48 8b d6 48 0b c2 48 f7 d0 49 23 c0 e9 76 05 00 00 48 8b c2 48 8b d6 48 0b c2 48 f7 d0 e9 65 05 00 00 48 8b c6 49 0b c0 48 f7 d0 48 23 c2 e9 54 05 00 00 49 8b c0 4c 8b c6 49 0b c0 48 f7 d0 e9 43 05 00 00 48 8b c6 48 f7 d0 49 33 d0 48 23 c2 e9 32 05 00 00 48 8b c2 49 8b d0 48 23 c2 4c 8b c6 49 0b c0 48 f7 d0 e9 1b 05 00 00 48 8b c6 48 f7 d0 48 23 c2 49 23 c0 e9 0a 05 00 00 48 8b c2 49 33 c0 48 8b d6 48 0b c2 48 f7 d0 e9 f6 04 00 00 48 8b c6 48 f7 d0 49 23 c0 e9 e8 04 00 00 48 8b c6 48 f7 d0 48 8b ca 48 f7 d1 49 0b c8 48 23 c1 e9 d1 04 00 00 48 8b c6 48 f7 d0 4c 8b c2 49 23 c0 e9 c0 04 00 00 48 8b c6 48 f7 d0 49 8b c8 48 f7 d1 48 0b ca 48 23 c1 e9 a9 04 00 00 48 8b c6 48 f7 d0 49 0b d0 48 23 c2 e9 98 04 00 00 48 8b c6 48 f7 d0 e9 8d 04 00 00 48 8b c2 49 0b c0 48 f7 d0 48 8b d6 48 23 c2 e9 79 04 00 00 49 8b c0 48 0b c2 48 f7 d0 e9 6b 04 00 00 48 8b c2 48 f7 d0 48 8b d6 49 33 d0 48 23 c2 e9 57 04 00 00 48 8b c6 49 23 c0 48 0b c2 48 f7 d0 e9 46 04 00 00 49 8b c0 48 f7 d0 4c 8b c6 49 33 d0 48 23 c2 e9 32 04 00 00 48 8b c6 48 23 c2 49 0b c0 48 f7 d0 e9 21 04 00 00 48 8b c2 49 0b c0 48 f7 d0 49 33 d0 48 23 c6 c4 e2 c8 f2 ca 48 0b c1 e9 05 04 00 00 48 8b c2 49 0b c0 49 23 d0 48 23 c6 c4 e2 c8 f2 ca 48 0b c8 48 8b c1 48 f7 d0 e9 e6 03 00 00 48 8b c2 48 33 c6 48 8b d6 49 33 d0 48 23 c2 e9 d2 03 00 00 48 8b c2 49 33 c0 49 23 d0 48 8b ce 48 23 ca 48 33 c8 48 8b c1 48 f7 d0 e9 b5 03 00 00 48 8b c2 48 23 c6 48 f7 d0 48 8b d6 49 33 d0 48 23 c2 e9 9e 03 00 00 48 8b c6 48 f7 d0 48 f7 d2 49 23 c0 c4 62 b8 f2 c2 49 0b c0 e9 85 03 00 00 49 8b c0 48 23 c6 48 f7 d0 4c 8b c6 49 33 d0 48 23 c2 e9 6e 03 00 00 48 8b c6 48 f7 d0 49 f7 d0 48 23 c2 c4 c2 e8 f2 d0 48 0b c2 e9 55 03 00 00 48 8b c2 49 0b c0 48 8b d6 48 33 c2 e9 44 03 00 00 48 8b ca 49 0b c8 48 89 4c 24 20 48 8d 4c 24 20 e8 0c b4 99 ff 48 8b 10 48 8b ce e8 b1 d9 9b ff 48 8b c8 e8 d9 b3 99 ff e9 17 03 00 00 48 8b ce e8 54 f8 ff ff e9 0a 03 00 00 48 8b ce e8 37 f8 ff ff e9 fd 02 00 00 48 8b ce e8 1a f8 ff ff e9 f0 02 00 00 48 8b ce e8 fd f7 ff ff e9 e3 02 00 00 48 8b ce e8 e0 f7 ff ff e9 d6 02 00 00 48 8b ce e8 c3}
; Capture completion code = ZEDx6_RET
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0006h mov edi,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f9}
0008h mov rsi,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f2}
000bh mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
000eh mov r8,r9                               ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b c1}
0011h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0015h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0017h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
001ah ja near ptr 05dbh                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 bb 05 00 00}
0020h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0022h lea rax,[rip+5e7h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 e7 05 00 00}
0029h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
002ch lea r9,[rip-22h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 0d de ff ff ff}
0033h add rax,r9                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c1}
0036h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0038h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
003bh or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
003eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0041h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0044h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 05 00 00}
0049h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
004ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004fh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0052h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0055h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0058h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 05 00 00}
005dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0060h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0063h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0066h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0069h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 05 00 00}
006eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0071h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0074h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0077h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
007ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 54 05 00 00}
007fh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0082h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0085h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0088h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
008bh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 43 05 00 00}
0090h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0093h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0096h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0099h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
009ch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 05 00 00}
00a1h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00a4h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
00a7h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00aah mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
00adh or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
00b0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00b3h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 1b 05 00 00}
00b8h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00bbh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00beh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00c1h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
00c4h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 05 00 00}
00c9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00cch xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
00cfh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00d2h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
00d5h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00d8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f6 04 00 00}
00ddh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00e0h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00e3h and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
00e6h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 04 00 00}
00ebh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00eeh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00f1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
00f4h not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
00f7h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
00fah and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00fdh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d1 04 00 00}
0102h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0105h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0108h mov r8,rdx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c2}
010bh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
010eh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 c0 04 00 00}
0113h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0116h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0119h mov rcx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c8}
011ch not rcx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d1}
011fh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
0122h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0125h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 a9 04 00 00}
012ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
012dh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0130h or rdx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b d0}
0133h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0136h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 98 04 00 00}
013bh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
013eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0141h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8d 04 00 00}
0146h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0149h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
014ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
014fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0152h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0155h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 79 04 00 00}
015ah mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
015dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0160h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0163h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 04 00 00}
0168h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
016bh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
016eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0171h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0174h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0177h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 57 04 00 00}
017ch mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
017fh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0182h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0185h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0188h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 04 00 00}
018dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0190h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0193h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
0196h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
0199h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
019ch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 32 04 00 00}
01a1h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01a4h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01a7h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01aah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01adh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 04 00 00}
01b2h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01b5h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01bbh xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
01beh and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
01c1h andn rcx,rsi,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 ca}
01c6h or rax,rcx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c1}
01c9h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 04 00 00}
01ceh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01d1h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
01d4h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
01d7h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
01dah andn rcx,rsi,rdx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 ca}
01dfh or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
01e2h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01e5h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01e8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e6 03 00 00}
01edh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01f0h xor rax,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c6}
01f3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01f6h xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
01f9h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01fch jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d2 03 00 00}
0201h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0204h xor rax,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c0}
0207h and rdx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 d0}
020ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
020dh and rcx,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 ca}
0210h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
0213h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0216h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0219h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 b5 03 00 00}
021eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0221h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
0224h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0227h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
022ah xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
022dh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0230h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 9e 03 00 00}
0235h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0238h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
023bh not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
023eh and rax,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c0}
0241h andn r8,r8,rdx                          ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 62 b8 f2 c2}
0246h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0249h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 85 03 00 00}
024eh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0251h and rax,rsi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c6}
0254h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0257h mov r8,rsi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c6}
025ah xor rdx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 d0}
025dh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0260h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 6e 03 00 00}
0265h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0268h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
026bh not r8                                  ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d0}
026eh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0271h andn rdx,rdx,r8                         ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 c2 e8 f2 d0}
0276h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0279h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 55 03 00 00}
027eh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0281h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0284h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0287h xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
028ah jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 44 03 00 00}
028fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0292h or rcx,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c8}
0295h mov [rsp+20h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 20}
029ah lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
029fh call 7ff7c6cacdf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c b4 99 ff}
02a4h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
02a7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02aah call 7ff7c6ccf3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d9 9b ff}
02afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02b2h call 7ff7c6cacdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 b3 99 ff}
02b7h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
02bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02bfh call 7ff7c7311258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 f8 ff ff}
02c4h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 0a 03 00 00}
02c9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02cch call 7ff7c7311248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f8 ff ff}
02d1h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 fd 02 00 00}
02d6h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02d9h call 7ff7c7311238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a f8 ff ff}
02deh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 02 00 00}
02e3h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02e6h call 7ff7c7311228h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f7 ff ff}
02ebh jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 e3 02 00 00}
02f0h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
02f3h call 7ff7c7311218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f7 ff ff}
02f8h jmp near ptr 05d3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 d6 02 00 00}
02fdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0300h (bad)                                   ; <invalid> || <invalid> || encoded[2]{e8 c3}
------------------------------------------------------------------------------------------------------------------------
; long eval<long>(TernaryBitLogicKind:byte kind, long a, long b, long c)
; tbl~eval_g8u[2025] = {57 56 53 48 83 ec 30 8b d9 49 8b f0 49 8b f9 0f b6 cb ff c9 83 f9 5e 0f 87 7b 07 00 00 8b c9 48 8d 05 a2 07 00 00 8b 04 88 4c 8d 05 df ff ff ff 49 03 c0 ff e0 48 0b f7 48 0b d6 48 8b c2 48 f7 d0 e9 49 07 00 00 48 8b c6 48 0b c2 48 f7 d0 48 8b cf 48 23 c1 e9 35 07 00 00 48 8b c6 48 0b c2 48 f7 d0 e9 27 07 00 00 48 8b c2 48 8b d7 48 0b c2 48 f7 d0 48 8b ce 48 23 c1 e9 10 07 00 00 48 8b c7 48 0b c2 48 f7 d0 e9 02 07 00 00 48 8b c2 48 f7 d0 48 8b d6 48 8b cf 48 33 ca 48 23 c1 e9 eb 06 00 00 48 8b c6 48 8b cf 48 23 c8 48 0b ca 48 8b c1 48 f7 d0 e9 d4 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 23 c2 48 8b cf 48 23 c1 e9 bd 06 00 00 48 8b c6 48 8b cf 48 33 c8 48 0b ca 48 8b c1 48 f7 d0 e9 a6 06 00 00 48 8b c2 48 f7 d0 48 8b d7 48 23 c2 e9 95 06 00 00 48 8b da 48 f7 d3 48 8b ce e8 70 fe ff ff 48 0b c7 48 23 c3 e9 7c 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 23 c2 e9 6b 06 00 00 48 8b da 48 f7 d3 48 8b cf e8 46 fe ff ff 48 0b c6 48 23 c3 e9 52 06 00 00 48 8b c2 48 f7 d0 48 8b d6 48 0b d7 48 23 c2 e9 3e 06 00 00 48 8b c2 48 f7 d0 e9 33 06 00 00 48 8b c6 48 8b cf 48 0b c8 48 8b c1 48 f7 d0 48 23 c2 e9 1c 06 00 00 48 8b c7 48 8b ce 48 0b c8 48 8b c1 48 f7 d0 e9 08 06 00 00 48 8b c6 48 f7 d0 48 8b cf 48 33 ca 48 23 c1 e9 f4 05 00 00 48 8b c2 48 8b d7 48 23 d0 48 8b ce 48 0b ca 48 8b c1 48 f7 d0 e9 da 05 00 00 48 8b c7 48 f7 d0 48 8b ce 48 33 ca 48 23 c1 e9 c6 05 00 00 48 8b c2 48 8b d6 48 23 d0 48 8b cf 48 0b ca 48 8b c1 48 f7 d0 e9 ac 05 00 00 48 8b c6 48 0b c7 48 f7 d0 48 8b ce 4c 8b c7 49 33 c8 48 23 c2 c4 e2 e8 f2 d1 48 0b c2 e9 8a 05 00 00 48 8b c6 48 0b c7 48 8b ce 4c 8b c7 49 23 c8 48 23 c2 c4 e2 e8 f2 d1 48 0b d0 48 8b c2 48 f7 d0 e9 65 05 00 00 48 8b c6 48 33 c2 48 8b cf 48 33 ca 48 23 c1 e9 51 05 00 00 48 8b de 48 33 df 48 8b ce 48 8b c7 48 23 c8 48 89 4c 24 28 48 8b ca 48 8b 54 24 28 e8 11 87 9c ff 48 8b d0 48 8b cb e8 86 5d ff ff 48 8b c8 e8 4e 67 ff ff e9 18 05 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 53 fb ff ff e9 05 05 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 30 fb ff ff e9 f2 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 0d fb ff ff e9 df 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ea fa ff ff e9 cc 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 c7 fa ff ff e9 b9 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a4 fa ff ff e9 a6 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 81 fa ff ff e9 93 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5e fa ff ff e9 80 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 3b fa ff ff e9 6d 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 18 fa ff ff e9 5a 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f5 f9 ff ff e9 47 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 d2 f9 ff ff e9 34 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 af f9 ff ff e9 21 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 8c f9 ff ff e9 0e 04 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 69 f9 ff ff e9 fb 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 46 f9 ff ff e9 e8 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 23 f9 ff ff e9 d5 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 00 f9 ff ff e9 c2 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 dd f8 ff ff e9 af 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ba f8 ff ff e9 9c 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 97 f8 ff ff e9 89 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 74 f8 ff ff e9 76 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 51 f8 ff ff e9 63 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 2e f8 ff ff e9 50 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 0b f8 ff ff e9 3d 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 e8 f7 ff ff e9 2a 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 c5 f7 ff ff e9 17 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a2 f7 ff ff e9 04 03 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 7f f7 ff ff e9 f1 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5c f7 ff ff e9 de 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 39 f7 ff ff e9 cb 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5e ef ff ff e9 b8 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 3b ef ff ff e9 a5 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 18 ef ff ff e9 92 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f5 ee ff ff e9 7f 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 d2 ee ff ff e9 6c 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 af ee ff ff e9 59 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 8c ee ff ff e9 46 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 69 ee ff ff e9 33 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 46 ee ff ff e9 20 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 23 ee ff ff e9 0d 02 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 00 ee ff ff e9 fa 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 dd ed ff ff e9 e7 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ba ed ff ff e9 d4 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 97 ed ff ff e9 c1 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 74 ed ff ff e9 ae 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 51 ed ff ff e9 9b 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 2e ed ff ff e9 88 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 0b ed ff ff e9 75 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 e8 ec ff ff e9 62 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 c5 ec ff ff e9 4f 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 a2 ec ff ff e9 3c 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 7f ec ff ff e9 29 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 5c ec ff ff e9 16 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 39 ec ff ff e9 03 01 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 16 ec ff ff e9 f0 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 f3 eb ff ff e9 dd 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 d0 eb ff ff e9 ca 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 ad eb ff ff e9 b7 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 8a eb ff ff e9 a4 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 67 eb ff ff e9 91 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 44 eb ff ff e9 7e 00 00 00 48 8b ca 48 8b d6 4c 8b c7 e8 21 eb ff ff eb 6e 48 8b ca 48 8b d6 4c 8b c7 e8 01 eb ff ff eb 5e 48 8b ca 48 8b d6 4c 8b c7 e8 e1 ea ff ff eb 4e 48 8b ca 48 8b d6 4c 8b c7 e8 c1 ea ff ff eb 3e 48 8b ca 48 8b d6 4c 8b c7 e8 a1 ea ff ff eb 2e 48 8b ca 48 8b d6 4c 8b c7 e8 81 ea ff ff eb 1e 48 8b ca 48 8b d6 4c 8b c7 e8 61 ea ff ff eb 0e 48 8b ca 48 8b d6 4c 8b c7 e8 41 ea ff ff 90 48 83 c4 30 5b 5e 5f c3 48 b9 a8 1b 68 c6 f7 7f 00 00 e8 19 42 b9 5e 48 8b f0 0f b6 cb e8 0e ea ff ff 48 8b d0 48 8b ce e8 f3 6f 08 ff 48 8b ce e8 4b 8e b0 5e cc 00 00 26 00 00 00 37 00 00 00 4b 00 00 00 59 00 00 00 70 00 00 00 7e 00 00 00 95 00 00 00 ac 00 00 00 c3}
; Capture completion code = RET_ZEDx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h mov ebx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d9}
0009h mov rsi,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f0}
000ch mov rdi,r9                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f9}
000fh movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
0012h dec ecx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c9}
0014h cmp ecx,5eh                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 5e}
0017h ja near ptr 0798h                       ; JA rel32 || 0F 87 cd || encoded[6]{0f 87 7b 07 00 00}
001dh mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
001fh lea rax,[rip+7a2h]                      ; LEA r64, m || REX.W 8D /r || encoded[7]{48 8d 05 a2 07 00 00}
0026h mov eax,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 88}
0029h lea r8,[rip-21h]                        ; LEA r64, m || REX.W 8D /r || encoded[7]{4c 8d 05 df ff ff ff}
0030h add rax,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 c0}
0033h jmp rax                                 ; JMP r/m64 || FF /4 || encoded[2]{ff e0}
0035h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0038h or rdx,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d6}
003bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
003eh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0041h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 49 07 00 00}
0046h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0049h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
004ch not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
004fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0052h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0055h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 35 07 00 00}
005ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005dh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0060h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0063h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 27 07 00 00}
0068h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
006bh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
006eh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0071h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0074h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0077h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
007ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 10 07 00 00}
007fh mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0082h or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0085h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0088h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 02 07 00 00}
008dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0090h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0093h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0096h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0099h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
009ch and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
009fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 eb 06 00 00}
00a4h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00aah and rcx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c8}
00adh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
00b0h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00b3h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00b6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 06 00 00}
00bbh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00beh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00c1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
00c4h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
00cdh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 bd 06 00 00}
00d2h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
00d5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d8h xor rcx,rax                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c8}
00dbh or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
00deh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e1h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00e4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 06 00 00}
00e9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
00ech not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
00efh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
00f2h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
00f5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 95 06 00 00}
00fah mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
00fdh not rbx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d3}
0100h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0103h call 7ff7c7312268h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 fe ff ff}
0108h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
010bh and rax,rbx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c3}
010eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 06 00 00}
0113h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0116h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0119h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
011ch and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
011fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6b 06 00 00}
0124h mov rbx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b da}
0127h not rbx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d3}
012ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
012dh call 7ff7c7312268h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fe ff ff}
0132h or rax,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c6}
0135h and rax,rbx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c3}
0138h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 52 06 00 00}
013dh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0140h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0143h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0146h or rdx,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d7}
0149h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
014ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3e 06 00 00}
0151h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0154h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0157h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 06 00 00}
015ch mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
015fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0162h or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
0165h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0168h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
016bh and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
016eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 1c 06 00 00}
0173h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
0176h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0179h or rcx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c8}
017ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
017fh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0182h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 08 06 00 00}
0187h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
018ah not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
018dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0190h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
0193h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0196h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f4 05 00 00}
019bh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
019eh mov rdx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d7}
01a1h and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
01a4h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01a7h or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
01aah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01adh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01b0h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 da 05 00 00}
01b5h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
01b8h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01bbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01beh xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
01c1h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
01c4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c6 05 00 00}
01c9h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
01cch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
01cfh and rdx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 d0}
01d2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01d5h or rcx,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b ca}
01d8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
01dbh not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01deh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ac 05 00 00}
01e3h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
01e6h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
01e9h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
01ech mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01efh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
01f2h xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
01f5h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
01f8h andn rdx,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 d1}
01fdh or rax,rdx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c2}
0200h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8a 05 00 00}
0205h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0208h or rax,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b c7}
020bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
020eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0211h and rcx,r8                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c8}
0214h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0217h andn rdx,rdx,rcx                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 e8 f2 d1}
021ch or rdx,rax                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b d0}
021fh mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0222h not rax                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d0}
0225h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 65 05 00 00}
022ah mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
022dh xor rax,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c2}
0230h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0233h xor rcx,rdx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 ca}
0236h and rax,rcx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c1}
0239h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 51 05 00 00}
023eh mov rbx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b de}
0241h xor rbx,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 df}
0244h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0247h mov rax,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c7}
024ah and rcx,rax                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c8}
024dh mov [rsp+28h],rcx                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 4c 24 28}
0252h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0255h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
025ah call 7ff7c6cdac60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 87 9c ff}
025fh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0262h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0265h call 7ff7c73082e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 5d ff ff}
026ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026dh call 7ff7c7308cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 67 ff ff}
0272h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 18 05 00 00}
0277h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
027ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
027dh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0280h call 7ff7c73120c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fb ff ff}
0285h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 05 05 00 00}
028ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
028dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0290h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0293h call 7ff7c73120b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fb ff ff}
0298h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f2 04 00 00}
029dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02a0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02a3h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02a6h call 7ff7c73120a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fb ff ff}
02abh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 df 04 00 00}
02b0h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02b3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02b6h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02b9h call 7ff7c7312098h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea fa ff ff}
02beh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cc 04 00 00}
02c3h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02c6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02c9h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02cch call 7ff7c7312088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fa ff ff}
02d1h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b9 04 00 00}
02d6h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02d9h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02dch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02dfh call 7ff7c7312078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 fa ff ff}
02e4h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a6 04 00 00}
02e9h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02ech mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
02efh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
02f2h call 7ff7c7312068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa ff ff}
02f7h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 93 04 00 00}
02fch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
02ffh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0302h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0305h call 7ff7c7312058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e fa ff ff}
030ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 80 04 00 00}
030fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0312h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0315h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0318h call 7ff7c7312048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b fa ff ff}
031dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6d 04 00 00}
0322h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0325h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0328h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
032bh call 7ff7c7312038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 fa ff ff}
0330h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 5a 04 00 00}
0335h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0338h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
033bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
033eh call 7ff7c7312028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f9 ff ff}
0343h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 47 04 00 00}
0348h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
034bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
034eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0351h call 7ff7c7312018h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f9 ff ff}
0356h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 34 04 00 00}
035bh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
035eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0361h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0364h call 7ff7c7312008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f9 ff ff}
0369h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 21 04 00 00}
036eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0371h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0374h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0377h call 7ff7c7311ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c f9 ff ff}
037ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0e 04 00 00}
0381h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0384h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0387h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
038ah call 7ff7c7311fe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f9 ff ff}
038fh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fb 03 00 00}
0394h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0397h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
039ah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
039dh call 7ff7c7311fd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f9 ff ff}
03a2h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e8 03 00 00}
03a7h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03aah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03adh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03b0h call 7ff7c7311fc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f9 ff ff}
03b5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d5 03 00 00}
03bah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03bdh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03c0h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03c3h call 7ff7c7311fb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 f9 ff ff}
03c8h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c2 03 00 00}
03cdh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03d0h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03d3h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03d6h call 7ff7c7311fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f8 ff ff}
03dbh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 af 03 00 00}
03e0h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03e3h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03e6h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03e9h call 7ff7c7311f98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f8 ff ff}
03eeh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9c 03 00 00}
03f3h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
03f6h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
03f9h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
03fch call 7ff7c7311f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 f8 ff ff}
0401h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 89 03 00 00}
0406h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0409h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
040ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
040fh call 7ff7c7311f78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 f8 ff ff}
0414h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 76 03 00 00}
0419h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
041ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
041fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0422h call 7ff7c7311f68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f8 ff ff}
0427h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 63 03 00 00}
042ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
042fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0432h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0435h call 7ff7c7311f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f8 ff ff}
043ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 50 03 00 00}
043fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0442h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0445h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0448h call 7ff7c7311f48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f8 ff ff}
044dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3d 03 00 00}
0452h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0455h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0458h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
045bh call 7ff7c7311f38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f7 ff ff}
0460h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 2a 03 00 00}
0465h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0468h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
046bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
046eh call 7ff7c7311f28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f7 ff ff}
0473h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 17 03 00 00}
0478h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
047bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
047eh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0481h call 7ff7c7311f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 f7 ff ff}
0486h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 04 03 00 00}
048bh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
048eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0491h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0494h call 7ff7c7311f08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f7 ff ff}
0499h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f1 02 00 00}
049eh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04a1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04a4h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04a7h call 7ff7c7311ef8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f7 ff ff}
04ach jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 de 02 00 00}
04b1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04b4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04b7h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04bah call 7ff7c7311ee8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f7 ff ff}
04bfh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 cb 02 00 00}
04c4h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04c7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04cah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04cdh call 7ff7c7311720h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e ef ff ff}
04d2h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b8 02 00 00}
04d7h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04dah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04ddh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04e0h call 7ff7c7311710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ef ff ff}
04e5h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a5 02 00 00}
04eah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
04edh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
04f0h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
04f3h call 7ff7c7311700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 ef ff ff}
04f8h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 92 02 00 00}
04fdh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0500h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0503h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0506h call 7ff7c73116f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ee ff ff}
050bh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7f 02 00 00}
0510h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0513h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0516h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0519h call 7ff7c73116e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ee ff ff}
051eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 6c 02 00 00}
0523h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0526h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0529h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
052ch call 7ff7c73116d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ee ff ff}
0531h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 59 02 00 00}
0536h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0539h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
053ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
053fh call 7ff7c73116c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ee ff ff}
0544h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 46 02 00 00}
0549h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
054ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
054fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0552h call 7ff7c73116b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ee ff ff}
0557h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 33 02 00 00}
055ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
055fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0562h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0565h call 7ff7c73116a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 ee ff ff}
056ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 20 02 00 00}
056fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0572h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0575h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0578h call 7ff7c7311690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ee ff ff}
057dh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 0d 02 00 00}
0582h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0585h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0588h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
058bh call 7ff7c7311680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 ee ff ff}
0590h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 fa 01 00 00}
0595h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0598h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
059bh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
059eh call 7ff7c7311670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ed ff ff}
05a3h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 e7 01 00 00}
05a8h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05abh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05aeh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05b1h call 7ff7c7311660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ed ff ff}
05b6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 d4 01 00 00}
05bbh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05beh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05c1h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05c4h call 7ff7c7311650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ed ff ff}
05c9h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 c1 01 00 00}
05ceh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05d1h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05d4h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05d7h call 7ff7c7311640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ed ff ff}
05dch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ae 01 00 00}
05e1h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05e4h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05e7h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05eah call 7ff7c7311630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ed ff ff}
05efh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 9b 01 00 00}
05f4h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
05f7h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
05fah mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
05fdh call 7ff7c7311620h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e ed ff ff}
0602h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 88 01 00 00}
0607h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
060ah mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
060dh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0610h call 7ff7c7311610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ed ff ff}
0615h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 75 01 00 00}
061ah mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
061dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0620h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0623h call 7ff7c7311600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 ec ff ff}
0628h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 62 01 00 00}
062dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0630h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0633h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0636h call 7ff7c73115f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 ec ff ff}
063bh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 4f 01 00 00}
0640h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0643h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0646h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0649h call 7ff7c73115e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 ec ff ff}
064eh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 3c 01 00 00}
0653h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0656h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0659h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
065ch call 7ff7c73115d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ec ff ff}
0661h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 29 01 00 00}
0666h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0669h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
066ch mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
066fh call 7ff7c73115c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ec ff ff}
0674h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 16 01 00 00}
0679h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
067ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
067fh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0682h call 7ff7c73115b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ec ff ff}
0687h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 03 01 00 00}
068ch mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
068fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0692h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0695h call 7ff7c73115a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ec ff ff}
069ah jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 f0 00 00 00}
069fh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06a2h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06a5h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06a8h call 7ff7c7311590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 eb ff ff}
06adh jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 dd 00 00 00}
06b2h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06b5h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06b8h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06bbh call 7ff7c7311580h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 eb ff ff}
06c0h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 ca 00 00 00}
06c5h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06c8h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06cbh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06ceh call 7ff7c7311570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad eb ff ff}
06d3h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 b7 00 00 00}
06d8h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06dbh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06deh mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06e1h call 7ff7c7311560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a eb ff ff}
06e6h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 a4 00 00 00}
06ebh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
06eeh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
06f1h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
06f4h call 7ff7c7311550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 eb ff ff}
06f9h jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 91 00 00 00}
06feh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0701h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0704h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
0707h call 7ff7c7311540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 eb ff ff}
070ch jmp near ptr 078fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 7e 00 00 00}
0711h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0714h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0717h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
071ah call 7ff7c7311530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 eb ff ff}
071fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 6e}
0721h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0724h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0727h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
072ah call 7ff7c7311520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 eb ff ff}
072fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 5e}
0731h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0734h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0737h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
073ah call 7ff7c7311510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ea ff ff}
073fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 4e}
0741h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0744h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0747h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
074ah call 7ff7c7311500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ea ff ff}
074fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 3e}
0751h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0754h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0757h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
075ah call 7ff7c73114f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ea ff ff}
075fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2e}
0761h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0764h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0767h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
076ah call 7ff7c73114e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 ea ff ff}
076fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1e}
0771h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0774h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0777h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
077ah call 7ff7c73114d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 ea ff ff}
077fh jmp short 078fh                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
0781h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0784h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0787h mov r8,rdi                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c7}
078ah call 7ff7c73114c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ea ff ff}
078fh nop                                     ; NOP || o32 90 || encoded[1]{90}
0790h add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0794h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0795h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0796h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0797h ret                                     ; RET || C3 || encoded[1]{c3}
0798h mov rcx,7ff7c6681ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1b 68 c6 f7 7f 00 00}
07a2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 42 b9 5e}
07a7h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
07aah movzx ecx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 cb}
07adh call 7ff7c73114b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ea ff ff}
07b2h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
07b5h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07b8h call 7ff7c6399aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 6f 08 ff}
07bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
07c0h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 8e b0 5e}
07c5h int 3                                   ; INT3 || CC || encoded[1]{cc}
07c6h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07c8h add es:[rax],al                         ; ADD r/m8, r8 || 00 /r || encoded[3]{26 00 00}
07cbh add [rdi],dh                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 37}
07cdh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07cfh add [rbx],cl                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 4b 00}
07d2h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07d4h pop rcx                                 ; POP r64 || 58+ro || encoded[1]{59}
07d5h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07d7h add [rax],dh                            ; ADD r/m8, r8 || 00 /r || encoded[3]{00 70 00}
07dah add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07dch jle short 07deh                         ; JLE rel8 || 7E cb || encoded[2]{7e 00}
07deh add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e0h xchg ebp,eax                            ; XCHG r32, EAX || o32 90+rd || encoded[1]{95}
07e1h add [rax],al                            ; ADD r/m8, r8 || 00 /r || encoded[2]{00 00}
07e3h (bad)                                   ; <invalid> || <invalid> || encoded[6]{00 ac 00 00 00 c3}
