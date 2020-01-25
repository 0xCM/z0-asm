; Int16 srl(Int16 src, byte offset)
; srl_16i[7ff7c71997a0h, 7ff7c71997b3h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 e8 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:56:291
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
