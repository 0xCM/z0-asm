; ushort rotr(ushort src, int shift, int width)
; rotr_16u[7ff7c6e6db50h, 7ff7c6e6db6fh][31] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c8 41 d3 f9 44 2b c2 41 8b c8 d3 e0 41 0b c1 0f b7 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:32:567
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh sar r9d,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 f9}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shl eax,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e0}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
