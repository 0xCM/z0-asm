------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N1,N16,byte> load<byte>(in Block16<byte> src, N1 m, N16 n)
; load_g[8u](b16x8u~in,n1,n16)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 d1 e8 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 24 a1 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0041h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0046h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0056h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0059h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0065h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006dh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 a1 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N1,N16,ushort> load<ushort>(in Block16<ushort> src, N1 m, N16 n)
; load_g[16u](b16x16u~in,n1,n16)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 86 a0 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 a0 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N1,N16,uint> load<uint>(in Block16<uint> src, N1 m, N16 n)
; load_g[32u](b16x32u~in,n1,n16)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 d7 9f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 9f d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N1,N16,ulong> load<ulong>(in Block16<ulong> src, N1 m, N16 n)
; load_g[64u](b16x64u~in,n1,n16)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 17 9b d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 9b d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N16,N1,byte> load<byte>(in Block16<byte> src, N16 m, N1 n)
; load_g[8u](b16x8u~in,n16,n1)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 d1 e8 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 74 9a d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0041h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0046h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0056h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0059h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0065h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006dh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 9a d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N16,N1,ushort> load<ushort>(in Block16<ushort> src, N16 m, N1 n)
; load_g[16u](b16x16u~in,n16,n1)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 c6 95 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 95 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N16,N1,uint> load<uint>(in Block16<uint> src, N16 m, N1 n)
; load_g[32u](b16x32u~in,n16,n1)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 17 95 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 95 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N16,N1,ulong> load<ulong>(in Block16<ulong> src, N16 m, N1 n)
; load_g[64u](b16x64u~in,n16,n1)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 67 94 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 94 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,byte> load<byte>(in Block16<byte> src, N2 m, N8 n)
; load_g[8u](b16x8u~in,n2,n8)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 d1 e8 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 b4 8f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0041h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0046h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0056h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0059h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0065h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006dh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 8f d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,ushort> load<ushort>(in Block16<ushort> src, N2 m, N8 n)
; load_g[16u](b16x16u~in,n2,n8)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 16 8f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 8f d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,uint> load<uint>(in Block16<uint> src, N2 m, N8 n)
; load_g[32u](b16x32u~in,n2,n8)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 67 8e d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 8e d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,ulong> load<ulong>(in Block16<ulong> src, N2 m, N8 n)
; load_g[64u](b16x64u~in,n2,n8)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 a7 89 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 89 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,byte> load<byte>(in Block16<byte> src, N8 m, N2 n)
; load_g[8u](b16x8u~in,n8,n2)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 d1 e8 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 04 89 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0041h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0046h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0056h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0059h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0065h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006dh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 89 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,ushort> load<ushort>(in Block16<ushort> src, N8 m, N2 n)
; load_g[16u](b16x16u~in,n8,n2)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 66 88 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 88 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,uint> load<uint>(in Block16<uint> src, N8 m, N2 n)
; load_g[32u](b16x32u~in,n8,n2)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 b7 87 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 87 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N8,N2,ulong> load<ulong>(in Block16<ulong> src, N8 m, N2 n)
; load_g[64u](b16x64u~in,n8,n2)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 07 87 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 87 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N4,N4,byte> load<byte>(in Block16<byte> src, N4 m, N4 n)
; load_g[8u](b16x8u~in,n4,n4)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 d1 e8 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 54 82 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 e8}
0041h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0046h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004ah vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0056h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0059h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005fh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0065h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006dh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 82 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N4,N4,ushort> load<ushort>(in Block16<ushort> src, N4 m, N4 n)
; load_g[16u](b16x16u~in,n4,n4)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 b6 81 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 81 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N4,N4,uint> load<uint>(in Block16<uint> src, N4 m, N4 n)
; load_g[32u](b16x32u~in,n4,n4)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 07 81 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 81 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid16<N4,N4,ulong> load<ulong>(in Block16<ulong> src, N4 m, N4 n)
; load_g[64u](b16x64u~in,n4,n4)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 d1 e8 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 0f b7 00 48 83 c4 58 5e 5f c3 e8 47 7c d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,1                               ; SHR r/m64, 1 || REX.W D1 /5 || encoded[3]{48 d1 e8}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah movzx eax,word ptr [rax]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 7c d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N1,N32,byte> load<byte>(in Block32<byte> src, N1 m, N32 n)
; load_g[8u](b32x8u~in,n1,n32)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 94 77 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 77 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N1,N32,ushort> load<ushort>(in Block32<ushort> src, N1 m, N32 n)
; load_g[16u](b32x16u~in,n1,n32)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 d8 72 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 72 d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N1,N32,uint> load<uint>(in Block32<uint> src, N1 m, N32 n)
; load_g[32u](b32x32u~in,n1,n32)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 37 72 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 72 d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N1,N32,ulong> load<ulong>(in Block32<ulong> src, N1 m, N32 n)
; load_g[64u](b32x64u~in,n1,n32)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 87 71 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 71 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N32,N1,byte> load<byte>(in Block32<byte> src, N32 m, N1 n)
; load_g[8u](b32x8u~in,n32,n1)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 d4 6c d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 6c d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N32,N1,ushort> load<ushort>(in Block32<ushort> src, N32 m, N1 n)
; load_g[16u](b32x16u~in,n32,n1)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 28 6c d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 6c d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N32,N1,uint> load<uint>(in Block32<uint> src, N32 m, N1 n)
; load_g[32u](b32x32u~in,n32,n1)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 87 6b d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 6b d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N32,N1,ulong> load<ulong>(in Block32<ulong> src, N32 m, N1 n)
; load_g[64u](b32x64u~in,n32,n1)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 c7 66 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 66 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N2,N16,byte> load<byte>(in Block32<byte> src, N2 m, N16 n)
; load_g[8u](b32x8u~in,n2,n16)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 14 62 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 62 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N2,N16,ushort> load<ushort>(in Block32<ushort> src, N2 m, N16 n)
; load_g[16u](b32x16u~in,n2,n16)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 68 61 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 61 d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N2,N16,uint> load<uint>(in Block32<uint> src, N2 m, N16 n)
; load_g[32u](b32x32u~in,n2,n16)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 c7 60 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 60 d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N2,N16,ulong> load<ulong>(in Block32<ulong> src, N2 m, N16 n)
; load_g[64u](b32x64u~in,n2,n16)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 17 60 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 60 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N16,N2,byte> load<byte>(in Block32<byte> src, N16 m, N2 n)
; load_g[8u](b32x8u~in,n16,n2)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 64 5b d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 5b d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N16,N2,ushort> load<ushort>(in Block32<ushort> src, N16 m, N2 n)
; load_g[16u](b32x16u~in,n16,n2)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 b8 5a d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 5a d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N16,N2,uint> load<uint>(in Block32<uint> src, N16 m, N2 n)
; load_g[32u](b32x32u~in,n16,n2)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 07 56 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 56 d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N16,N2,ulong> load<ulong>(in Block32<ulong> src, N16 m, N2 n)
; load_g[64u](b32x64u~in,n16,n2)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 57 55 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 55 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N4,N8,byte> load<byte>(in Block32<byte> src, N4 m, N8 n)
; load_g[8u](b32x8u~in,n4,n8)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 a4 50 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 50 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N4,N8,ushort> load<ushort>(in Block32<ushort> src, N4 m, N8 n)
; load_g[16u](b32x16u~in,n4,n8)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 f8 4f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 4f d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N4,N8,uint> load<uint>(in Block32<uint> src, N4 m, N8 n)
; load_g[32u](b32x32u~in,n4,n8)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 57 4f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 4f d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N4,N8,ulong> load<ulong>(in Block32<ulong> src, N4 m, N8 n)
; load_g[64u](b32x64u~in,n4,n8)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 a7 4e d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 4e d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N8,N4,byte> load<byte>(in Block32<byte> src, N8 m, N4 n)
; load_g[8u](b32x8u~in,n8,n4)[125] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 02 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 f4 49 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,2                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 02}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
0070h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
0077h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 49 d3 5e}
007ch int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N8,N4,ushort> load<ushort>(in Block32<ushort> src, N8 m, N4 n)
; load_g[16u](b32x16u~in,n8,n4)[137] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 48 49 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0083h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007ch add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0080h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0081h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0082h ret                                     ; RET || C3 || encoded[1]{c3}
0083h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 49 d3 5e}
0088h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N8,N4,uint> load<uint>(in Block32<uint> src, N8 m, N4 n)
; load_g[32u](b32x32u~in,n8,n4)[122] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 97 44 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
006dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
0074h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 44 d3 5e}
0079h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid32<N8,N4,ulong> load<ulong>(in Block32<ulong> src, N8 m, N4 n)
; load_g[64u](b32x64u~in,n8,n4)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 03 48 c1 e8 02 48 3d ff ff ff 7f 77 35 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 8b 00 48 83 c4 58 5e 5f c3 e8 e7 43 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,3                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 03}
0043h shr rax,2                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 02}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 35}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov eax,[rax]                           ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 43 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N1,N64,byte> load<byte>(in Block64<byte> src, N1 m, N64 n)
; load_g[8u](b64x8u~in,n1,n64)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 33 3b d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 3b d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N1,N64,ushort> load<ushort>(in Block64<ushort> src, N1 m, N64 n)
; load_g[16u](b64x16u~in,n1,n64)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 87 3a d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 3a d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N1,N64,uint> load<uint>(in Block64<uint> src, N1 m, N64 n)
; load_g[32u](b64x32u~in,n1,n64)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 d6 39 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 39 d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N1,N64,ulong> load<ulong>(in Block64<ulong> src, N1 m, N64 n)
; load_g[64u](b64x64u~in,n1,n64)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 36 39 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 39 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N64,N1,byte> load<byte>(in Block64<byte> src, N64 m, N1 n)
; load_g[8u](b64x8u~in,n64,n1)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 83 34 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 34 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N64,N1,ushort> load<ushort>(in Block64<ushort> src, N64 m, N1 n)
; load_g[16u](b64x16u~in,n64,n1)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 d7 33 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 33 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N64,N1,uint> load<uint>(in Block64<uint> src, N64 m, N1 n)
; load_g[32u](b64x32u~in,n64,n1)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 16 2f d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 2f d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N64,N1,ulong> load<ulong>(in Block64<ulong> src, N64 m, N1 n)
; load_g[64u](b64x64u~in,n64,n1)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 76 2e d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 2e d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N2,N32,byte> load<byte>(in Block64<byte> src, N2 m, N32 n)
; load_g[8u](b64x8u~in,n2,n32)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 c3 29 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 29 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N2,N32,ushort> load<ushort>(in Block64<ushort> src, N2 m, N32 n)
; load_g[16u](b64x16u~in,n2,n32)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 17 29 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 29 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N2,N32,uint> load<uint>(in Block64<uint> src, N2 m, N32 n)
; load_g[32u](b64x32u~in,n2,n32)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 66 28 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 28 d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N2,N32,ulong> load<ulong>(in Block64<ulong> src, N2 m, N32 n)
; load_g[64u](b64x64u~in,n2,n32)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 c6 27 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 27 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N32,N2,byte> load<byte>(in Block64<byte> src, N32 m, N2 n)
; load_g[8u](b64x8u~in,n32,n2)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 13 23 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 23 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N32,N2,ushort> load<ushort>(in Block64<ushort> src, N32 m, N2 n)
; load_g[16u](b64x16u~in,n32,n2)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 57 1e d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 1e d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N32,N2,uint> load<uint>(in Block64<uint> src, N32 m, N2 n)
; load_g[32u](b64x32u~in,n32,n2)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 a6 1d d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 1d d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N32,N2,ulong> load<ulong>(in Block64<ulong> src, N32 m, N2 n)
; load_g[64u](b64x64u~in,n32,n2)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 06 1d d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 1d d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N4,N16,byte> load<byte>(in Block64<byte> src, N4 m, N16 n)
; load_g[8u](b64x8u~in,n4,n16)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 53 18 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 18 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N4,N16,ushort> load<ushort>(in Block64<ushort> src, N4 m, N16 n)
; load_g[16u](b64x16u~in,n4,n16)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 a7 17 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 17 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N4,N16,uint> load<uint>(in Block64<uint> src, N4 m, N16 n)
; load_g[32u](b64x32u~in,n4,n16)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 f6 16 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 16 d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N4,N16,ulong> load<ulong>(in Block64<ulong> src, N4 m, N16 n)
; load_g[64u](b64x64u~in,n4,n16)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 46 12 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 12 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N16,N4,byte> load<byte>(in Block64<byte> src, N16 m, N4 n)
; load_g[8u](b64x8u~in,n16,n4)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 a3 11 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 11 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N16,N4,ushort> load<ushort>(in Block64<ushort> src, N16 m, N4 n)
; load_g[16u](b64x16u~in,n16,n4)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 e7 0c d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 0c d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N16,N4,uint> load<uint>(in Block64<uint> src, N16 m, N4 n)
; load_g[32u](b64x32u~in,n16,n4)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 36 0c d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 0c d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N16,N4,ulong> load<ulong>(in Block64<ulong> src, N16 m, N4 n)
; load_g[64u](b64x64u~in,n16,n4)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 96 0b d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 0b d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N8,N8,byte> load<byte>(in Block64<byte> src, N8 m, N8 n)
; load_g[8u](b64x8u~in,n8,n8)[126] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 c1 e8 03 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 e3 06 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shr eax,3                               ; SHR r/m32, imm8 || o32 C1 /5 ib || encoded[3]{c1 e8 03}
0042h lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0047h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
004bh vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0057h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
005ah vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
0060h vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0066h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
0071h add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
0078h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 06 d3 5e}
007dh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N8,N8,ushort> load<ushort>(in Block64<ushort> src, N8 m, N8 n)
; load_g[16u](b64x16u~in,n8,n8)[138] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 d1 e0 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 37 06 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,1                               ; SHL r/m64, 1 || REX.W D1 /4 || encoded[3]{48 d1 e0}
0042h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0046h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004ch ja short 0084h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004eh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0053h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0057h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005bh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0060h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006ch vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0072h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0077h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007ah mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007dh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0081h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0082h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0083h ret                                     ; RET || C3 || encoded[1]{c3}
0084h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 06 d3 5e}
0089h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N8,N8,uint> load<uint>(in Block64<uint> src, N8 m, N8 n)
; load_g[32u](b64x32u~in,n8,n8)[139] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 c1 e0 02 48 c1 e8 03 48 3d ff ff ff 7f 77 36 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 86 05 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh shl rax,2                               ; SHL r/m64, imm8 || REX.W C1 /4 ib || encoded[4]{48 c1 e0 02}
0043h shr rax,3                               ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 03}
0047h cmp rax,7fffffffh                       ; CMP RAX, imm32 || REX.W 3D id || encoded[6]{48 3d ff ff ff 7f}
004dh ja short 0085h                          ; JA rel8 || 77 cb || encoded[2]{77 36}
004fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0054h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0058h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
005ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0061h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0064h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0067h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
006dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0073h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0078h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
007eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0082h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0083h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0084h ret                                     ; RET || C3 || encoded[1]{c3}
0085h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 05 d3 5e}
008ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid64<N8,N8,ulong> load<ulong>(in Block64<ulong> src, N8 m, N8 n)
; load_g[64u](b64x64u~in,n8,n8)[123] = {57 56 48 83 ec 58 c5 f8 77 48 8b f1 48 8d 7c 24 28 b9 0c 00 00 00 33 c0 f3 ab 48 8b ce c5 fa 6f 01 c5 fa 7f 44 24 48 48 8d 44 24 38 c5 f8 57 c0 c5 fa 7f 00 48 8d 44 24 48 48 8b 10 8b 40 08 48 8d 4c 24 28 c5 f8 57 c0 c5 fa 7f 01 48 8d 4c 24 28 48 89 11 89 41 08 c5 fa 6f 44 24 28 c5 fa 7f 44 24 38 48 8d 44 24 38 48 8b 00 48 8b 00 48 83 c4 58 5e 5f c3 e8 d6 00 d3 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000ch lea rdi,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 28}
0011h mov ecx,0ch                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0c 00 00 00}
0016h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0018h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001ah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001dh vmovdqu xmm0,xmmword ptr [rcx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 01}
0021h vmovdqu xmmword ptr [rsp+48h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 48}
0027h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0034h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0039h mov rdx,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 10}
003ch mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
003fh lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0044h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0048h vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
004ch lea rcx,[rsp+28h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 28}
0051h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h vmovdqu xmm0,xmmword ptr [rsp+28h]      ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 28}
005dh vmovdqu xmmword ptr [rsp+38h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 38}
0063h lea rax,[rsp+38h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 38}
0068h mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006bh mov rax,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 00}
006eh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0072h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0073h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0074h ret                                     ; RET || C3 || encoded[1]{c3}
0075h call 7ff82738fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 00 d3 5e}
007ah int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N1,N128,byte> load<byte>(Vector128<byte> src, N1 m, N128 n)
; load_g[8u](v128x8u,n1,n128)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N1,N128,ushort> load<ushort>(Vector128<ushort> src, N1 m, N128 n)
; load_g[16u](v128x16u,n1,n128)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N1,N128,uint> load<uint>(Vector128<uint> src, N1 m, N128 n)
; load_g[32u](v128x32u,n1,n128)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N1,N128,ulong> load<ulong>(Vector128<ulong> src, N1 m, N128 n)
; load_g[64u](v128x64u,n1,n128)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N128,N1,byte> load<byte>(Vector128<byte> src, N128 m, N1 n)
; load_g[8u](v128x8u,n128,n1)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N128,N1,ushort> load<ushort>(Vector128<ushort> src, N128 m, N1 n)
; load_g[16u](v128x16u,n128,n1)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N128,N1,uint> load<uint>(Vector128<uint> src, N128 m, N1 n)
; load_g[32u](v128x32u,n128,n1)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N128,N1,ulong> load<ulong>(Vector128<ulong> src, N128 m, N1 n)
; load_g[64u](v128x64u,n128,n1)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N2,N64,byte> load<byte>(Vector128<byte> src, N2 m, N64 n)
; load_g[8u](v128x8u,n2,n64)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N2,N64,ushort> load<ushort>(Vector128<ushort> src, N2 m, N64 n)
; load_g[16u](v128x16u,n2,n64)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N2,N64,uint> load<uint>(Vector128<uint> src, N2 m, N64 n)
; load_g[32u](v128x32u,n2,n64)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N2,N64,ulong> load<ulong>(Vector128<ulong> src, N2 m, N64 n)
; load_g[64u](v128x64u,n2,n64)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N64,N2,byte> load<byte>(Vector128<byte> src, N64 m, N2 n)
; load_g[8u](v128x8u,n64,n2)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N64,N2,ushort> load<ushort>(Vector128<ushort> src, N64 m, N2 n)
; load_g[16u](v128x16u,n64,n2)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N64,N2,uint> load<uint>(Vector128<uint> src, N64 m, N2 n)
; load_g[32u](v128x32u,n64,n2)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N64,N2,ulong> load<ulong>(Vector128<ulong> src, N64 m, N2 n)
; load_g[64u](v128x64u,n64,n2)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N4,N32,byte> load<byte>(Vector128<byte> src, N4 m, N32 n)
; load_g[8u](v128x8u,n4,n32)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N4,N32,ushort> load<ushort>(Vector128<ushort> src, N4 m, N32 n)
; load_g[16u](v128x16u,n4,n32)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N4,N32,uint> load<uint>(Vector128<uint> src, N4 m, N32 n)
; load_g[32u](v128x32u,n4,n32)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N4,N32,ulong> load<ulong>(Vector128<ulong> src, N4 m, N32 n)
; load_g[64u](v128x64u,n4,n32)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N32,N4,byte> load<byte>(Vector128<byte> src, N32 m, N4 n)
; load_g[8u](v128x8u,n32,n4)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N32,N4,ushort> load<ushort>(Vector128<ushort> src, N32 m, N4 n)
; load_g[16u](v128x16u,n32,n4)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N32,N4,uint> load<uint>(Vector128<uint> src, N32 m, N4 n)
; load_g[32u](v128x32u,n32,n4)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N32,N4,ulong> load<ulong>(Vector128<ulong> src, N32 m, N4 n)
; load_g[64u](v128x64u,n32,n4)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N8,N16,byte> load<byte>(Vector128<byte> src, N8 m, N16 n)
; load_g[8u](v128x8u,n8,n16)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N8,N16,ushort> load<ushort>(Vector128<ushort> src, N8 m, N16 n)
; load_g[16u](v128x16u,n8,n16)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N8,N16,uint> load<uint>(Vector128<uint> src, N8 m, N16 n)
; load_g[32u](v128x32u,n8,n16)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N8,N16,ulong> load<ulong>(Vector128<ulong> src, N8 m, N16 n)
; load_g[64u](v128x64u,n8,n16)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N16,N8,byte> load<byte>(Vector128<byte> src, N16 m, N8 n)
; load_g[8u](v128x8u,n16,n8)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N16,N8,ushort> load<ushort>(Vector128<ushort> src, N16 m, N8 n)
; load_g[16u](v128x16u,n16,n8)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N16,N8,uint> load<uint>(Vector128<uint> src, N16 m, N8 n)
; load_g[32u](v128x32u,n16,n8)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid128<N16,N8,ulong> load<ulong>(Vector128<ulong> src, N16 m, N8 n)
; load_g[64u](v128x64u,n16,n8)[17] = {c5 f8 77 66 90 c5 f9 10 02 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N1,N256,byte> load<byte>(Vector256<byte> src, N1 m, N256 n)
; load_g[8u](v256x8u,n1,n256)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N1,N256,ushort> load<ushort>(Vector256<ushort> src, N1 m, N256 n)
; load_g[16u](v256x16u,n1,n256)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N1,N256,uint> load<uint>(Vector256<uint> src, N1 m, N256 n)
; load_g[32u](v256x32u,n1,n256)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N1,N256,ulong> load<ulong>(Vector256<ulong> src, N1 m, N256 n)
; load_g[64u](v256x64u,n1,n256)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N256,N1,byte> load<byte>(Vector256<byte> src, N256 m, N1 n)
; load_g[8u](v256x8u,n256,n1)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N256,N1,ushort> load<ushort>(Vector256<ushort> src, N256 m, N1 n)
; load_g[16u](v256x16u,n256,n1)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N256,N1,uint> load<uint>(Vector256<uint> src, N256 m, N1 n)
; load_g[32u](v256x32u,n256,n1)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N256,N1,ulong> load<ulong>(Vector256<ulong> src, N256 m, N1 n)
; load_g[64u](v256x64u,n256,n1)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N2,N128,byte> load<byte>(Vector256<byte> src, N2 m, N128 n)
; load_g[8u](v256x8u,n2,n128)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N2,N128,ushort> load<ushort>(Vector256<ushort> src, N2 m, N128 n)
; load_g[16u](v256x16u,n2,n128)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N2,N128,uint> load<uint>(Vector256<uint> src, N2 m, N128 n)
; load_g[32u](v256x32u,n2,n128)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N2,N128,ulong> load<ulong>(Vector256<ulong> src, N2 m, N128 n)
; load_g[64u](v256x64u,n2,n128)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N128,N2,byte> load<byte>(Vector256<byte> src, N128 m, N2 n)
; load_g[8u](v256x8u,n128,n2)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N128,N2,ushort> load<ushort>(Vector256<ushort> src, N128 m, N2 n)
; load_g[16u](v256x16u,n128,n2)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N128,N2,uint> load<uint>(Vector256<uint> src, N128 m, N2 n)
; load_g[32u](v256x32u,n128,n2)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N128,N2,ulong> load<ulong>(Vector256<ulong> src, N128 m, N2 n)
; load_g[64u](v256x64u,n128,n2)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N4,N64,byte> load<byte>(Vector256<byte> src, N4 m, N64 n)
; load_g[8u](v256x8u,n4,n64)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N4,N64,ushort> load<ushort>(Vector256<ushort> src, N4 m, N64 n)
; load_g[16u](v256x16u,n4,n64)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N4,N64,uint> load<uint>(Vector256<uint> src, N4 m, N64 n)
; load_g[32u](v256x32u,n4,n64)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N4,N64,ulong> load<ulong>(Vector256<ulong> src, N4 m, N64 n)
; load_g[64u](v256x64u,n4,n64)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N64,N4,byte> load<byte>(Vector256<byte> src, N64 m, N4 n)
; load_g[8u](v256x8u,n64,n4)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N64,N4,ushort> load<ushort>(Vector256<ushort> src, N64 m, N4 n)
; load_g[16u](v256x16u,n64,n4)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N64,N4,uint> load<uint>(Vector256<uint> src, N64 m, N4 n)
; load_g[32u](v256x32u,n64,n4)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N64,N4,ulong> load<ulong>(Vector256<ulong> src, N64 m, N4 n)
; load_g[64u](v256x64u,n64,n4)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N8,N32,byte> load<byte>(Vector256<byte> src, N8 m, N32 n)
; load_g[8u](v256x8u,n8,n32)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N8,N32,ushort> load<ushort>(Vector256<ushort> src, N8 m, N32 n)
; load_g[16u](v256x16u,n8,n32)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N8,N32,uint> load<uint>(Vector256<uint> src, N8 m, N32 n)
; load_g[32u](v256x32u,n8,n32)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N8,N32,ulong> load<ulong>(Vector256<ulong> src, N8 m, N32 n)
; load_g[64u](v256x64u,n8,n32)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N32,N8,byte> load<byte>(Vector256<byte> src, N32 m, N8 n)
; load_g[8u](v256x8u,n32,n8)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N32,N8,ushort> load<ushort>(Vector256<ushort> src, N32 m, N8 n)
; load_g[16u](v256x16u,n32,n8)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N32,N8,uint> load<uint>(Vector256<uint> src, N32 m, N8 n)
; load_g[32u](v256x32u,n32,n8)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid256<N32,N8,ulong> load<ulong>(Vector256<ulong> src, N32 m, N8 n)
; load_g[64u](v256x64u,n32,n8)[20] = {c5 f8 77 66 90 c5 fd 10 02 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<byte> load<byte>(in Block256<byte> src, ushort rows, ushort cols)
; load_g[8u](b256x8u~in,16u,16u)[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 b9 02 c0 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 02 c0 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ushort> load<ushort>(in Block256<ushort> src, ushort rows, ushort cols)
; load_g[16u](b256x16u~in,16u,16u)[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 19 fe bf 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fe bf 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<uint> load<uint>(in Block256<uint> src, ushort rows, ushort cols)
; load_g[32u](b256x32u~in,16u,16u)[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 79 fd bf 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fd bf 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; BitGrid<ulong> load<ulong>(in Block256<ulong> src, ushort rows, ushort cols)
; load_g[64u](b256x64u~in,16u,16u)[118] = {57 56 53 48 83 ec 30 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 0a 00 00 00 33 c0 f3 ab 48 8b ce 48 8b d9 33 c0 48 8d 4c 24 18 c5 f8 57 c0 c5 fa 7f 01 48 89 41 10 c5 fa 6f 02 c5 fa 7f 44 24 08 c5 fa 6f 44 24 08 c5 fa 7f 44 24 18 41 0f b7 c0 89 44 24 28 41 0f b7 c1 89 44 24 2c 48 8b fb 48 8d 74 24 18 e8 d9 fc bf 5e 48 a5 48 a5 48 8b c3 48 83 c4 30 5b 5e 5f c3}
; TermCode = CTC_RET_INTR
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h sub rsp,30h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 30}
0007h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ah mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000dh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0012h mov ecx,0ah                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 0a 00 00 00}
0017h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0019h rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001bh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
001eh mov rbx,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d9}
0021h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0023h lea rcx,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 18}
0028h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
002ch vmovdqu xmmword ptr [rcx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 01}
0030h mov [rcx+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 41 10}
0034h vmovdqu xmm0,xmmword ptr [rdx]          ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[4]{c5 fa 6f 02}
0038h vmovdqu xmmword ptr [rsp+8],xmm0        ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 08}
003eh vmovdqu xmm0,xmmword ptr [rsp+8]        ; VMOVDQU xmm1, xmm2/m128 || VEX.128.F3.0F.WIG 6F /r || encoded[6]{c5 fa 6f 44 24 08}
0044h vmovdqu xmmword ptr [rsp+18h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[6]{c5 fa 7f 44 24 18}
004ah movzx eax,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c0}
004eh mov [rsp+28h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 28}
0052h movzx eax,r9w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c1}
0056h mov [rsp+2ch],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 2c}
005ah mov rdi,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b fb}
005dh lea rsi,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 74 24 18}
0062h call 7ff827265e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 fc bf 5e}
0067h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
0069h movsq                                   ; MOVSQ || REX.W A5 || encoded[2]{48 a5}
006bh mov rax,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c3}
006eh add rsp,30h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 30}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0074h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0075h ret                                     ; RET || C3 || encoded[1]{c3}
