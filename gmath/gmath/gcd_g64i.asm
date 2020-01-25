; long gcd<long>(long a, long b)
; gcd_g64i[7ff7c71a8280h, 7ff7c71a82b6h][54] = {0f 1f 44 00 00 48 8b c1 48 c1 f8 3f 48 03 c8 48 33 c1 48 8b ca 48 c1 f9 3f 4c 8d 04 0a 49 33 c8 48 85 c9 74 10 48 99 48 f7 f9 48 8b c1 48 8b ca 48 85 c9 75 f0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:58:318
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h sar rax,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f8 3f}
000ch add rcx,rax                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c8}
000fh xor rax,rcx                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 c1}
0012h mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0015h sar rcx,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 f9 3f}
0019h lea r8,[rdx+rcx]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 04 0a}
001dh xor rcx,r8                              ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{49 33 c8}
0020h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0023h je short 0035h                          ; JE rel8 || 74 cb || encoded[2]{74 10}
0025h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0027h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
002ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002dh mov rcx,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ca}
0030h test rcx,rcx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c9}
0033h jne short 0025h                         ; JNE rel8 || 75 cb || encoded[2]{75 f0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
