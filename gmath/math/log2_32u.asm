; uint log2(uint src)
; log2_32u[7ff7c7189900h, 7ff7c71899a6h][166] = {50 0f 1f 40 00 33 c0 48 89 04 24 48 89 04 24 8b c1 48 ba 00 00 00 00 01 00 00 00 48 3b c2 72 10 48 c1 e8 20 48 8b 14 24 48 83 ca 20 48 89 14 24 48 3d 00 00 01 00 72 10 48 c1 e8 10 48 8b 14 24 48 83 ca 10 48 89 14 24 48 3d 00 01 00 00 72 10 48 c1 e8 08 48 8b 14 24 48 83 ca 08 48 89 14 24 48 83 f8 10 72 10 48 c1 e8 04 48 8b 14 24 48 83 ca 04 48 89 14 24 48 83 f8 04 72 10 48 c1 e8 02 48 8b 14 24 48 83 ca 02 48 89 14 24 48 83 f8 02 72 0c 48 8b 04 24 48 83 c8 01 48 89 04 24 8b 04 24 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:37:434
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
