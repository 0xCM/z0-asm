; void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
; split_64u[7ff7c6e6f260h, 7ff7c6e6f28bh][43] = {0f 1f 44 00 00 66 89 0a 48 8b c1 48 c1 e8 10 66 41 89 00 48 8b c1 48 c1 e8 20 66 41 89 01 48 c1 e9 30 48 8b 44 24 28 66 89 08 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:616
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
000fh mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
001ah mov [r9],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 01}
001eh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0022h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
0027h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
