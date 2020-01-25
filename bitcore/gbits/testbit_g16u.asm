; bit testbit<ushort>(ushort src, int pos)
; testbit_g16u[7ff7c6e78050h, 7ff7c6e78060h][16] = {0f 1f 44 00 00 0f b7 c1 8b ca d3 e8 83 e0 01 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:33:767
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
