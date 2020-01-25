; int set<int>(int src, int pos, bit value)
; set__0obit[7ff7c6e73310h, 7ff7c6e73336h][38] = {0f 1f 44 00 00 8b c1 8b ca 45 85 c0 74 0a ba 01 00 00 00 d3 e2 0b c2 c3 ba 01 00 00 00 d3 e2 f7 d2 23 d0 8b c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:33:610
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ch je short 0018h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
000eh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0013h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0015h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
0018h mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
001dh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
001fh not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0021h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
