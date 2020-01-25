; byte log2(byte src)
; log2_8u[7ff7c71899c0h, 7ff7c7189a6bh][171] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 0f b6 c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 48 8b 04 24 0f b6 c0 48 83 c4 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:436
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
