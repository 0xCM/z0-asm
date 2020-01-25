; bit testbit<uint>(uint src, int pos)
; testbit_g32u[7ff7c6e780a0h, 7ff7c6e780afh][15] = {0f 1f 44 00 00 8b c1 8b ca d3 e8 83 e0 01 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:33:769
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
