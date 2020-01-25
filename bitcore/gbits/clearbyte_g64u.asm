; ulong clearbyte<ulong>(ulong src, byte index)
; clearbyte_g64u[7ff7c6e929a0h, 7ff7c6e929bah][26] = {0f 1f 44 00 00 48 8b c1 0f b6 ca ba ff 00 00 00 48 d3 e2 48 f7 d2 48 23 c2 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:536
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
0010h shl rdx,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e2}
0013h not rdx                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d2}
0016h and rax,rdx                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
