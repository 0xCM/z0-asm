; Span<ushort> div<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; div_g16u[7ff7c71abb20h, 7ff7c71abb6eh][78] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 27 48 63 c6 49 8d 3c 43 41 0f b7 14 42 41 0f b7 1c 40 0f b7 c2 0f b7 c0 99 f7 fb 0f b7 c0 66 89 07 ff c6 41 3b f1 7c d9 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_ZEDx3
; 2020-01-25 02:10:59:127
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
0017h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movzx edx,word ptr [r10+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 14 42}
0025h movzx ebx,word ptr [r8+rax*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 40}
002ah movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
002dh movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0030h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0031h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0033h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0036h mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
0039h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003bh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003eh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
0040h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004dh ret                                     ; RET || C3 || encoded[1]{c3}
