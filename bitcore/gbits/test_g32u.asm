; bit test<uint>(uint src, byte pos)
; test_g32u[7ff7c6e8bca0h, 7ff7c6e8bcb0h][16] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 83 e0 01 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:250
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
