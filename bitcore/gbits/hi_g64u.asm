; ulong hi<ulong>(ulong src)
; hi_g64u[7ff7c6e98eb0h, 7ff7c6e98ec9h][25] = {50 0f 1f 40 00 48 c1 e9 20 8b c1 89 44 24 04 48 8b 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:887
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
0009h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000bh mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
000fh mov rax,[rsp+4]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 04}
0014h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
