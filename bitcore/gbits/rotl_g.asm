------------------------------------------------------------------------------------------------------------------------
; void rotl<byte>(in byte src, int shift, ref byte dst, int count)
; rotl_g[8u](8u~in,32i,8u~ref,32i)[72] = {57 56 53 48 8b c1 45 33 d2 45 85 c9 7e 36 44 8b da 41 83 e3 1f f7 da 83 c2 08 83 e2 1f 49 63 ca 49 8d 34 08 40 0f b6 3c 08 41 8b cb 8b df d3 e3 8b ca d3 ff 0b fb 40 0f b6 cf 88 0e 41 ff c2 45 3b d1 7c d9 5b 5e 5f c3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0006h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0009h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
000ch jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 36}
000eh mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
0011h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
0015h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0017h add edx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 08}
001ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
001dh movsxd rcx,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 ca}
0020h lea rsi,[r8+rcx]                        ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 08}
0024h movzx edi,byte ptr [rax+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 08}
0029h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
002ch mov ebx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b df}
002eh shl ebx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e3}
0030h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0032h sar edi,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 ff}
0034h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0036h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
003ah mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001dh                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void rotl<ushort>(in ushort src, int shift, ref ushort dst, int count)
; rotl_g[16u](16u~in,32i,16u~ref,32i)[71] = {57 56 53 48 8b c1 45 33 d2 45 85 c9 7e 35 44 8b da 41 83 e3 1f f7 da 83 c2 10 83 e2 1f 49 63 ca 49 8d 34 48 0f b7 3c 48 41 8b cb 8b df d3 e3 8b ca d3 ff 0b fb 0f b7 cf 66 89 0e 41 ff c2 45 3b d1 7c da 5b 5e 5f c3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0006h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0009h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
000ch jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 35}
000eh mov r11d,edx                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b da}
0011h and r11d,1fh                            ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e3 1f}
0015h neg edx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 da}
0017h add edx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c2 10}
001ah and edx,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[3]{83 e2 1f}
001dh movsxd rcx,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 ca}
0020h lea rsi,[r8+rcx*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 48}
0024h movzx edi,word ptr [rax+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 48}
0028h mov ecx,r11d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b cb}
002bh mov ebx,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b df}
002dh shl ebx,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e3}
002fh mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0031h sar edi,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 ff}
0033h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0035h movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0038h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001dh                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0043h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void rotl<uint>(in uint src, int shift, ref uint dst, int count)
; rotl_g[32u](32u~in,32i,32u~ref,32i)[40] = {56 48 8b c1 90 45 33 d2 45 85 c9 7e 19 49 63 ca 4d 8d 1c 88 8b 34 88 8b ca d3 c6 41 89 33 41 ff c2 45 3b d1 7c e7 5e c3}
; TermCode = CTC_RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0008h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
000bh jle short 0026h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
000dh movsxd rcx,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 ca}
0010h lea r11,[r8+rcx*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 1c 88}
0014h mov esi,[rax+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 88}
0017h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0019h rol esi,cl                              ; ROL r/m32, CL || o32 D3 /0 || encoded[2]{d3 c6}
001bh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
001eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0021h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0024h jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0026h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0027h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void rotl<ulong>(in ulong src, int shift, ref ulong dst, int count)
; rotl_g[64u](64u~in,32i,64u~ref,32i)[42] = {56 48 8b c1 90 45 33 d2 45 85 c9 7e 1b 49 63 ca 4d 8d 1c c8 48 8b 34 c8 8b ca 48 d3 c6 49 89 33 41 ff c2 45 3b d1 7c e5 5e c3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0008h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
000bh jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
000dh movsxd rcx,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 ca}
0010h lea r11,[r8+rcx*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4d 8d 1c c8}
0014h mov rsi,[rax+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 c8}
0018h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
001ah rol rsi,cl                              ; ROL r/m64, CL || REX.W D3 /0 || encoded[3]{48 d3 c6}
001dh mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0020h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0023h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0026h jl short 000dh                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0028h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotl<byte>(byte src, int shift)
; rotl_g[8u](8u,32i)[32] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b c0 41 d3 e0 8b ca f7 d9 83 c1 08 d3 f8 41 0b c0 0f b6 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,8                               ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 08}
0017h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotl<ushort>(ushort src, int shift)
; rotl_g[16u](16u,32i)[32] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c0 41 d3 e0 8b ca f7 d9 83 c1 10 d3 f8 41 0b c0 0f b7 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r8d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c0}
000dh shl r8d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e0}
0010h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0012h neg ecx                                 ; NEG r/m32 || o32 F7 /3 || encoded[2]{f7 d9}
0014h add ecx,10h                             ; ADD r/m32, imm8 || o32 83 /0 ib || encoded[3]{83 c1 10}
0017h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0019h or eax,r8d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c0}
001ch movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotl<uint>(uint src, int shift)
; rotl_g[32u](32u,32i)[12] = {0f 1f 44 00 00 8b c1 8b ca d3 c0 c3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h rol eax,cl                              ; ROL r/m32, CL || o32 D3 /0 || encoded[2]{d3 c0}
000bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotl<ulong>(ulong src, int shift)
; rotl_g[64u](64u,32i)[14] = {0f 1f 44 00 00 48 8b c1 8b ca 48 d3 c0 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah rol rax,cl                              ; ROL r/m64, CL || REX.W D3 /0 || encoded[3]{48 d3 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte rotl<byte>(byte src, int shift, int width)
; rotl_g[8u](8u,32i,32i)[31] = {0f 1f 44 00 00 0f b6 c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 f8 41 0b c1 0f b6 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort rotl<ushort>(ushort src, int shift, int width)
; rotl_g[16u](16u,32i,32i)[31] = {0f 1f 44 00 00 0f b7 c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 f8 41 0b c1 0f b7 c0 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000dh shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h sar eax,cl                              ; SAR r/m32, CL || o32 D3 /7 || encoded[2]{d3 f8}
0018h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001bh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint rotl<uint>(uint src, int shift, int width)
; rotl_g[32u](32u,32i,32i)[27] = {0f 1f 44 00 00 8b c1 8b ca 44 8b c8 41 d3 e1 44 2b c2 41 8b c8 d3 e8 41 0b c1 c3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
0009h mov r9d,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{44 8b c8}
000ch shl r9d,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[3]{41 d3 e1}
000fh sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0012h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0015h shr eax,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 e8}
0017h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong rotl<ulong>(ulong src, int shift, int width)
; rotl_g[64u](64u,32i,32i)[29] = {0f 1f 44 00 00 48 8b c1 8b ca 4c 8b c8 49 d3 e1 44 2b c2 41 8b c8 48 d3 e8 49 0b c1 c3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h mov ecx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b ca}
000ah mov r9,rax                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c8}
000dh shl r9,cl                               ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{49 d3 e1}
0010h sub r8d,edx                             ; SUB r32, r/m32 || o32 2B /r || encoded[3]{44 2b c2}
0013h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0016h shr rax,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 e8}
0019h or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
