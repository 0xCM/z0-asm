; Span<byte> mod<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; mod_g8u[7ff7c71ac5a0h, 7ff7c71ac5f0h][80] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 29 48 63 fe 49 03 fb 48 63 c6 41 0f b6 04 02 48 63 d6 41 0f b6 1c 10 0f b6 c0 33 d2 f7 f3 0f b6 c2 88 07 ff c6 41 3b f1 7c d7 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-25 02:10:59:146
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
0017h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movzx eax,byte ptr [r10+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movzx ebx,byte ptr [r8+rdx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 10}
002fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0032h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0034h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0036h movzx eax,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c2}
0039h mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
003bh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003dh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0040h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0042h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
