------------------------------------------------------------------------------------------------------------------------
; ulong log2(ulong src)
; log2_64u[165] = {50 33 c0 48 89 04 24 33 c0 48 89 04 24 48 b8 00 00 00 00 01 00 00 00 48 3b c8 72 10 48 c1 e9 20 48 8b 04 24 48 83 c8 20 48 89 04 24 48 81 f9 00 00 01 00 72 10 48 c1 e9 10 48 8b 04 24 48 83 c8 10 48 89 04 24 48 81 f9 00 01 00 00 72 10 48 c1 e9 08 48 8b 04 24 48 83 c8 08 48 89 04 24 48 83 f9 10 72 10 48 c1 e9 04 48 8b 04 24 48 83 c8 04 48 89 04 24 48 83 f9 04 72 10 48 c1 e9 02 48 8b 04 24 48 83 c8 02 48 89 04 24 48 83 f9 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0003h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000dh mov rax,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 00 00 01 00 00 00}
0017h cmp rcx,rax                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c8}
001ah jb short 002ch                          ; JB rel8 || 72 cb || encoded[2]{72 10}
001ch shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
0020h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0024h or rax,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 20}
0028h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
002ch cmp rcx,10000h                          ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 f9 00 00 01 00}
0033h jb short 0045h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0035h shr rcx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 10}
0039h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
003dh or rax,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 10}
0041h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0045h cmp rcx,100h                            ; CMP r/m64, imm32 || REX.W 81 /7 id || encoded[7]{48 81 f9 00 01 00 00}
004ch jb short 005eh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
004eh shr rcx,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 08}
0052h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0056h or rax,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 08}
005ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
005eh cmp rcx,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 10}
0062h jb short 0074h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0064h shr rcx,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 04}
0068h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
006ch or rax,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 04}
0070h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0074h cmp rcx,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 04}
0078h jb short 008ah                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007ah shr rcx,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 02}
007eh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0082h or rax,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 02}
0086h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
008ah cmp rcx,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f9 02}
008eh jb short 009ch                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0090h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0094h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
0098h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009ch mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a0h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a4h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong log2(int src)
; log2_32i[168] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 48 63 c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a7h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint log2(uint src)
; log2_32u[166] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 8b c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 8b 04 24 48 83 c4 08 c3}
; TermCode = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0011h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001bh cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001eh jb short 0030h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0020h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0024h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0028h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002ch mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0030h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0036h jb short 0048h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0038h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003ch mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0040h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0044h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0048h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004eh jb short 0060h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0050h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0054h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0058h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005ch mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0060h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0064h jb short 0076h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0066h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006ah mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006eh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0072h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0076h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007ah jb short 008ch                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007ch shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0080h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0084h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0088h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008ch cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0090h jb short 009eh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0092h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0096h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009ah mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009eh mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
00a1h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00a5h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte log2(byte src)
; log2_8u[171] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 0f b6 c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 0f b6 c0 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
00a6h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort log2(ushort src)
; log2_16u[171] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 0f b7 c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 0f b7 c0 48 83 c4 08 c3}
; TermCode = RET_ZED_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
000fh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0012h mov rdx,100000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 00 00 00 00 01 00 00 00}
001ch cmp rax,rdx                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b c2}
001fh jb short 0031h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0021h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0025h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0029h or rdx,20h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 20}
002dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0031h cmp rax,10000h                          ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 00 01 00}
0037h jb short 0049h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0039h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
003dh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0041h or rdx,10h                              ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 10}
0045h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0049h cmp rax,100h                            ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d 00 01 00 00}
004fh jb short 0061h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0051h shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
0055h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0059h or rdx,8                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 08}
005dh mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0061h cmp rax,10h                             ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 10}
0065h jb short 0077h                          ; JB rel8 || 72 cb || encoded[2]{72 10}
0067h shr rax,4                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 04}
006bh mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
006fh or rdx,4                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 04}
0073h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
0077h cmp rax,4                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 04}
007bh jb short 008dh                          ; JB rel8 || 72 cb || encoded[2]{72 10}
007dh shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0081h mov rdx,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 14 24}
0085h or rdx,2                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 ca 02}
0089h mov [rsp],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 14 24}
008dh cmp rax,2                               ; CMP r/m64, imm8 || REX.W 83 /7 ib || encoded[4]{48 83 f8 02}
0091h jb short 009fh                          ; JB rel8 || 72 cb || encoded[2]{72 0c}
0093h mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0097h or rax,1                                ; OR r/m64, imm8 || REX.W 83 /1 ib || encoded[4]{48 83 c8 01}
009bh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
009fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
00a3h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
00a6h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00aah ret                                     ; RET || C3 || encoded[1]{c3}
