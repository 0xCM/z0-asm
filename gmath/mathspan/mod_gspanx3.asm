------------------------------------------------------------------------------------------------------------------------
; Span<byte> mod<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst)
; mod_g8u[80] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 29 48 63 fe 49 03 fb 48 63 c6 41 0f b6 04 02 48 63 d6 41 0f b6 1c 10 0f b6 c0 33 d2 f7 f3 0f b6 c2 88 07 ff c6 41 3b f1 7c d7 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_SBB
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
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> mod<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst)
; mod_g8i[81] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2a 48 63 fe 49 03 fb 48 63 c6 49 0f be 04 02 48 63 d6 49 0f be 1c 10 48 0f be c0 99 f7 fb 48 0f be c2 88 07 ff c6 41 3b f1 7c d6 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_ZEDx3
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
0017h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movsx rax,byte ptr [r10+rax]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movsx rbx,byte ptr [r8+rdx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 10}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0034h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0036h movsx rax,dl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c2}
003ah mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
003ch inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003eh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0041h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0043h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> mod<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst)
; mod_g16u[82] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2b 48 63 c6 49 8d 3c 43 48 63 c6 41 0f b7 04 42 48 63 d6 41 0f b7 1c 50 0f b7 c0 33 d2 f7 f3 0f b7 c2 66 89 07 ff c6 41 3b f1 7c d5 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_ZEDx3
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
0017h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movzx eax,word ptr [r10+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movzx ebx,word ptr [r8+rdx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 50}
0030h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0033h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0035h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0037h movzx eax,dx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c2}
003ah mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003dh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
003fh cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0042h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0044h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<Int16> mod<Int16>(ReadOnlySpan<Int16> l, ReadOnlySpan<Int16> r, Span<Int16> dst)
; mod_g16i[83] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 2c 48 63 c6 49 8d 3c 43 48 63 c6 49 0f bf 04 42 48 63 d6 49 0f bf 1c 50 48 0f bf c0 99 f7 fb 48 0f bf c2 66 89 07 ff c6 41 3b f1 7c d4 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_ZED_SBB
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
0017h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movsx rax,word ptr [r10+rax*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movsx rbx,word ptr [r8+rdx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 50}
0030h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0034h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0035h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0037h movsx rax,dx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c2}
003bh mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003eh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0040h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0043h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0045h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> mod<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst)
; mod_g32u[69] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1e 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 33 d2 f7 f3 89 17 ff c6 41 3b f1 7c e2 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_ZEDx3
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
0017h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002ch div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
002eh mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
0030h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0032h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0035h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0037h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> mod<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst)
; mod_g32i[68] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 1d 48 63 c6 49 8d 3c 83 41 8b 14 82 41 8b 1c 80 8b c2 99 f7 fb 89 17 ff c6 41 3b f1 7c e3 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_SBB
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
0017h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h mov edx,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 14 82}
0024h mov ebx,[r8+rax*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 80}
0028h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
002ah cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002bh idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
002dh mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
002fh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0031h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0034h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0036h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0039h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0041h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0042h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> mod<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst)
; mod_g64u[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 33 d2 48 f7 f3 48 89 17 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_SBB
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
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
002dh div rbx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f3}
0030h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> mod<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst)
; mod_g64i[72] = {57 56 53 66 90 4c 8b 12 4d 8b 00 4d 8b 19 45 8b 49 08 33 f6 45 85 c9 7e 21 48 63 c6 49 8d 3c c3 49 8b 14 c2 49 8b 1c c0 48 8b c2 48 99 48 f7 fb 48 89 17 ff c6 41 3b f1 7c df 4c 89 19 44 89 49 08 48 8b c1 5b 5e 5f c3}
; Capture completion code = RET_SBB
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
0017h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h mov rdx,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 14 c2}
0024h mov rbx,[r8+rax*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c c0}
0028h mov rax,rdx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c2}
002bh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
002dh idiv rbx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 fb}
0030h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0033h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0035h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0038h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003ah mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
