; Span<byte> div<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; div_g8u[7ff7c7198c90h, 7ff7c7198cddh][77] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 26 48 63 c6 49 8d 3c 03 41 0f b6 14 02 41 0f b6 1c 00 0f b6 c2 0f b6 c0 99 f7 fb 0f b6 c0 88 07 ff c6 41 3b f1 7c da 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:39:559
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov r10,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 12}
0008h mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000bh mov r11,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 19}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor esi,esi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f6}
0014h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0017h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 03}
0020h movzx edx,byte ptr [r10+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 14 02}
0025h movzx ebx,byte ptr [r8+rax]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 00}
002ah movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
002dh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0030h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0031h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0033h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0036h mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
0038h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003ah cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003dh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003fh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
