; ulong rev<ulong>(ulong src)
; rev_g64u[7ff7c6e86e00h, 7ff7c6e86e24h][36] = {0f 1f 44 00 00 48 8b c1 48 c1 e8 20 8b d0 81 e2 aa aa aa aa d1 ea 25 55 55 55 55 d1 e0 0b c2 8b d0 81 e2 cc}
; Capture completion code, INTRx2
; 2020-01-25 02:10:53:071
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh and edx,0aaaaaaaah                      ; AND r/m32, imm32 || o32 81 /4 id || encoded[6]{81 e2 aa aa aa aa}
0014h shr edx,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ea}
0016h and eax,55555555h                       ; AND EAX, imm32 || o32 25 id || encoded[5]{25 55 55 55 55}
001bh shl eax,1                               ; SHL r/m32, 1 || o32 D1 /4 || encoded[2]{d1 e0}
001dh or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
001fh mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
0021h (bad)                                   ; <invalid> || <invalid> || encoded[3]{81 e2 cc}
