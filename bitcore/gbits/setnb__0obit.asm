; byte setnb<byte>(byte src, byte pos, bit value)
; setnb__0obit[7ff7c6e76100h, 7ff7c6e7613ch][60] = {0f 1f 44 00 00 8b c1 0f b6 d2 83 e2 1f 41 b9 01 00 00 00 8b ca 41 d3 e1 41 0f b6 c9 f7 d1 ff c1 44 0f b6 c9 8b ca 41 d3 e0 41 0f b6 d0 0f b6 c0 41 23 c1 0f b6 c0 23 c2 0f b6 c0 c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:33:668
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000dh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0018h movzx ecx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c9}
001ch not ecx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d1}
001eh inc ecx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c1}
0020h movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
0024h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0026h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0029h movzx edx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d0}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h and eax,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c1}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0038h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
