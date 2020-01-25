; uint setif(uint src, int srcpos, uint dst, int dstpos)
; setif_32u[7ff7c6e6dda0h, 7ff7c6e6ddc4h][36] = {0f 1f 44 00 00 8b c1 8b ca d3 e8 83 e0 01 85 c0 74 0e b8 01 00 00 00 41 8b c9 d3 e0 41 0b c0 c3 41 8b c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:584
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh and eax,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e0 01}
000eh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0010h je short 0020h                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
0012h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0017h mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001ah shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
001ch or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
0020h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
