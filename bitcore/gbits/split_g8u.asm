; void split<byte>(byte src, int index, out byte x0, out byte x1)
; split_g8u[7ff7c6e8b1f0h, 7ff7c6e8b221h][49] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b d0 41 d3 fa 45 0f b6 d2 41 bb 01 00 00 00 8b ca 49 d3 e3 41 0f b6 d3 ff ca 23 c2 0f b6 c0 41 88 00 45 88 11 c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:53:207
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0014h mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001fh movzx edx,r11b                          ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d3}
0023h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
002ah mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
002dh mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
