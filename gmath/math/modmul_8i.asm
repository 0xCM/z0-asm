; sbyte modmul(sbyte a, sbyte b, sbyte m)
; modmul_8i[7ff7c7189cc0h, 7ff7c7189ce8h][40] = {0f 1f 44 00 00 48 0f be c1 48 63 c0 48 0f be d2 48 63 d2 48 0f af c2 49 0f be d0 48 63 ca 48 99 48 f7 f9 48 0f be c2 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:37:446
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0010h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0013h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0017h movsx rdx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be d0}
001bh movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
