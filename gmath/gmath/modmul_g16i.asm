; Int16 modmul<Int16>(Int16 a, Int16 b, Int16 m)
; modmul_g16i[7ff7c7195e90h, 7ff7c7195ec4h][52] = {50 0f 1f 40 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 48 63 c0 48 63 d2 48 0f af c2 48 63 c9 48 99 48 f7 f9 8b c2 89 44 24 04 48 0f bf 44 24 04 48 83 c4 08 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:39:322
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0014h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0017h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
001bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0029h movsx rax,word ptr [rsp+4]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[6]{48 0f bf 44 24 04}
002fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
