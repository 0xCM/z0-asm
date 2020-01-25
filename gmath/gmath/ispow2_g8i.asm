; bit ispow2<sbyte>(sbyte src)
; ispow2_g8i[7ff7c7195650h, 7ff7c719566ah][26] = {0f 1f 44 00 00 48 0f be c1 48 63 c0 48 8d 50 ff 48 85 c2 0f 94 c0 0f b6 c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:287
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
000ch lea rdx,[rax-1]                         ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 50 ff}
0010h test rax,rdx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c2}
0013h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0016h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
