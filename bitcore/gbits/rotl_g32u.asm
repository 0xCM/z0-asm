; uint rotl<uint>(uint src, int shift, int width)
; rotl_g32u[7ff7c6e725a0h, 7ff7c6e725bbh][27] = {0f 1f 44 00 00 8b c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 e8 41 0b c1 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:33:554
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
