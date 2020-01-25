; Int16 sar<Int16>(Int16 src, byte offset)
; sar_g16i[7ff7c71a5750h, 7ff7c71a5763h][19] = {0f 1f 44 00 00 48 0f bf c1 0f b6 ca d3 f8 48 0f bf c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-25 02:10:58:103
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ch sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
000eh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
