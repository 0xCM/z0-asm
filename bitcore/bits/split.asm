------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out byte x0, out byte x1, out byte x2, out byte x3, out byte x4, out byte x5, out byte x6, out byte x7)
; split_64u_8u~out_8u~out_8u~out_8u~out_8u~out_8u~out_8u~out_8u~out[95] = {0f 1f 44 00 00 88 0a 48 8b c1 48 c1 e8 08 41 88 00 48 8b c1 48 c1 e8 10 41 88 01 48 8b c1 48 c1 e8 18 48 8b 54 24 28 88 02 48 8b c1 48 c1 e8 20 48 8b 54 24 30 88 02 48 8b c1 48 c1 e8 28 48 8b 54 24 38 88 02 48 8b c1 48 c1 e8 30 48 8b 54 24 40 88 02 48 c1 e9 38 48 8b 44 24 48 88 08 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000ah shr rax,8                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 08}
000eh mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
0018h mov [r9],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh shr rax,18h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 18}
0022h mov rdx,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 28}
0027h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0029h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002ch shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
0030h mov rdx,[rsp+30h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 30}
0035h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah shr rax,28h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 28}
003eh mov rdx,[rsp+38h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 38}
0043h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h shr rax,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 30}
004ch mov rdx,[rsp+40h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 54 24 40}
0051h mov [rdx],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 02}
0053h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0057h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
005ch mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<byte> split(ushort src, N2 n)
; split_16u_n2[49] = {50 0f 1f 40 00 0f b7 c1 0f b6 d0 c1 f8 08 0f b6 c0 c6 04 24 00 c6 44 24 01 00 0f b6 d2 88 14 24 0f b6 c0 88 44 24 01 48 0f bf 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d0}
000bh sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000eh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0011h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0015h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
001ah movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
001dh mov [rsp],dl                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 14 24}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h mov [rsp+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 01}
0027h movsx rax,word ptr [rsp]                ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 04 24}
002ch add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<ushort> split(uint src, N2 n)
; split_32u_n2[50] = {50 0f 1f 40 00 0f b7 c1 c1 e9 10 0f b7 d1 66 c7 04 24 00 00 66 c7 44 24 02 00 00 0f b7 c0 66 89 04 24 0f b7 c2 66 89 44 24 02 8b 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh movzx edx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d1}
000eh mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
0014h mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0022h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0025h mov [rsp+2],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 02}
002ah mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
002dh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstQuad<byte> split(uint src, N4 n)
; split_32u_n4[88] = {50 0f 1f 40 00 0f b6 c1 8b d1 c1 ea 08 0f b6 d2 44 8b c1 41 c1 e8 10 45 0f b6 c0 c1 e9 18 0f b6 c9 c6 04 24 00 c6 44 24 01 00 c6 44 24 02 00 c6 44 24 03 00 0f b6 c0 88 04 24 0f b6 c2 88 44 24 01 41 0f b6 c0 88 44 24 02 0f b6 c1 88 44 24 03 8b 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000ah shr edx,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 ea 08}
000dh movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0010h mov r8d,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c1}
0013h shr r8d,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[4]{41 c1 e8 10}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001eh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0021h mov byte ptr [rsp],0                    ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{c6 04 24 00}
0025h mov byte ptr [rsp+1],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 01 00}
002ah mov byte ptr [rsp+2],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 02 00}
002fh mov byte ptr [rsp+3],0                  ; MOV r/m8, imm8 || C6 /0 ib || encoded[5]{c6 44 24 03 00}
0034h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0037h mov [rsp],al                            ; MOV r/m8, r8 || 88 /r || encoded[3]{88 04 24}
003ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
003dh mov [rsp+1],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 01}
0041h movzx eax,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c0}
0045h mov [rsp+2],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 02}
0049h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
004ch mov [rsp+3],al                          ; MOV r/m8, r8 || 88 /r || encoded[4]{88 44 24 03}
0050h mov eax,[rsp]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 04 24}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstPair<uint> split(ulong src, N2 n)
; split_64u_n2[38] = {50 0f 1f 40 00 8b c1 48 c1 e9 20 8b d1 33 c9 89 0c 24 89 4c 24 04 89 04 24 89 54 24 04 48 8b 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_Zx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov edx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d1}
000dh xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
000fh mov [rsp],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 0c 24}
0012h mov [rsp+4],ecx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 4c 24 04}
0016h mov [rsp],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 04 24}
0019h mov [rsp+4],edx                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 54 24 04}
001dh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0021h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0025h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ConstQuad<ushort> split(ulong src, N4 n)
; split_64u_n4[104] = {50 0f 1f 40 00 0f b7 c1 48 8b d1 48 c1 ea 10 0f b7 d2 4c 8b c1 49 c1 e8 20 45 0f b7 c0 48 c1 e9 30 0f b7 c9 66 c7 04 24 00 00 66 c7 44 24 02 00 00 66 c7 44 24 04 00 00 66 c7 44 24 06 00 00 0f b7 c0 66 89 04 24 0f b7 c2 66 89 44 24 02 41 0f b7 c0 66 89 44 24 04 0f b7 c1 66 89 44 24 06 48 8b 04 24 48 83 c4 08 c3}
; TermCode = CTC_RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov rdx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d1}
000bh shr rdx,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 10}
000fh movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
0012h mov r8,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c1}
0015h shr r8,20h                              ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{49 c1 e8 20}
0019h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
001dh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0021h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0024h mov word ptr [rsp],0                    ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 c7 04 24 00 00}
002ah mov word ptr [rsp+2],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 02 00 00}
0031h mov word ptr [rsp+4],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 04 00 00}
0038h mov word ptr [rsp+6],0                  ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[7]{66 c7 44 24 06 00 00}
003fh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0042h mov [rsp],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 89 04 24}
0046h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
0049h mov [rsp+2],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 02}
004eh movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
0052h mov [rsp+4],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 04}
0057h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
005ah mov [rsp+6],ax                          ; MOV r/m16, r16 || o16 89 /r || encoded[5]{66 89 44 24 06}
005fh mov rax,[rsp]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 04 24}
0063h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(byte src, int index, out byte x0, out byte x1)
; split_8u_32i_8u~out_8u~out[42] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b d0 41 d3 fa 45 88 11 41 b9 01 00 00 00 8b ca 49 d3 e1 41 0f b6 d1 ff ca 23 c2 41 88 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h mov [r9],r10b                           ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 11}
0013h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0019h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001bh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001eh movzx edx,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 d1}
0022h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0024h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0026h mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ushort src, int index, out ushort x0, out ushort x1)
; split_16u_32i_16u~out_16u~out[44] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b d0 41 d3 fa 66 45 89 11 41 b9 01 00 00 00 8b ca 49 d3 e1 41 0f b7 d1 ff ca 23 c2 66 41 89 00 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000dh sar r10d,cl                             ; SAR r/m32, CL || o32 D3 /7 || encoded[3]{41 d3 fa}
0010h mov [r9],r10w                           ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 11}
0014h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
001ah mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ch shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001fh movzx edx,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 d1}
0023h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0025h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0027h mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
002bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, int index, out uint x0, out uint x1)
; split_32u_32i_32u~out_32u~out[40] = {0f 1f 44 00 00 8b c1 8b ca 44 8b d0 41 d3 ea 45 89 11 41 b9 01 00 00 00 8b ca 49 d3 e1 41 8b d1 ff ca 23 c2 41 89 00 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r10d,eax                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b d0}
000ch shr r10d,cl                             ; SHR r/m32, CL || o32 D3 /5 || encoded[3]{41 d3 ea}
000fh mov [r9],r10d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 11}
0012h mov r9d,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 01 00 00 00}
0018h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ah shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
001dh mov edx,r9d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b d1}
0020h dec edx                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff ca}
0022h and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
0024h mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, int index, out ulong x0, out ulong x1)
; split_64u_32i_64u~out_64u~out[43] = {0f 1f 44 00 00 48 8b c1 83 e2 3f 8b ca 4c 8b d0 49 d3 ea 4d 89 11 41 b9 01 00 00 00 8b ca 49 d3 e1 49 ff c9 49 23 c1 49 89 00 c3}
; TermCode = CTC_RET_ZED_SBB
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
------------------------------------------------------------------------------------------------------------------------
; void split(byte src, out byte x0, out byte x1)
; split_8u_8u~out_8u~out[22] = {0f 1f 44 00 00 0f b6 c1 8b c8 83 e1 0f 88 0a c1 f8 04 41 88 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0012h mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte split(byte src, out byte x0)
; split_8u_8u~out[22] = {0f 1f 44 00 00 0f b6 c1 8b c8 83 e1 0f 88 0a c1 f8 04 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c8}
000ah and ecx,0fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e1 0f}
000dh mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
000fh sar eax,4                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 04}
0012h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ushort src, out byte x0, out byte x1)
; split_16u_8u~out_8u~out[17] = {0f 1f 44 00 00 88 0a 0f b7 c1 c1 f8 08 41 88 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000dh mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte split(ushort src, out byte x0)
; split_16u_8u~out[17] = {0f 1f 44 00 00 88 0a 0f b7 c1 c1 f8 08 0f b6 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000ah sar eax,8                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 f8 08}
000dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, out ushort x0, out ushort x1)
; split_32u_16u~out_16u~out[16] = {0f 1f 44 00 00 66 89 0a c1 e9 10 66 41 89 08 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh mov [r8],cx                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 08}
000fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort split(uint src, out ushort x0)
; split_32u_16u~out[15] = {0f 1f 44 00 00 66 89 0a c1 e9 10 0f b7 c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h shr ecx,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 10}
000bh movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
000eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out uint x0, out uint x1)
; split_64u_32u~out_32u~out[17] = {0f 1f 44 00 00 89 0a 48 c1 e9 20 8b c1 41 89 00 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0a}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh mov [r8],eax                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 00}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint split(ulong src, out uint x0)
; split_64u_32u~out[14] = {0f 1f 44 00 00 89 0a 48 c1 e9 20 8b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],ecx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 0a}
0007h shr rcx,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 20}
000bh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
; split_64u_16u~out_16u~out_16u~out_16u~out[43] = {0f 1f 44 00 00 66 89 0a 48 8b c1 48 c1 e8 10 66 41 89 00 48 8b c1 48 c1 e8 20 66 41 89 01 48 c1 e9 30 48 8b 44 24 28 66 89 08 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0a}
0008h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
000bh shr rax,10h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 10}
000fh mov [r8],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 00}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h shr rax,20h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 20}
001ah mov [r9],ax                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 01}
001eh shr rcx,30h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 30}
0022h mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
0027h mov [rax],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 08}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void split(uint src, out byte x0, out byte x1, out byte x2, out byte x3)
; split_32u_8u~out_8u~out_8u~out_8u~out[34] = {0f 1f 44 00 00 88 0a 8b c1 c1 e8 08 41 88 00 8b c1 c1 e8 10 41 88 01 c1 e9 18 48 8b 44 24 28 88 08 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov [rdx],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0a}
0007h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0009h shr eax,8                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 08}
000ch mov [r8],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 00}
000fh mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0011h shr eax,10h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 10}
0014h mov [r9],al                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 01}
0017h shr ecx,18h                             ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e9 18}
001ah mov rax,[rsp+28h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 28}
001fh mov [rax],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 08}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
