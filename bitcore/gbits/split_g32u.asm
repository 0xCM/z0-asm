; void split<uint>(uint src, int index, out uint x0, out uint x1)
; split_g32u[7ff7c6e8b290h, 7ff7c6e8b2b8h][40] = {0f 1f 44 00 00 8b c1 8b ca 44 8b d0 41 d3 ea 41 bb 01 00 00 00 8b ca 49 d3 e3 41 8b d3 ff ca 23 c2 41 89 00 45 89 11 c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:53:210
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000ch shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
000fh mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001ah mov edx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d3}
001dh dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
001fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0021h mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0024h mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
