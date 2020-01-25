; 2020-01-24 20:46:48:067
; void split_g64(ulong src, int index, out ulong x0, out ulong x1)
; split_g64_64u[7ff7c6a9a350h, 7ff7c6a9a37bh][43] = {0f 1f 44 00 00 48 8b c1 83 e2 3f 8b ca 4c 8b d0 49 d3 ea 41 bb 01 00 00 00 8b ca 49 d3 e3 49 ff cb 49 23 c3 49 89 00 4d 89 11 c3}
; Capture completion code, MSDIAG
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
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void split_64(ulong src, int index, out ulong x0, out ulong x1)
; split_64_64u[7ff7c6a9a390h, 7ff7c6a9a3bbh][43] = {0f 1f 44 00 00 48 8b c1 83 e2 3f 8b ca 4c 8b d0 49 d3 ea 4d 89 11 41 b9 01 00 00 00 8b ca 49 d3 e1 49 ff c9 49 23 c1 49 89 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h and edx,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 3f}
000bh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000dh mov r10,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b d0}
0010h shr r10,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{49 d3 ea}
0013h mov [r9],r10                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 11}
0016h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
001ch mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001eh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0021h dec r9                                  ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff c9}
0024h and rax,r9                              ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{49 23 c1}
0027h mov [r8],rax                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 00}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; void split_exact(ulong src, out uint x0, out uint x1)
; split_exact_64u[7ff7c6a9a3d0h, 7ff7c6a9a3e1h][17] = {0f 1f 44 00 00 89 0a 48 c1 e9 20 8b c1 41 89 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0a}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_20()
; pow2_20__0o[7ff7c6a9a800h, 7ff7c6a9a80bh][11] = {0f 1f 44 00 00 b8 00 00 10 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,100000h                         ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 00 10 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_20()
; pow2m1_20__0o[7ff7c6a9a820h, 7ff7c6a9a82bh][11] = {0f 1f 44 00 00 b8 ff ff 0f 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0fffffh                         ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff ff 0f 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_33()
; pow2_33__0o[7ff7c6a9a840h, 7ff7c6a9a850h][16] = {0f 1f 44 00 00 48 b8 00 00 00 00 02 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,200000000h                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 00 00 02 00 00 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_33()
; pow2m1_33__0o[7ff7c6a9a860h, 7ff7c6a9a870h][16] = {0f 1f 44 00 00 48 b8 ff ff ff ff 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,1ffffffffh                      ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 ff ff ff ff 01 00 00 00}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_1()
; pow2_1__0o[7ff7c6a9a880h, 7ff7c6a9a88bh][11] = {0f 1f 44 00 00 b8 02 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_1()
; pow2m1_1__0o[7ff7c6a9a8a0h, 7ff7c6a9a8abh][11] = {0f 1f 44 00 00 b8 01 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_2()
; pow2_2__0o[7ff7c6a9a8c0h, 7ff7c6a9a8cbh][11] = {0f 1f 44 00 00 b8 04 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_2()
; pow2m1_2__0o[7ff7c6a9a8e0h, 7ff7c6a9a8ebh][11] = {0f 1f 44 00 00 b8 03 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_3()
; pow2_3__0o[7ff7c6a9a900h, 7ff7c6a9a90bh][11] = {0f 1f 44 00 00 b8 08 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_3()
; pow2m1_3__0o[7ff7c6a9a920h, 7ff7c6a9a92bh][11] = {0f 1f 44 00 00 b8 07 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_4()
; pow2_4__0o[7ff7c6a9a940h, 7ff7c6a9a94bh][11] = {0f 1f 44 00 00 b8 10 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_4()
; pow2m1_4__0o[7ff7c6a9a960h, 7ff7c6a9a96bh][11] = {0f 1f 44 00 00 b8 0f 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 0f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_5()
; pow2_5__0o[7ff7c6a9a980h, 7ff7c6a9a98bh][11] = {0f 1f 44 00 00 b8 20 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_5()
; pow2m1_5__0o[7ff7c6a9a9a0h, 7ff7c6a9a9abh][11] = {0f 1f 44 00 00 b8 1f 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,1fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 1f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_6()
; pow2_6__0o[7ff7c6a9a9c0h, 7ff7c6a9a9cbh][11] = {0f 1f 44 00 00 b8 40 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_6()
; pow2m1_6__0o[7ff7c6a9a9e0h, 7ff7c6a9a9ebh][11] = {0f 1f 44 00 00 b8 3f 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,3fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_7()
; pow2_7__0o[7ff7c6a9aa00h, 7ff7c6a9aa0bh][11] = {0f 1f 44 00 00 b8 80 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,80h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 80 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_7()
; pow2m1_7__0o[7ff7c6a9aa20h, 7ff7c6a9aa2bh][11] = {0f 1f 44 00 00 b8 7f 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,7fh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 7f 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2_8()
; pow2_8__0o[7ff7c6a9aa40h, 7ff7c6a9aa4bh][11] = {0f 1f 44 00 00 b8 00 01 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,100h                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 00 01 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; ulong pow2m1_8()
; pow2m1_8__0o[7ff7c6a9aa60h, 7ff7c6a9aa6bh][11] = {0f 1f 44 00 00 b8 ff 00 00 00 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 ff 00 00 00}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint set_bit(uint src, byte pos, bit state)
; set_bit__0o_0obit[7ff7c6a9aa80h, 7ff7c6a9aaabh][43] = {0f 1f 44 00 00 8b c1 45 85 c0 74 0e 0f b6 ca ba 01 00 00 00 d3 e2 0b c2 eb 10 0f b6 ca ba 01 00 00 00 d3 e2 f7 d2 23 d0 8b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
000ah je short 001ah                          ; JE rel8 || 74 cb || encoded[2]{74 0e}
000ch movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000fh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0014h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0016h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0018h jmp short 002ah                         ; JMP rel8 || EB cb || encoded[2]{eb 10}
001ah movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
001dh mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
0022h shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0024h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0026h and edx,eax                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 d0}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint set_bit_nb(uint src, byte pos, bit state)
; set_bit_nb__0o_0obit[7ff7c6a9aac0h, 7ff7c6a9aaeah][42] = {0f 1f 44 00 00 8b c1 0f b6 d2 83 e2 1f 41 b9 01 00 00 00 8b ca 41 d3 e1 41 f7 d1 41 ff c1 8b ca 41 d3 e0 41 23 c1 41 23 c0 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
000dh mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0013h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0015h shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0018h not r9d                                 ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d1}
001bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
001eh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0020h shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0023h and eax,r9d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c1}
0026h and eax,r8d                             ; AND r32, r/m32 || o32 23 /r || encoded[3]{41 23 c0}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint set_bit_on(uint src, byte pos)
; set_bit_on_32u[7ff7c6a9ab00h, 7ff7c6a9ab14h][20] = {0f 1f 44 00 00 8b c1 0f b6 ca ba 01 00 00 00 d3 e2 0b c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0011h or eax,edx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b c2}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
; uint set_bit_off(uint src, byte pos)
; set_bit_off_32u[7ff7c6a9ab30h, 7ff7c6a9ab46h][22] = {0f 1f 44 00 00 8b c1 0f b6 ca ba 01 00 00 00 d3 e2 f7 d2 23 c2 c3}
; Capture completion code, MSDIAG
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
000ah mov edx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{ba 01 00 00 00}
000fh shl edx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e2}
0011h not edx                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d2}
0013h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
----------------------------------------------------------------------------------------------------------------------------------------------------------------
