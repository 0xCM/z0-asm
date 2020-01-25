; int nlz<ushort>(ushort src)
; nlz_g16u[7ff7c6e99860h, 7ff7c6e99876h][22] = {0f 1f 44 00 00 89 4c 24 08 0f b7 44 24 08 f3 0f bd c0 83 c0 f0 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:937
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rsp+8],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 08}
0009h movzx eax,word ptr [rsp+8]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 08}
000eh lzcnt eax,eax                           ; LZCNT r32, r/m32 || o32 F3 0F BD /r || encoded[4]{f3 0f bd c0}
0012h add eax,0fffffff0h                      ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c0 f0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
