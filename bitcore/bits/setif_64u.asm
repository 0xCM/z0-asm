; ulong setif(ulong src, int srcpos, ulong dst, int dstpos)
; setif_64u[7ff7c6e6dde0h, 7ff7c6e6de09h][41] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 e8 8b c8 83 e1 01 85 c9 74 0f b8 01 00 00 00 41 8b c9 48 d3 e0 49 0b c0 c3 49 8b c0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:32:585
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
000dh mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000fh and ecx,1                               ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 01}
0012h test ecx,ecx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c9}
0014h je short 0025h                          ; JE rel8 || 74 cb || encoded[2]{74 0f}
0016h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
001bh mov ecx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c9}
001eh shl rax,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e0}
0021h or rax,r8                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c0}
0024h ret                                     ; RET || C3 || encoded[1]{c3}
0025h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0028h ret                                     ; RET || C3 || encoded[1]{c3}
