; Int16 f5b<Int16>(Int16 a, Int16 b, Int16 c)
; X5B_g16i[7ff7c6b8d080h, 7ff7c6b8d0bbh][59] = {0f 1f 44 00 00 48 0f bf c1 4d 0f bf c0 41 33 c0 48 0f bf c0 48 0f bf c9 48 0f bf d2 0b d1 48 0f bf d2 48 0f bf d2 81 f2 ff 7f 00 00 48 0f bf d2 48 0f bf c0 0b c2 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:47:558
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
000dh xor eax,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{41 33 c0}
0010h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0014h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
0018h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
001ch or edx,ecx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b d1}
001eh movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0022h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0026h xor edx,7fffh                           ; XOR r/m32, imm32 || o32 81 /6 id || encoded[6]{81 f2 ff 7f 00 00}
002ch movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
0030h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0034h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0036h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
