------------------------------------------------------------------------------------------------------------------------
; bit vtestc<byte>(Vector512<byte> src)
; vtestc__g512x8u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<sbyte>(Vector512<sbyte> src)
; vtestc__g512x8i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 74 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqb ymm0,ymm0,ymm1                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ushort>(Vector512<ushort> src)
; vtestc__g512x16u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<Int16>(Vector512<Int16> src)
; vtestc__g512x16i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 75 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqw ymm0,ymm0,ymm1                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<uint>(Vector512<uint> src)
; vtestc__g512x32u[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<int>(Vector512<int> src)
; vtestc__g512x32i[158] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd 76 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqd ymm0,ymm0,ymm1                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c1}
0064h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0068h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006ch vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0071h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0074h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0077h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0079h je short 008fh                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007bh vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0080h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0085h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0088h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008bh and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008dh jmp short 0091h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
008fh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0091h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0094h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<ulong>(Vector512<ulong> src)
; vtestc__g512x64u[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<long>(Vector512<long> src)
; vtestc__g512x64i[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c4 e2 7d 29 c1 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 17 ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 17 c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpcmpeqq ymm0,ymm0,ymm1                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c1}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vptest ymm1,ymm2                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vptest ymm1,ymm0                        ; VPTEST ymm1, ymm2/m256 || VEX.256.66.0F38.WIG 17 /r || encoded[5]{c4 e2 7d 17 c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<float>(Vector512<float> src)
; vtestc__g512x32f[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fc c2 c1 08 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 0e ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 0e c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vcmpeq_uqps ymm0,ymm0,ymm1              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c1 08}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vtestps ymm1,ymm2                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vtestps ymm1,ymm0                       ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bit vtestc<double>(Vector512<double> src)
; vtestc__g512x64f[159] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 48 8b f1 48 8d 7c 24 08 b9 20 00 00 00 33 c0 f3 ab 48 8b ce 48 8d 44 24 48 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 c5 fa 7f 40 20 c5 fa 7f 40 30 48 8d 54 24 08 c5 f8 57 c0 c5 fa 7f 02 c5 fa 7f 42 10 c5 fa 7f 42 20 c5 fa 7f 42 30 c5 fd 10 00 c5 fd 10 0a c5 fd c2 c1 08 c5 fd 10 09 c5 fc 28 d0 c4 e2 7d 0f ca 0f 92 c0 0f b6 c0 85 c0 74 14 c5 fd 10 49 20 c4 e2 7d 0f c8 0f 92 c2 0f b6 d2 23 c2 eb 02 33 c0 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3}
; Capture completion code = RET_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000fh lea rdi,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 7c 24 08}
0014h mov ecx,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 20 00 00 00}
0019h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
001bh rep stosd                               ; STOSD || o32 AB || encoded[2]{f3 ab}
001dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0020h lea rax,[rsp+48h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 48}
0025h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0029h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
002dh vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0032h vmovdqu xmmword ptr [rax+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 20}
0037h vmovdqu xmmword ptr [rax+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 30}
003ch lea rdx,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 08}
0041h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0045h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
0049h vmovdqu xmmword ptr [rdx+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 10}
004eh vmovdqu xmmword ptr [rdx+20h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 20}
0053h vmovdqu xmmword ptr [rdx+30h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 42 30}
0058h vmovupd ymm0,[rax]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 00}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vcmpeq_uqpd ymm0,ymm0,ymm1              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c1 08}
0065h vmovupd ymm1,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 09}
0069h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
006dh vtestpd ymm1,ymm2                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f ca}
0072h setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0075h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0078h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
007ah je short 0090h                          ; JE rel8 || 74 cb || encoded[2]{74 14}
007ch vmovupd ymm1,[rcx+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 49 20}
0081h vtestpd ymm1,ymm0                       ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f c8}
0086h setb dl                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c2}
0089h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
008ch and eax,edx                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 c2}
008eh jmp short 0092h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0090h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0092h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0095h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
009ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
009dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
009eh ret                                     ; RET || C3 || encoded[1]{c3}
