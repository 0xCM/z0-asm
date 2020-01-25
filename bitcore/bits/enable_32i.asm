; int enable(int src, int pos)
; enable_32i[7ff7c6e70b90h, 7ff7c6e70ba6h][22] = {0f 1f 44 00 00 8b c1 41 b8 01 00 00 00 8b ca 41 d3 e0 41 0b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:844
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov r8d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b8 01 00 00 00}
000dh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000fh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0012h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
