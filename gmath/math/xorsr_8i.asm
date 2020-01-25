; sbyte xorsr(sbyte a, byte offset)
; xorsr_8i[7ff7c7186e90h, 7ff7c7186ea7h][23] = {0f 1f 44 00 00 48 0f be c1 0f b6 ca 8b d0 d3 fa 33 c2 48 0f be c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 01:44:37:149
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch mov edx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d0}
000eh sar edx,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 fa}
0010h xor eax,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c2}
0012h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
