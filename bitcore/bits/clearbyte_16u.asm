; ushort clearbyte(ushort src, byte index)
; clearbyte_16u[7ff7c6e6fdc0h, 7ff7c6e6fddch][28] = {0f 1f 44 00 00 8b c1 0f b6 ca ba ff 00 00 00 d3 e2 f7 d2 0f b7 c0 23 c2 0f b7 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:32:694
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba ff 00 00 00}
000fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0011h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0013h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0016h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0018h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
