; ulong disable<ulong>(ulong src, int pos)
; disable_g64u[7ff7c6e83be0h, 7ff7c6e83bfdh][29] = {0f 1f 44 00 00 48 8b c1 41 b8 01 00 00 00 8b ca 49 d3 e0 49 8b d0 48 f7 d2 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:181
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0010h shl r8,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e0}
0013h mov rdx,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b d0}
0016h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0019h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
