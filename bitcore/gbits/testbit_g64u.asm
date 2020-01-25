; bit testbit<ulong>(ulong src, int pos)
; testbit_g64u[7ff7c6e780e0h, 7ff7c6e780f1h][17] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 e8 83 e0 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:33:772
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
