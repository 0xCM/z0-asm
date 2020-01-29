------------------------------------------------------------------------------------------------------------------------
; void split<byte>(byte src, int index, out byte x0, out byte x1)
; split_g8u_32i_8u(out)_8u(out)[49] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b d0 41 d3 fa 45 0f b6 d2 41 bb 01 00 00 00 8b ca 49 d3 e3 41 0f b6 d3 ff ca 23 c2 0f b6 c0 41 88 00 45 88 11 c3}
; TermCode = RET_ZEDx3
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
------------------------------------------------------------------------------------------------------------------------
; void split<ushort>(ushort src, int index, out ushort x0, out ushort x1)
; split_g16u_32i_16u(out)_16u(out)[51] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b d0 41 d3 fa 45 0f b7 d2 41 bb 01 00 00 00 8b ca 49 d3 e3 41 0f b7 d3 ff ca 23 c2 0f b7 c0 66 41 89 00 66 45 89 11 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0014h mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001fh movzx edx,r11w                          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d3}
0023h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
002ah mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
002eh mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split<uint>(uint src, int index, out uint x0, out uint x1)
; split_g32u_32i_32u(out)_32u(out)[40] = {0f 1f 44 00 00 8b c1 8b ca 44 8b d0 41 d3 ea 41 bb 01 00 00 00 8b ca 49 d3 e3 41 8b d3 ff ca 23 c2 41 89 00 45 89 11 c3}
; TermCode = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000ch shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
000fh mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0015h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0017h shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001ah mov edx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d3}
001dh dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
001fh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0021h mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0024h mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split<ulong>(ulong src, int index, out ulong x0, out ulong x1)
; split_g64u_32i_64u(out)_64u(out)[43] = {0f 1f 44 00 00 48 8b c1 83 e2 3f 8b ca 4c 8b d0 49 d3 ea 41 bb 01 00 00 00 8b ca 49 d3 e3 49 ff cb 49 23 c3 49 89 00 4d 89 11 c3}
; TermCode = RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0010h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0013h mov r11d,1                              ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 bb 01 00 00 00}
0019h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001bh shl r11,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e3}
001eh dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0021h and rax,r11                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c3}
0024h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
0027h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
