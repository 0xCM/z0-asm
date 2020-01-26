------------------------------------------------------------------------------------------------------------------------
; byte modmul<byte>(byte a, byte b, byte m)
; modmul_g8u[46] = {50 0f 1f 40 00 0f b6 c1 0f b6 d2 41 0f b6 c8 8b c0 8b d2 48 0f af c2 8b c9 33 d2 48 f7 f1 8b c2 89 44 24 04 0f b6 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c1}
0008h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
000bh movzx ecx,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{41 0f b6 c8}
000fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0011h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0013h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001bh div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
001eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0020h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0024h movzx eax,byte ptr [rsp+4]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{0f b6 44 24 04}
0029h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte modmul<sbyte>(sbyte a, sbyte b, sbyte m)
; modmul_g8i[52] = {50 0f 1f 40 00 48 0f be c1 48 0f be d2 49 0f be c8 48 63 c0 48 63 d2 48 0f af c2 48 63 c9 48 99 48 f7 f9 8b c2 89 44 24 04 48 0f be 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsx rax,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c1}
0009h movsx rdx,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be d2}
000dh movsx rcx,r8b                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{49 0f be c8}
0011h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0014h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0017h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
001bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0029h movsx rax,byte ptr [rsp+4]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[6]{48 0f be 44 24 04}
002fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort modmul<ushort>(ushort a, ushort b, ushort m)
; modmul_g16u[46] = {50 0f 1f 40 00 0f b7 c1 0f b7 d2 41 0f b7 c8 8b c0 8b d2 48 0f af c2 8b c9 33 d2 48 f7 f1 8b c2 89 44 24 04 0f b7 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_ZEDx3
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movzx eax,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c1}
0008h movzx edx,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 d2}
000bh movzx ecx,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{41 0f b7 c8}
000fh mov eax,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c0}
0011h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0013h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
0017h mov ecx,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c9}
0019h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
001bh div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
001eh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0020h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0024h movzx eax,word ptr [rsp+4]              ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{0f b7 44 24 04}
0029h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Int16 modmul<Int16>(Int16 a, Int16 b, Int16 m)
; modmul_g16i[52] = {50 0f 1f 40 00 48 0f bf c1 48 0f bf d2 49 0f bf c8 48 63 c0 48 63 d2 48 0f af c2 48 63 c9 48 99 48 f7 f9 8b c2 89 44 24 04 48 0f bf 44 24 04 48 83 c4 08 c3}
; Capture completion code = RET_SBB
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h movsx rax,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c1}
0009h movsx rdx,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf d2}
000dh movsx rcx,r8w                           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{49 0f bf c8}
0011h movsxd rax,eax                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c0}
0014h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
0017h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
001bh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
001eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0020h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0023h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0025h mov [rsp+4],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 04}
0029h movsx rax,word ptr [rsp+4]              ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[6]{48 0f bf 44 24 04}
002fh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0033h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint modmul<uint>(uint a, uint b, uint m)
; modmul_g32u[24] = {0f 1f 44 00 00 8b c1 8b d2 48 0f af c2 41 8b c8 33 d2 48 f7 f1 8b c2 c3}
; Capture completion code = RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,ecx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c1}
0007h mov edx,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d2}
0009h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000dh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
0010h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0012h div rcx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f1}
0015h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int modmul<int>(int a, int b, int m)
; modmul_g32i[26] = {0f 1f 44 00 00 48 63 c1 48 63 d2 48 0f af c2 49 63 c8 48 99 48 f7 f9 8b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h movsxd rax,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c1}
0008h movsxd rdx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d2}
000bh imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000fh movsxd rcx,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c8}
0012h cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0014h idiv rcx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 f9}
0017h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong modmul<ulong>(ulong a, ulong b, ulong m)
; modmul_g64u[21] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 33 d2 49 f7 f0 48 8b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
000eh div r8                                  ; DIV r/m64 || REX.W F7 /6 || encoded[3]{49 f7 f0}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long modmul<long>(long a, long b, long m)
; modmul_g64i[21] = {0f 1f 44 00 00 48 8b c1 48 0f af c2 48 99 49 f7 f8 48 8b c2 c3}
; Capture completion code = RET_ZEDx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0008h imul rax,rdx                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af c2}
000ch cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
000eh idiv r8                                 ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{49 f7 f8}
0011h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
