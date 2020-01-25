; sbyte f34<sbyte>(sbyte a, sbyte b, sbyte c)
; X34_g8i[7ff7c6b91d70h, 7ff7c6b91da3h][51] = {0f 1f 44 00 00 48 0f be c2 4d 0f be c0 41 23 c0 48 0f be c0 f7 d0 48 0f be c0 48 0f be c9 48 0f be d2 33 d1 48 0f be d2 48 0f be c0 23 c2 48 0f be c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:619
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
0009h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
000dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0010h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0014h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0016h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
001ah movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
001eh movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0022h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0024h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
0028h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002eh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
