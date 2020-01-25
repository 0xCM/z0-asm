; ulong log2(ulong src)
; log2_64u[7ff7c7189780h, 7ff7c7189825h][165] = {50 33 c0 48 89 04 24 33 c0 48 89 04 24 48 b8 00 00 00 00 01 00 00 00 48 3b c8 72 10 48 c1 e9 20 48 8b 04 24 48 83 c8 20 48 89 04 24 48 81 f9 00 00 01 00 72 10 48 c1 e9 10 48 8b 04 24 48 83 c8 10 48 89 04 24 48 81 f9 00 01 00 00 72 10 48 c1 e9 08 48 8b 04 24 48 83 c8 08 48 89 04 24 48 83 f9 10 72 10 48 c1 e9 04 48 8b 04 24 48 83 c8 04 48 89 04 24 48 83 f9 04 72 10 48 c1 e9 02 48 8b 04 24 48 83 c8 02 48 89 04 24 48 83 f9 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:432
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
