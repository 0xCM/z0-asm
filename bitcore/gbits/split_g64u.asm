; void split<ulong>(ulong src, int index, out ulong x0, out ulong x1)
; split_g64u[7ff7c6e8b2d0h, 7ff7c6e8b2fbh][43] = {0f 1f 44 00 00 48 8b c1 83 e2 3f 8b ca 4c 8b d0 49 d3 ea 41 bb 01 00 00 00 8b ca 49 d3 e3 49 ff cb 49 23 c3 49 89 00 4d 89 11 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:53:211
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0010h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0013h mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0019h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001bh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001eh dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0021h and rax,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c3}
0024h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0027h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
