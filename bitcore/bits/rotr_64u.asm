; ulong rotr(ulong src, int shift, int width)
; rotr_64u[7ff7c6e6dbb0h, 7ff7c6e6dbcdh][29] = {0f 1f 44 00 00 48 8b c1 8b ca 4c 8b c8 49 d3 e9 44 2b c2 41 8b c8 48 d3 e0 49 0b c1 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:570
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shr r9,cl                               ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 e9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
