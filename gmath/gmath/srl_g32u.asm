; uint srl<uint>(uint a, byte count)
; srl_g32u[7ff7c718c510h, 7ff7c718c51dh][13] = {0f 1f 44 00 00 8b c1 0f b6 ca d3 e8 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:38:237
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000ch ret                                     ; RET || C3 || encoded[1]{c3}
