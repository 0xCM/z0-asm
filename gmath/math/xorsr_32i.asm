; int xorsr(int a, byte offset)
; xorsr_32i[7ff7c7199d40h, 7ff7c7199d51h][17] = {0f 1f 44 00 00 8b c1 0f b6 ca 8b d0 d3 fa 33 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:56:354
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000ch sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
000eh xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
