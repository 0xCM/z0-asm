; void part6x3(uint src, ref byte dst)
; part6x3_32u[7ff7c6e68760h, 7ff7c6e68776h][22] = {0f 1f 44 00 00 8b c1 83 e0 07 88 02 c1 e9 03 83 e1 07 88 4a 01 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:363
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h and eax,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 07}
000ah mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
000ch shr ecx,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 03}
000fh and ecx,7                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 07}
0012h mov [rdx+1],cl                          ; MOV r/m8, r8 || 88 /r || encoded[3]{88 4a 01}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
