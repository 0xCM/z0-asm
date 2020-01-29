; int blockalign_64x8u_var(int cellcount)
; blockalign_64x8u_var_32i[40] = {0f 1f 44 00 00 8b c1 c1 f8 1f 83 e0 07 03 c1 c1 f8 03 8b d1 c1 fa 1f 83 e2 07 03 d1 83 e2 f8 2b ca 74 04 ff c0 eb 00 c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h sar eax,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 1f}
000ah and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000dh add eax,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 c1}
000fh sar eax,3                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 03}
0012h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
0014h sar edx,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fa 1f}
0017h and edx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 07}
001ah add edx,ecx                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 d1}
001ch and edx,0fffffff8h                      ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 f8}
001fh sub ecx,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b ca}
0021h je short 0027h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
0023h inc eax                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c0}
0025h jmp short 0027h                         ; JMP rel8 || EB cb || encoded[2]{eb 00}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
; int blockalign_64x8u_16()
; blockalign_64x8u_16[11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
; int blockalign_64x8u_17()
; blockalign_64x8u_17[11] = {0f 1f 44 00 00 b8 03 00 00 00 c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
; char digit_1()
; digit_1[46] = {0f 1f 44 00 00 48 b8 c8 ee 00 90 c2 01 00 00 48 8b 00 48 85 c0 75 04 33 d2 eb 0e 8b 10 48 8b d0 39 12 48 83 c2 0c 8b 40 08 0f b7 42 0a c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1c29000eec8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ee 00 90 c2 01 00 00}
000fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0012h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0015h jne short 001bh                         ; JNE rel8 || 75 cb || encoded[2]{75 04}
0017h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0019h jmp short 0029h                         ; JMP rel8 || EB cb || encoded[2]{eb 0e}
001bh mov edx,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 10}
001dh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0020h cmp [rdx],edx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 12}
0022h add rdx,0ch                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c2 0c}
0026h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0029h movzx eax,word ptr [rdx+0ah]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 42 0a}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
; char digit_2()
; digit_2[39] = {48 83 ec 28 90 48 b8 c8 ee 00 90 c2 01 00 00 48 8b 00 83 78 08 05 76 09 0f b7 40 16 48 83 c4 28 c3 e8 2a 77 4d 5f cc}
; TermCode = MSDIAG
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov rax,1c29000eec8h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 ee 00 90 c2 01 00 00}
000fh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0012h cmp dword ptr [rax+8],5                 ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[4]{83 78 08 05}
0016h jbe short 0021h                         ; JBE rel8 || 76 cb || encoded[2]{76 09}
0018h movzx eax,word ptr [rax+16h]            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 40 16}
001ch add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
0021h call 7ff825fcfdd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 77 4d 5f}
0026h int 3                                   ; INT3 || CC || encoded[1]{cc}
; char digit(int i)
; digit_32i[23] = {0f 1f 44 00 00 48 63 c1 48 ba 09 7e 17 ee c2 01 00 00 0f b6 04 10 c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h mov rdx,1c2ee177e09h                    ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 09 7e 17 ee c2 01 00 00}
0012h movzx eax,byte ptr [rax+rdx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 04 10}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
; char bdigit(bit b)
; bdigit_bit[12] = {0f 1f 44 00 00 83 c1 30 0f b7 c1 c3}
; TermCode = MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h add ecx,30h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 30}
0008h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
