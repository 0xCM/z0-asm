; bit divides<sbyte>(sbyte a, sbyte b)
; divides_g8i[7ff7c7194550h, 7ff7c719456fh][31] = {0f 1f 44 00 00 48 0f be c1 48 0f be d2 48 0f be c8 8b c2 99 f7 f9 85 d2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:39:223
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c8}
0011h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0013h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0014h idiv ecx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 f9}
0016h test edx,edx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 d2}
0018h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
