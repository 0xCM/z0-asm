; ulong rotl<ulong>(ulong a, byte count)
; rotl_g64u[7ff7c6ca34c0h, 7ff7c6ca34cfh][15] = {0f 1f 44 00 00 48 8b c1 0f b6 ca 48 d3 c0 c3}
; Capture completion code, RET_ZED_SBB
; 2020-01-24 02:54:49:673
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000bh rol rax,cl                              ; ROL r/m64, CL || REX.W D3 /0 || encoded[3]{48 d3 c0}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
