; ulong maskpart(uint src, int offset, ulong mask)
; maskpart_32u[7ff7c6bee280h, 7ff7c6bee294h][20] = {0f 1f 44 00 00 8b c1 8b ca d3 e8 0f b6 c0 c4 c2 fb f5 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 18:45:02:146
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
000bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
000eh pdep rax,rax,r8                         ; PDEP r64a, r64b, r/m64 || VEX.LZ.F2.0F38.W1 F5 /r || encoded[5]{c4 c2 fb f5 c0}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
