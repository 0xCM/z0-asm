; ConstQuad<ushort> split(ulong src, N4 n)
; split__0o_n416u[7ff7c6e6ef90h, 7ff7c6e6eff8h][104] = {50 0f 1f 40 00 0f b7 c1 48 8b d1 48 c1 ea 10 0f b7 d2 4c 8b c1 49 c1 e8 20 45 0f b7 c0 48 c1 e9 30 0f b7 c9 66 c7 04 24 00 00 66 c7 44 24 02 00 00 66 c7 44 24 04 00 00 66 c7 44 24 06 00 00 0f b7 c0 66 89 04 24 0f b7 c2 66 89 44 24 02 41 0f b7 c0 66 89 44 24 04 0f b7 c1 66 89 44 24 06 48 8b 04 24 48 83 c4 08 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:593
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh shr rdx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 10}
000fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0012h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0015h shr r8,20h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 20}
0019h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
001dh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0021h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0024h mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
002ah mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
0031h mov word ptr [rsp+4],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 04 00 00}
0038h mov word ptr [rsp+6],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 06 00 00}
003fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0042h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0046h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0049h mov [rsp+2],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 02}
004eh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0052h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
0057h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
005ah mov [rsp+6],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 06}
005fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0063h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
