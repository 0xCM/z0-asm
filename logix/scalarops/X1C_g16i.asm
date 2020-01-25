; Int16 f1c<Int16>(Int16 a, Int16 b, Int16 c)
; X1C_g16i[7ff7c6b8f380h, 7ff7c6b8f3b3h][51] = {0f 1f 44 00 00 48 0f bf c1 4d 0f bf c0 41 23 c0 48 0f bf c0 f7 d0 48 0f bf c0 48 0f bf c9 48 0f bf d2 33 d1 48 0f bf d2 48 0f bf c0 23 c2 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:48:199
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
000dh and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h not eax                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d0}
0016h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
001ah movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
001eh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0022h xor edx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d1}
0024h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0028h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
002eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
