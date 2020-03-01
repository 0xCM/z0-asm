------------------------------------------------------------------------------------------------------------------------
; Span<byte> add<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?add#add_g[8u](uspan8u,uspan8u,span8u)
; add_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x03,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> add<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?add#add_g[8i](uspan8i,uspan8i,span8i)
; add_g[8i](uspan8i,uspan8i,span8i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x03,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> add<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?add#add_g[16u](uspan16u,uspan16u,span16u)
; add_g[16u](uspan16u,uspan16u,span16u)[80] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x29,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x03,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd7,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> add<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?add#add_g[16i](uspan16i,uspan16i,span16i)
; add_g[16i](uspan16i,uspan16i,span16i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x03,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> add<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?add#add_g[32u](uspan32u,uspan32u,span32u)
; add_g[32u](uspan32u,uspan32u,span32u)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x03,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> add<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?add#add_g[32i](uspan32i,uspan32i,span32i)
; add_g[32i](uspan32i,uspan32i,span32i)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x03,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh add esi,edi                             ; ADD r32, r/m32 || o32 03 /r || encoded[2]{03 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> add<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?add#add_g[64u](uspan64u,uspan64u,span64u)
; add_g[64u](uspan64u,uspan64u,span64u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x03,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> add<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?add#add_g[64i](uspan64i,uspan64i,span64i)
; add_g[64i](uspan64i,uspan64i,span64i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x03,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh add rsi,rdi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sub<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?sub#sub_g[8u](uspan8u,uspan8u,span8u)
; sub_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x2b,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sub<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?sub#sub_g[8i](uspan8i,uspan8i,span8i)
; sub_g[8i](uspan8i,uspan8i,span8i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x2b,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sub<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?sub#sub_g[16u](uspan16u,uspan16u,span16u)
; sub_g[16u](uspan16u,uspan16u,span16u)[80] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x29,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x2b,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd7,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sub<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?sub#sub_g[16i](uspan16i,uspan16i,span16i)
; sub_g[16i](uspan16i,uspan16i,span16i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x2b,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sub<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?sub#sub_g[32u](uspan32u,uspan32u,span32u)
; sub_g[32u](uspan32u,uspan32u,span32u)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x2b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sub<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?sub#sub_g[32i](uspan32i,uspan32i,span32i)
; sub_g[32i](uspan32i,uspan32i,span32i)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x2b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh sub esi,edi                             ; SUB r32, r/m32 || o32 2B /r || encoded[2]{2b f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sub<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?sub#sub_g[64u](uspan64u,uspan64u,span64u)
; sub_g[64u](uspan64u,uspan64u,span64u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x2b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh sub rsi,rdi                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sub<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?sub#sub_g[64i](uspan64i,uspan64i,span64i)
; sub_g[64i](uspan64i,uspan64i,span64i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x2b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh sub rsi,rdi                             ; SUB r64, r/m64 || REX.W 2B /r || encoded[3]{48 2b f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> mul<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?mul#mul_g[8u](uspan8u,uspan8u,span8u)
; mul_g[8u](uspan8u,uspan8u,span8u)[83] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2c,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x0f,0xaf,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd4,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0037h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003bh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> mul<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?mul#mul_g[8i](uspan8i,uspan8i,span8i)
; mul_g[8i](uspan8i,uspan8i,span8i)[83] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2c,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x0f,0xaf,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd4,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0037h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003bh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> mul<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?mul#mul_g[16u](uspan16u,uspan16u,span16u)
; mul_g[16u](uspan16u,uspan16u,span16u)[81] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2a,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0f,0xaf,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd6,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0035h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0038h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> mul<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?mul#mul_g[16i](uspan16i,uspan16i,span16i)
; mul_g[16i](uspan16i,uspan16i,span16i)[85] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2e,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x0f,0xaf,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd2,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0038h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003ch mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> mul<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?mul#mul_g[32u](uspan32u,uspan32u,span32u)
; mul_g[32u](uspan32u,uspan32u,span32u)[72] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x21,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0f,0xaf,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdf,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0030h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0033h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0036h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0039h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> mul<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?mul#mul_g[32i](uspan32i,uspan32i,span32i)
; mul_g[32i](uspan32i,uspan32i,span32i)[72] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x21,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0f,0xaf,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdf,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh imul esi,edi                            ; IMUL r32, r/m32 || o32 0F AF /r || encoded[3]{0f af f7}
0030h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0033h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0036h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0039h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c df}
003bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> mul<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?mul#mul_g[64u](uspan64u,uspan64u,span64u)
; mul_g[64u](uspan64u,uspan64u,span64u)[75] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x24,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0f,0xaf,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh imul rsi,rdi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f7}
0033h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0036h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0039h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0041h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> mul<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?mul#mul_g[64i](uspan64i,uspan64i,span64i)
; mul_g[64i](uspan64i,uspan64i,span64i)[75] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x24,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0f,0xaf,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh imul rsi,rdi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f7}
0033h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0036h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0039h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0041h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> div<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?div#div_g[8u](uspan8u,uspan8u,span8u)
; div_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2b,0x48,0x63,0xfe,0x49,0x03,0xfb,0x48,0x63,0xc6,0x41,0x0f,0xb6,0x04,0x02,0x48,0x63,0xd6,0x41,0x0f,0xb6,0x1c,0x10,0x0f,0xb6,0xc0,0x0f,0xb6,0xc0,0x99,0xf7,0xfb,0x0f,0xb6,0xc0,0x88,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd5,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movzx eax,byte ptr [r10+rax]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movzx ebx,byte ptr [r8+rdx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 10}
002fh movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0032h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0035h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0036h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0038h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
003bh mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
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
; Span<sbyte> div<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?div#div_g[8i](uspan8i,uspan8i,span8i)
; div_g[8i](uspan8i,uspan8i,span8i)[85] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2e,0x48,0x63,0xfe,0x49,0x03,0xfb,0x48,0x63,0xc6,0x49,0x0f,0xbe,0x04,0x02,0x48,0x63,0xd6,0x49,0x0f,0xbe,0x1c,0x10,0x48,0x0f,0xbe,0xc0,0x48,0x0f,0xbe,0xc0,0x99,0xf7,0xfb,0x48,0x0f,0xbe,0xc0,0x88,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd2,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
0017h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
0019h movsxd rdi,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 fe}
001ch add rdi,r11                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 fb}
001fh movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0022h movsx rax,byte ptr [r10+rax]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 04 02}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah movsx rbx,byte ptr [r8+rdx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 10}
002fh movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0033h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0037h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0038h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
003ah movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
003eh mov [rdi],al                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 07}
0040h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0042h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0045h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0047h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> div<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?div#div_g[16u](uspan16u,uspan16u,span16u)
; div_g[16u](uspan16u,uspan16u,span16u)[84] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2d,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x43,0x48,0x63,0xc6,0x41,0x0f,0xb7,0x04,0x42,0x48,0x63,0xd6,0x41,0x0f,0xb7,0x1c,0x50,0x0f,0xb7,0xc0,0x0f,0xb7,0xc0,0x99,0xf7,0xfb,0x0f,0xb7,0xc0,0x66,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd3,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
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
0017h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movzx eax,word ptr [r10+rax*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movzx ebx,word ptr [r8+rdx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 50}
0030h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0033h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0036h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0037h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0039h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
003ch mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
003fh inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0041h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0044h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0046h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> div<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?div#div_g[16i](uspan16i,uspan16i,span16i)
; div_g[16i](uspan16i,uspan16i,span16i)[87] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x30,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x43,0x48,0x63,0xc6,0x49,0x0f,0xbf,0x04,0x42,0x48,0x63,0xd6,0x49,0x0f,0xbf,0x1c,0x50,0x48,0x0f,0xbf,0xc0,0x48,0x0f,0xbf,0xc0,0x99,0xf7,0xfb,0x48,0x0f,0xbf,0xc0,0x66,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd0,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
0017h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 43}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h movsx rax,word ptr [r10+rax*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 04 42}
0028h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002bh movsx rbx,word ptr [r8+rdx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 50}
0030h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0034h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0038h cdq                                     ; CDQ || o32 99 || encoded[1]{99}
0039h idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
003bh movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
003fh mov [rdi],ax                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 07}
0042h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0044h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0047h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
0049h mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> div<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?div#div_g[32u](uspan32u,uspan32u,span32u)
; div_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x22,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x83,0x48,0x63,0xc6,0x41,0x8b,0x04,0x82,0x48,0x63,0xd6,0x41,0x8b,0x1c,0x90,0x33,0xd2,0xf7,0xf3,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xde,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
0017h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov eax,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 04 82}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov ebx,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 90}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0032h mov [rdi],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 07}
0034h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0036h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0039h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003bh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> div<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?div#div_g[32i](uspan32i,uspan32i,span32i)
; div_g[32i](uspan32i,uspan32i,span32i)[72] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x21,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x83,0x48,0x63,0xc6,0x41,0x8b,0x04,0x82,0x48,0x63,0xd6,0x41,0x8b,0x1c,0x90,0x99,0xf7,0xfb,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdf,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
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
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov eax,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 04 82}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov ebx,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 90}
002eh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002fh idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0031h mov [rdi],eax                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 07}
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
; Span<ulong> div<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?div#div_g[64u](uspan64u,uspan64u,span64u)
; div_g[64u](uspan64u,uspan64u,span64u)[75] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x24,0x48,0x63,0xc6,0x49,0x8d,0x3c,0xc3,0x48,0x63,0xc6,0x49,0x8b,0x04,0xc2,0x48,0x63,0xd6,0x49,0x8b,0x1c,0xd0,0x33,0xd2,0x48,0xf7,0xf3,0x48,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdc,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
0017h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov rax,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 04 c2}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov rbx,[r8+rdx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d0}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h div rbx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f3}
0033h mov [rdi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 07}
0036h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0038h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003bh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003dh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> div<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?div#div_g[64i](uspan64i,uspan64i,span64i)
; div_g[64i](uspan64i,uspan64i,span64i)[75] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x24,0x48,0x63,0xc6,0x49,0x8d,0x3c,0xc3,0x48,0x63,0xc6,0x49,0x8b,0x04,0xc2,0x48,0x63,0xd6,0x49,0x8b,0x1c,0xd0,0x48,0x99,0x48,0xf7,0xfb,0x48,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdc,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
0017h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov rax,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 04 c2}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov rbx,[r8+rdx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d0}
002eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0030h idiv rbx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 fb}
0033h mov [rdi],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 07}
0036h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0038h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003bh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003dh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> mod<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?mod#mod_g[8u](uspan8u,uspan8u,span8u)
; mod_g[8u](uspan8u,uspan8u,span8u)[80] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x29,0x48,0x63,0xfe,0x49,0x03,0xfb,0x48,0x63,0xc6,0x41,0x0f,0xb6,0x04,0x02,0x48,0x63,0xd6,0x41,0x0f,0xb6,0x1c,0x10,0x0f,0xb6,0xc0,0x33,0xd2,0xf7,0xf3,0x0f,0xb6,0xc2,0x88,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd7,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
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
; Span<sbyte> mod<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?mod#mod_g[8i](uspan8i,uspan8i,span8i)
; mod_g[8i](uspan8i,uspan8i,span8i)[81] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2a,0x48,0x63,0xfe,0x49,0x03,0xfb,0x48,0x63,0xc6,0x49,0x0f,0xbe,0x04,0x02,0x48,0x63,0xd6,0x49,0x0f,0xbe,0x1c,0x10,0x48,0x0f,0xbe,0xc0,0x99,0xf7,0xfb,0x48,0x0f,0xbe,0xc2,0x88,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd6,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
; Span<ushort> mod<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?mod#mod_g[16u](uspan16u,uspan16u,span16u)
; mod_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2b,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x43,0x48,0x63,0xc6,0x41,0x0f,0xb7,0x04,0x42,0x48,0x63,0xd6,0x41,0x0f,0xb7,0x1c,0x50,0x0f,0xb7,0xc0,0x33,0xd2,0xf7,0xf3,0x0f,0xb7,0xc2,0x66,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd5,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
; Span<short> mod<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?mod#mod_g[16i](uspan16i,uspan16i,span16i)
; mod_g[16i](uspan16i,uspan16i,span16i)[83] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x2c,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x43,0x48,0x63,0xc6,0x49,0x0f,0xbf,0x04,0x42,0x48,0x63,0xd6,0x49,0x0f,0xbf,0x1c,0x50,0x48,0x0f,0xbf,0xc0,0x99,0xf7,0xfb,0x48,0x0f,0xbf,0xc2,0x66,0x89,0x07,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xd4,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
; Span<uint> mod<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?mod#mod_g[32u](uspan32u,uspan32u,span32u)
; mod_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x22,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x83,0x48,0x63,0xc6,0x41,0x8b,0x04,0x82,0x48,0x63,0xd6,0x41,0x8b,0x1c,0x90,0x33,0xd2,0xf7,0xf3,0x89,0x17,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xde,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
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
0017h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov eax,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 04 82}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov ebx,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 90}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h div ebx                                 ; DIV r/m32 || o32 F7 /6 || encoded[2]{f7 f3}
0032h mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
0034h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0036h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
0039h jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003bh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
003eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0042h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0045h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> mod<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?mod#mod_g[32i](uspan32i,uspan32i,span32i)
; mod_g[32i](uspan32i,uspan32i,span32i)[72] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x21,0x48,0x63,0xc6,0x49,0x8d,0x3c,0x83,0x48,0x63,0xc6,0x41,0x8b,0x04,0x82,0x48,0x63,0xd6,0x41,0x8b,0x1c,0x90,0x99,0xf7,0xfb,0x89,0x17,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdf,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
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
001ch lea rdi,[r11+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c 83}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov eax,[r10+rax*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 04 82}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov ebx,[r8+rdx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 90}
002eh cdq                                     ; CDQ || o32 99 || encoded[1]{99}
002fh idiv ebx                                ; IDIV r/m32 || o32 F7 /7 || encoded[2]{f7 fb}
0031h mov [rdi],edx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 17}
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
; Span<ulong> mod<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?mod#mod_g[64u](uspan64u,uspan64u,span64u)
; mod_g[64u](uspan64u,uspan64u,span64u)[75] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x24,0x48,0x63,0xc6,0x49,0x8d,0x3c,0xc3,0x48,0x63,0xc6,0x49,0x8b,0x04,0xc2,0x48,0x63,0xd6,0x49,0x8b,0x1c,0xd0,0x33,0xd2,0x48,0xf7,0xf3,0x48,0x89,0x17,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdc,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
0017h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov rax,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 04 c2}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov rbx,[r8+rdx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d0}
002eh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0030h div rbx                                 ; DIV r/m64 || REX.W F7 /6 || encoded[3]{48 f7 f3}
0033h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0036h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0038h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003bh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003dh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> mod<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?mod#mod_g[64i](uspan64i,uspan64i,span64i)
; mod_g[64i](uspan64i,uspan64i,span64i)[75] = {0x57,0x56,0x53,0x66,0x90,0x4c,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x19,0x45,0x8b,0x49,0x08,0x33,0xf6,0x45,0x85,0xc9,0x7e,0x24,0x48,0x63,0xc6,0x49,0x8d,0x3c,0xc3,0x48,0x63,0xc6,0x49,0x8b,0x04,0xc2,0x48,0x63,0xd6,0x49,0x8b,0x1c,0xd0,0x48,0x99,0x48,0xf7,0xfb,0x48,0x89,0x17,0xff,0xc6,0x41,0x3b,0xf1,0x7c,0xdc,0x4c,0x89,0x19,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
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
0017h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0019h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
001ch lea rdi,[r11+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 3c c3}
0020h movsxd rax,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c6}
0023h mov rax,[r10+rax*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 04 c2}
0027h movsxd rdx,esi                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 d6}
002ah mov rbx,[r8+rdx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d0}
002eh cqo                                     ; CQO || REX.W 99 || encoded[2]{48 99}
0030h idiv rbx                                ; IDIV r/m64 || REX.W F7 /7 || encoded[3]{48 f7 fb}
0033h mov [rdi],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 17}
0036h inc esi                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c6}
0038h cmp esi,r9d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b f1}
003bh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c dc}
003dh mov [rcx],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 19}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> clamp<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?clamp#clamp_g[8u](uspan8u,uspan8u,span8u)
; clamp_g[8u](uspan8u,uspan8u,span8u)[88] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x31,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x7f,0x02,0xeb,0x02,0x8b,0xf7,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcf,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 31}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0038h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003ah jg short 003eh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
003ch jmp short 0040h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
003eh mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
0040h mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0043h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0046h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0049h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
004bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> clamp<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?clamp#clamp_g[8i](uspan8i,uspan8i,span8i)
; clamp_g[8i](uspan8i,uspan8i,span8i)[88] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x31,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x7f,0x02,0xeb,0x02,0x8b,0xf7,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcf,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 31}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0038h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003ah jg short 003eh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
003ch jmp short 0040h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
003eh mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
0040h mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0043h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0046h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0049h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cf}
004bh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004eh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0056h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> clamp<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?clamp#clamp_g[16u](uspan16u,uspan16u,span16u)
; clamp_g[16u](uspan16u,uspan16u,span16u)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0f,0xb7,0xf6,0x3b,0xf7,0x7f,0x02,0xeb,0x02,0x8b,0xf7,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h jg short 003bh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0039h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
003bh mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> clamp<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?clamp#clamp_g[16i](uspan16i,uspan16i,span16i)
; clamp_g[16i](uspan16i,uspan16i,span16i)[90] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x33,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x7f,0x02,0xeb,0x02,0x8b,0xf7,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh jg short 003fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
003dh jmp short 0041h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
003fh mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
0041h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cd}
004dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0050h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0058h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0059h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> clamp<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?clamp#clamp_g[32u](uspan32u,uspan32u,span32u)
; clamp_g[32u](uspan32u,uspan32u,span32u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x77,0x02,0xeb,0x02,0x8b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh ja short 0033h                          ; JA rel8 || 77 cb || encoded[2]{77 02}
0031h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0033h mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
0035h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> clamp<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?clamp#clamp_g[32i](uspan32i,uspan32i,span32i)
; clamp_g[32i](uspan32i,uspan32i,span32i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x7f,0x02,0xeb,0x02,0x8b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh jg short 0033h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0031h jmp short 0035h                         ; JMP rel8 || EB cb || encoded[2]{eb 02}
0033h mov esi,edi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f7}
0035h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> clamp<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?clamp#clamp_g[64u](uspan64u,uspan64u,span64u)
; clamp_g[64u](uspan64u,uspan64u,span64u)[81] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2a,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x77,0x02,0xeb,0x03,0x48,0x8b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd6,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h ja short 0036h                          ; JA rel8 || 77 cb || encoded[2]{77 02}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov rsi,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f7}
0039h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> clamp<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?clamp#clamp_g[64i](uspan64i,uspan64i,span64i)
; clamp_g[64i](uspan64i,uspan64i,span64i)[81] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2a,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x7f,0x02,0xeb,0x03,0x48,0x8b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd6,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2a}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h jg short 0036h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0034h jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb 03}
0036h mov rsi,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f7}
0039h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
003ch inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003fh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0042h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d6}
0044h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0047h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> negate<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?negate#negate_g[8u](uspan8u,span8u)
; negate_g[8u](uspan8u,span8u)[67] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x21,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x12,0x46,0x0f,0xb6,0x14,0x10,0x41,0xf7,0xd2,0x41,0xff,0xc2,0x45,0x0f,0xb6,0xd2,0x45,0x88,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xdf,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movzx r10d,byte ptr [rax+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0029h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
002dh mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> negate<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?negate#negate_g[8i](uspan8i,span8i)
; negate_g[8i](uspan8i,span8i)[64] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1e,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x12,0x4e,0x0f,0xbe,0x14,0x10,0x41,0xf7,0xda,0x4d,0x0f,0xbe,0xd2,0x45,0x88,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe2,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movsx r10,byte ptr [rax+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 10}
0023h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
0026h movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
002ah mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0033h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0035h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0038h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> negate<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?negate#negate_g[16u](uspan16u,span16u)
; negate_g[16u](uspan16u,span16u)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x52,0x46,0x0f,0xb7,0x14,0x50,0x41,0xf7,0xd2,0x41,0xff,0xc2,0x45,0x0f,0xb7,0xd2,0x66,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movzx r10d,word ptr [rax+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0029h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
002dh mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> negate<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?negate#negate_g[16i](uspan16i,span16i)
; negate_g[16i](uspan16i,span16i)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1f,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x52,0x4e,0x0f,0xbf,0x14,0x50,0x41,0xf7,0xda,0x4d,0x0f,0xbf,0xd2,0x66,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe1,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
0026h movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
002ah mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> negate<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?negate#negate_g[32u](uspan32u,span32u)
; negate_g[32u](uspan32u,span32u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x41,0xf7,0xd2,0x41,0xff,0xc2,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0028h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> negate<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?negate#negate_g[32i](uspan32i,span32i)
; negate_g[32i](uspan32i,span32i)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x41,0xf7,0xda,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h neg r10d                                ; NEG r/m32 || o32 F7 /3 || encoded[3]{41 f7 da}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> negate<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?negate#negate_g[64u](uspan64u,span64u)
; negate_g[64u](uspan64u,span64u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1f,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xf7,0xd3,0x49,0xff,0xc3,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe1,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
002bh mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> negate<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?negate#negate_g[64i](uspan64i,span64i)
; negate_g[64i](uspan64i,span64i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xf7,0xdb,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h neg r11                                 ; NEG r/m64 || REX.W F7 /3 || encoded[3]{49 f7 db}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> inc<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?inc#inc_g[8u](uspan8u,span8u)
; inc_g[8u](uspan8u,span8u)[66] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x20,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x46,0x0f,0xb6,0x1c,0x18,0x41,0xff,0xc3,0x45,0x0f,0xb6,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe0,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> inc<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?inc#inc_g[8i](uspan8i,span8i)
; inc_g[8i](uspan8i,span8i)[66] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x20,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x4e,0x0f,0xbe,0x1c,0x18,0x41,0xff,0xc3,0x4d,0x0f,0xbe,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe0,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movsx r11,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 18}
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> inc<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?inc#inc_g[16u](uspan16u,span16u)
; inc_g[16u](uspan16u,span16u)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x46,0x0f,0xb7,0x1c,0x58,0x41,0xff,0xc3,0x45,0x0f,0xb7,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> inc<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?inc#inc_g[16i](uspan16i,span16i)
; inc_g[16i](uspan16i,span16i)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x4e,0x0f,0xbf,0x1c,0x58,0x41,0xff,0xc3,0x4d,0x0f,0xbf,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0029h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> inc<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?inc#inc_g[32u](uspan32u,span32u)
; inc_g[32u](uspan32u,span32u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x92,0x4d,0x63,0xd9,0x46,0x8b,0x1c,0x98,0x41,0xff,0xc3,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> inc<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?inc#inc_g[32i](uspan32i,span32i)
; inc_g[32i](uspan32i,span32i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x92,0x4d,0x63,0xd9,0x46,0x8b,0x1c,0x98,0x41,0xff,0xc3,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> inc<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?inc#inc_g[64u](uspan64u,span64u)
; inc_g[64u](uspan64u,span64u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xff,0xc3,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> inc<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?inc#inc_g[64i](uspan64i,span64i)
; inc_g[64i](uspan64i,span64i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xff,0xc3,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h inc r11                                 ; INC r/m64 || REX.W FF /0 || encoded[3]{49 ff c3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> dec<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?dec#dec_g[8u](uspan8u,span8u)
; dec_g[8u](uspan8u,span8u)[66] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x20,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x46,0x0f,0xb6,0x1c,0x18,0x41,0xff,0xcb,0x45,0x0f,0xb6,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe0,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> dec<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?dec#dec_g[8i](uspan8i,span8i)
; dec_g[8i](uspan8i,span8i)[66] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x20,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x4e,0x0f,0xbe,0x1c,0x18,0x41,0xff,0xcb,0x4d,0x0f,0xbe,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe0,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0037h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movsx r11,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 18}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002ch mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
002fh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0032h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0035h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
0037h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ah mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> dec<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?dec#dec_g[16u](uspan16u,span16u)
; dec_g[16u](uspan16u,span16u)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x46,0x0f,0xb7,0x1c,0x58,0x41,0xff,0xcb,0x45,0x0f,0xb7,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> dec<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?dec#dec_g[16i](uspan16i,span16i)
; dec_g[16i](uspan16i,span16i)[68] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x4e,0x0f,0xbf,0x1c,0x58,0x41,0xff,0xcb,0x4d,0x0f,0xbf,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0029h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002dh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> dec<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?dec#dec_g[32u](uspan32u,span32u)
; dec_g[32u](uspan32u,span32u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x92,0x4d,0x63,0xd9,0x46,0x8b,0x1c,0x98,0x41,0xff,0xcb,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> dec<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?dec#dec_g[32i](uspan32i,span32i)
; dec_g[32i](uspan32i,span32i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x92,0x4d,0x63,0xd9,0x46,0x8b,0x1c,0x98,0x41,0xff,0xcb,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h dec r11d                                ; DEC r/m32 || o32 FF /1 || encoded[3]{41 ff cb}
0028h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> dec<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?dec#dec_g[64u](uspan64u,span64u)
; dec_g[64u](uspan64u,span64u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xff,0xcb,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> dec<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?dec#dec_g[64i](uspan64i,span64i)
; dec_g[64i](uspan64i,span64i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xff,0xcb,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h dec r11                                 ; DEC r/m64 || REX.W FF /1 || encoded[3]{49 ff cb}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> square<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?square#square_g[8u](uspan8u,span8u)
; square_g[8u](uspan8u,span8u)[67] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x21,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x46,0x0f,0xb6,0x1c,0x18,0x45,0x0f,0xaf,0xdb,0x45,0x0f,0xb6,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xdf,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
0029h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002dh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> square<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?square#square_g[8i](uspan8i,span8i)
; square_g[8i](uspan8i,span8i)[67] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x21,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x4e,0x0f,0xbe,0x1c,0x18,0x45,0x0f,0xaf,0xdb,0x4d,0x0f,0xbe,0xdb,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xdf,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movsx r11,byte ptr [rax+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 18}
0025h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
0029h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002dh mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0030h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0033h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0036h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c df}
0038h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003bh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0042h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> square<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?square#square_g[16u](uspan16u,span16u)
; square_g[16u](uspan16u,span16u)[69] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x23,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x46,0x0f,0xb7,0x1c,0x58,0x45,0x0f,0xaf,0xdb,0x45,0x0f,0xb7,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xdd,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
002ah movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002eh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0032h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0035h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0038h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003ah mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003dh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> square<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?square#square_g[16i](uspan16i,span16i)
; square_g[16i](uspan16i,span16i)[69] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x23,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x4e,0x0f,0xbf,0x1c,0x58,0x45,0x0f,0xaf,0xdb,0x4d,0x0f,0xbf,0xdb,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xdd,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movsx r11,word ptr [rax+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 58}
0026h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
002ah movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002eh mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
0032h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0035h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0038h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003ah mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003dh mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> square<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?square#square_g[32u](uspan32u,span32u)
; square_g[32u](uspan32u,span32u)[60] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1a,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x45,0x0f,0xaf,0xd2,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe6,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0031h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h imul r10d,r10d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d2}
0026h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0029h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002ch cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002fh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0031h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0034h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> square<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?square#square_g[32i](uspan32i,span32i)
; square_g[32i](uspan32i,span32i)[60] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1a,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x45,0x0f,0xaf,0xd2,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe6,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0031h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h imul r10d,r10d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d2}
0026h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0029h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002ch cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002fh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0031h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0034h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0038h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> square<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?square#square_g[64u](uspan64u,span64u)
; square_g[64u](uspan64u,span64u)[63] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1d,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x4d,0x0f,0xaf,0xdb,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe3,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0034h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h imul r11,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af db}
0029h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002fh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0032h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> square<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?square#square_g[64i](uspan64i,span64i)
; square_g[64i](uspan64i,span64i)[63] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1d,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x4d,0x0f,0xaf,0xdb,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe3,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0034h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h imul r11,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af db}
0029h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002fh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0032h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0034h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0037h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> abs<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?abs#abs_g[8u](uspan8u,span8u)
; abs_g[8u](uspan8u,span8u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4c,0x03,0xd2,0x4d,0x63,0xd9,0x46,0x0f,0xb6,0x1c,0x18,0x45,0x88,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah add r10,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 d2}
001dh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0020h movzx r11d,byte ptr [rax+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 18}
0025h mov [r10],r11b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> abs<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?abs#abs_g[8i](uspan8i,span8i)
; abs_g[8i](uspan8i,span8i)[74] = {0x56,0x0f,0x1f,0x40,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x27,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x12,0x4e,0x0f,0xbe,0x14,0x10,0x41,0x8b,0xf2,0xc1,0xfe,0x07,0x44,0x03,0xd6,0x44,0x33,0xd6,0x4d,0x0f,0xbe,0xd2,0x45,0x88,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xd9,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movsx r10,byte ptr [rax+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 10}
0023h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0026h sar esi,7                               ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 07}
0029h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002ch xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002fh movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
0033h mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
0036h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0039h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003ch jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c d9}
003eh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0041h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0045h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0048h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> abs<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?abs#abs_g[16u](uspan16u,span16u)
; abs_g[16u](uspan16u,span16u)[61] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1b,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x52,0x4d,0x63,0xd9,0x46,0x0f,0xb7,0x1c,0x58,0x66,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe5,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 52}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h movzx r11d,word ptr [rax+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 58}
0026h mov [r10],r11w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 1a}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0030h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0032h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0035h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0039h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> abs<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?abs#abs_g[16i](uspan16i,span16i)
; abs_g[16i](uspan16i,span16i)[75] = {0x56,0x0f,0x1f,0x40,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x28,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x52,0x4e,0x0f,0xbf,0x14,0x50,0x41,0x8b,0xf2,0xc1,0xfe,0x0f,0x44,0x03,0xd6,0x44,0x33,0xd6,0x4d,0x0f,0xbf,0xd2,0x66,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xd8,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5e,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0026h sar esi,0fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 0f}
0029h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002ch xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002fh movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0033h mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
0037h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003ah cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
003fh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0042h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> abs<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?abs#abs_g[32u](uspan32u,span32u)
; abs_g[32u](uspan32u,span32u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0x92,0x4d,0x63,0xd9,0x46,0x8b,0x1c,0x98,0x45,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 92}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11d,[rax+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 98}
0025h mov [r10],r11d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> abs<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?abs#abs_g[32i](uspan32i,span32i)
; abs_g[32i](uspan32i,span32i)[69] = {0x56,0x0f,0x1f,0x40,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x22,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x41,0x8b,0xf2,0xc1,0xfe,0x1f,0x44,0x03,0xd6,0x44,0x33,0xd6,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xde,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0039h                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h mov esi,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f2}
0025h sar esi,1fh                             ; SAR r/m32, imm8 || o32 C1 /7 ib || encoded[3]{c1 fe 1f}
0028h add r10d,esi                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{44 03 d6}
002bh xor r10d,esi                            ; XOR r32, r/m32 || o32 33 /r || encoded[3]{44 33 d6}
002eh mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0031h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0034h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0037h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c de}
0039h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
003ch mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0040h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0043h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> abs<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?abs#abs_g[64u](uspan64u,span64u)
; abs_g[64u](uspan64u,span64u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> abs<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?abs#abs_g[64i](uspan64i,span64i)
; abs_g[64i](uspan64i,span64i)[73] = {0x56,0x0f,0x1f,0x40,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x26,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0x8b,0xf3,0x48,0xc1,0xfe,0x3f,0x4c,0x03,0xde,0x4c,0x33,0xde,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xda,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5e,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h mov rsi,r11                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b f3}
0028h sar rsi,3fh                             ; SAR r/m64, imm8 || REX.W C1 /7 ib || encoded[4]{48 c1 fe 3f}
002ch add r11,rsi                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4c 03 de}
002fh xor r11,rsi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{4c 33 de}
0032h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
0035h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0038h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
003bh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003dh mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0040h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[8u](uspan8u,uspan8u)
; eq_g[8u](uspan8u,uspan8u)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[8i](uspan8i,uspan8i)
; eq_g[8i](uspan8i,uspan8i)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[16u](uspan16u,uspan16u)
; eq_g[16u](uspan16u,uspan16u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[16i](uspan16i,uspan16i)
; eq_g[16i](uspan16i,uspan16i)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[32u](uspan32u,uspan32u)
; eq_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[32i](uspan32i,uspan32i)
; eq_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[64u](uspan64u,uspan64u)
; eq_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> eq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?eq#eq_g[64i](uspan64i,uspan64i)
; eq_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x94,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h sete sil                                ; SETE r/m8 || 0F 94 /r || encoded[4]{40 0f 94 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[8u](uspan8u,uspan8u)
; neq_g[8u](uspan8u,uspan8u)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[8i](uspan8i,uspan8i)
; neq_g[8i](uspan8i,uspan8i)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[16u](uspan16u,uspan16u)
; neq_g[16u](uspan16u,uspan16u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[16i](uspan16i,uspan16i)
; neq_g[16i](uspan16i,uspan16i)[91] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x34,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xcc,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 34}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0039h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
003bh setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
003fh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0043h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
004ch jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c cc}
004eh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0051h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0055h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[32u](uspan32u,uspan32u)
; neq_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[32i](uspan32i,uspan32i)
; neq_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[64u](uspan64u,uspan64u)
; neq_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> neq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?neq#neq_g[64i](uspan64i,uspan64i)
; neq_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x95,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setne sil                               ; SETNE r/m8 || 0F 95 /r || encoded[4]{40 0f 95 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[8u](uspan8u,uspan8u)
; lt_g[8u](uspan8u,uspan8u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x92,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setb sil                                ; SETB r/m8 || 0F 92 /r || encoded[4]{40 0f 92 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[8i](uspan8i,uspan8i)
; lt_g[8i](uspan8i,uspan8i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x9c,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[16u](uspan16u,uspan16u)
; lt_g[16u](uspan16u,uspan16u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x92,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0034h setb sil                                ; SETB r/m8 || 0F 92 /r || encoded[4]{40 0f 92 c6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[16i](uspan16i,uspan16i)
; lt_g[16i](uspan16i,uspan16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x9c,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[32u](uspan32u,uspan32u)
; lt_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x92,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setb sil                                ; SETB r/m8 || 0F 92 /r || encoded[4]{40 0f 92 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[32i](uspan32i,uspan32i)
; lt_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x9c,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[64u](uspan64u,uspan64u)
; lt_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x92,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setb sil                                ; SETB r/m8 || 0F 92 /r || encoded[4]{40 0f 92 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lt<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?lt#lt_g[64i](uspan64i,uspan64i)
; lt_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x9c,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setl sil                                ; SETL r/m8 || 0F 9C /r || encoded[4]{40 0f 9c c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[8u](uspan8u,uspan8u)
; lteq_g[8u](uspan8u,uspan8u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x96,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setbe sil                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{40 0f 96 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[8i](uspan8i,uspan8i)
; lteq_g[8i](uspan8i,uspan8i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x9e,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[16u](uspan16u,uspan16u)
; lteq_g[16u](uspan16u,uspan16u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x96,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0034h setbe sil                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{40 0f 96 c6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[16i](uspan16i,uspan16i)
; lteq_g[16i](uspan16i,uspan16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x9e,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[32u](uspan32u,uspan32u)
; lteq_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x96,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setbe sil                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{40 0f 96 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[32i](uspan32i,uspan32i)
; lteq_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x9e,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[64u](uspan64u,uspan64u)
; lteq_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x96,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setbe sil                               ; SETBE r/m8 || 0F 96 /r || encoded[4]{40 0f 96 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> lteq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?lteq#lteq_g[64i](uspan64i,uspan64i)
; lteq_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x9e,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setle sil                               ; SETLE r/m8 || 0F 9E /r || encoded[4]{40 0f 9e c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[8u](uspan8u,uspan8u)
; gt_g[8u](uspan8u,uspan8u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x97,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h seta sil                                ; SETA r/m8 || 0F 97 /r || encoded[4]{40 0f 97 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[8i](uspan8i,uspan8i)
; gt_g[8i](uspan8i,uspan8i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x9f,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[16u](uspan16u,uspan16u)
; gt_g[16u](uspan16u,uspan16u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x97,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0034h seta sil                                ; SETA r/m8 || 0F 97 /r || encoded[4]{40 0f 97 c6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[16i](uspan16i,uspan16i)
; gt_g[16i](uspan16i,uspan16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x9f,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[32u](uspan32u,uspan32u)
; gt_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x97,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh seta sil                                ; SETA r/m8 || 0F 97 /r || encoded[4]{40 0f 97 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[32i](uspan32i,uspan32i)
; gt_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x9f,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[64u](uspan64u,uspan64u)
; gt_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x97,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h seta sil                                ; SETA r/m8 || 0F 97 /r || encoded[4]{40 0f 97 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gt<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?gt#gt_g[64i](uspan64i,uspan64i)
; gt_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x9f,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setg sil                                ; SETG r/m8 || 0F 9F /r || encoded[4]{40 0f 9f c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[8u](uspan8u,uspan8u)
; gteq_g[8u](uspan8u,uspan8u)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x3b,0xf7,0x40,0x0f,0x93,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0031h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setae sil                               ; SETAE r/m8 || 0F 93 /r || encoded[4]{40 0f 93 c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[8i](uspan8i,uspan8i)
; gteq_g[8i](uspan8i,uspan8i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x3b,0xf7,0x40,0x0f,0x9d,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0031h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[16u](uspan16u,uspan16u)
; gteq_g[16u](uspan16u,uspan16u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x3b,0xf7,0x40,0x0f,0x93,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0034h setae sil                               ; SETAE r/m8 || 0F 93 /r || encoded[4]{40 0f 93 c6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[16i](uspan16i,uspan16i)
; gteq_g[16i](uspan16i,uspan16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x3b,0xf7,0x40,0x0f,0x9d,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
0037h setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
003bh movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[32u](uspan32u,uspan32u)
; gteq_g[32u](uspan32u,uspan32u)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x93,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setae sil                               ; SETAE r/m8 || 0F 93 /r || encoded[4]{40 0f 93 c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[32i](uspan32i,uspan32i)
; gteq_g[32i](uspan32i,uspan32i)[79] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x28,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x3b,0xf7,0x40,0x0f,0x9d,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd8,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh cmp esi,edi                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b f7}
002fh setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
0033h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0037h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003ah inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003dh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0045h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0049h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[64u](uspan64u,uspan64u)
; gteq_g[64u](uspan64u,uspan64u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x93,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setae sil                               ; SETAE r/m8 || 0F 93 /r || encoded[4]{40 0f 93 c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<bit> gteq<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<bit> dst), hex://gmath.svc/mathspan?gteq#gteq_g[64i](uspan64i,uspan64i)
; gteq_g[64i](uspan64i,uspan64i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x3b,0xf7,0x40,0x0f,0x9d,0xc6,0x40,0x0f,0xb6,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh cmp rsi,rdi                             ; CMP r64, r/m64 || REX.W 3B /r || encoded[3]{48 3b f7}
0032h setge sil                               ; SETGE r/m8 || 0F 9D /r || encoded[4]{40 0f 9d c6}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> and<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?and#and_g[8u](uspan8u,uspan8u,span8u)
; and_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x23,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> and<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?and#and_g[8i](uspan8i,uspan8i,span8i)
; and_g[8i](uspan8i,uspan8i,span8i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x23,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> and<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?and#and_g[16u](uspan16u,uspan16u,span16u)
; and_g[16u](uspan16u,uspan16u,span16u)[80] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x29,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x23,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd7,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> and<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?and#and_g[16i](uspan16i,uspan16i,span16i)
; and_g[16i](uspan16i,uspan16i,span16i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x23,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> and<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?and#and_g[32u](uspan32u,uspan32u,span32u)
; and_g[32u](uspan32u,uspan32u,span32u)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x23,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> and<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?and#and_g[32i](uspan32i,uspan32i,span32i)
; and_g[32i](uspan32i,uspan32i,span32i)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x23,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> and<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?and#and_g[64u](uspan64u,uspan64u,span64u)
; and_g[64u](uspan64u,uspan64u,span64u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x23,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh and rsi,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> and<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?and#and_g[64i](uspan64i,uspan64i,span64i)
; and_g[64i](uspan64i,uspan64i,span64i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x23,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh and rsi,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> or<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?or#or_g[8u](uspan8u,uspan8u,span8u)
; or_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x0b,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> or<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?or#or_g[8i](uspan8i,uspan8i,span8i)
; or_g[8i](uspan8i,uspan8i,span8i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x0b,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> or<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?or#or_g[16u](uspan16u,uspan16u,span16u)
; or_g[16u](uspan16u,uspan16u,span16u)[80] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x29,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0b,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd7,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> or<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?or#or_g[16i](uspan16i,uspan16i,span16i)
; or_g[16i](uspan16i,uspan16i,span16i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x0b,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> or<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?or#or_g[32u](uspan32u,uspan32u,span32u)
; or_g[32u](uspan32u,uspan32u,span32u)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> or<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?or#or_g[32i](uspan32i,uspan32i,span32i)
; or_g[32i](uspan32i,uspan32i,span32i)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> or<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?or#or_g[64u](uspan64u,uspan64u,span64u)
; or_g[64u](uspan64u,uspan64u,span64u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> or<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?or#or_g[64i](uspan64i,uspan64i,span64i)
; or_g[64i](uspan64i,uspan64i,span64i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte or<byte>(ReadOnlySpan<byte> src), hex://gmath.svc/mathspan?or#or_g[8u](uspan8u)
; or_g[8u](uspan8u)[49] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x1e,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x47,0x0f,0xb6,0x0c,0x11,0x0f,0xb6,0xc0,0x41,0x0b,0xc1,0x0f,0xb6,0xc0,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xe5,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh movzx r9d,byte ptr [r9+r10]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{47 0f b6 0c 11}
0020h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0023h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0026h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0029h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
002bh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002eh jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte or<sbyte>(ReadOnlySpan<sbyte> src), hex://gmath.svc/mathspan?or#or_g[8i](uspan8i)
; or_g[8i](uspan8i)[51] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x20,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x4f,0x0f,0xbe,0x0c,0x11,0x48,0x0f,0xbe,0xc0,0x41,0x0b,0xc1,0x48,0x0f,0xbe,0xc0,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xe3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh movsx r9,byte ptr [r9+r10]              ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4f 0f be 0c 11}
0020h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
0024h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0027h movsx rax,al                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c0}
002bh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
002dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0030h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort or<ushort>(ReadOnlySpan<ushort> src), hex://gmath.svc/mathspan?or#or_g[16u](uspan16u)
; or_g[16u](uspan16u)[49] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x1e,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x47,0x0f,0xb7,0x0c,0x51,0x0f,0xb7,0xc0,0x41,0x0b,0xc1,0x0f,0xb7,0xc0,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xe5,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh movzx r9d,word ptr [r9+r10*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{47 0f b7 0c 51}
0020h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0023h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0026h movzx eax,ax                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c0}
0029h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
002bh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
002eh jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0030h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short or<short>(ReadOnlySpan<short> src), hex://gmath.svc/mathspan?or#or_g[16i](uspan16i)
; or_g[16i](uspan16i)[51] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x20,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x4f,0x0f,0xbf,0x0c,0x51,0x48,0x0f,0xbf,0xc0,0x41,0x0b,0xc1,0x48,0x0f,0xbf,0xc0,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xe3,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh movsx r9,word ptr [r9+r10*2]            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4f 0f bf 0c 51}
0020h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
0024h or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0027h movsx rax,ax                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c0}
002bh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
002dh cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0030h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0032h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint or<uint>(ReadOnlySpan<uint> src), hex://gmath.svc/mathspan?or#or_g[32u](uspan32u)
; or_g[32u](uspan32u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x17,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x47,0x8b,0x0c,0x91,0x41,0x0b,0xc1,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xec,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh mov r9d,[r9+r10*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{47 8b 0c 91}
001fh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0022h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0024h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0027h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int or<int>(ReadOnlySpan<int> src), hex://gmath.svc/mathspan?or#or_g[32i](uspan32i)
; or_g[32i](uspan32i)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x17,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x47,0x8b,0x0c,0x91,0x41,0x0b,0xc1,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xec,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh mov r9d,[r9+r10*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{47 8b 0c 91}
001fh or eax,r9d                              ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b c1}
0022h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0024h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0027h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong or<ulong>(ReadOnlySpan<ulong> src), hex://gmath.svc/mathspan?or#or_g[64u](uspan64u)
; or_g[64u](uspan64u)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x17,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x4f,0x8b,0x0c,0xd1,0x49,0x0b,0xc1,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xec,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh mov r9,[r9+r10*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4f 8b 0c d1}
001fh or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
0022h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0024h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0027h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long or<long>(ReadOnlySpan<long> src), hex://gmath.svc/mathspan?or#or_g[64i](uspan64i)
; or_g[64i](uspan64i)[42] = {0x0f,0x1f,0x44,0x00,0x00,0x33,0xc0,0x33,0xd2,0x44,0x8b,0x41,0x08,0x45,0x85,0xc0,0x7e,0x17,0x48,0x8b,0x09,0x4c,0x8b,0xc9,0x4c,0x63,0xd2,0x4f,0x8b,0x0c,0xd1,0x49,0x0b,0xc1,0xff,0xc2,0x41,0x3b,0xd0,0x7c,0xec,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0007h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0009h mov r8d,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[4]{44 8b 41 08}
000dh test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0010h jle short 0029h                         ; JLE rel8 || 7E cb || encoded[2]{7e 17}
0012h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
0015h mov r9,rcx                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b c9}
0018h movsxd r10,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4c 63 d2}
001bh mov r9,[r9+r10*8]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4f 8b 0c d1}
001fh or rax,r9                               ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{49 0b c1}
0022h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0024h cmp edx,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{41 3b d0}
0027h jl short 0015h                          ; JL rel8 || 7C cb || encoded[2]{7c ec}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> xor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?xor#xor_g[8u](uspan8u,uspan8u,span8u)
; xor_g[8u](uspan8u,uspan8u,span8u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x33,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> xor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?xor#xor_g[8i](uspan8i,uspan8i,span8i)
; xor_g[8i](uspan8i,uspan8i,span8i)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x33,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ah mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> xor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?xor#xor_g[16u](uspan16u,uspan16u,span16u)
; xor_g[16u](uspan16u,uspan16u,span16u)[80] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x29,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x33,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd7,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0043h                         ; JLE rel8 || 7E cb || encoded[2]{7e 29}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0034h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0037h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003bh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003eh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0041h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d7}
0043h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0046h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> xor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?xor#xor_g[16i](uspan16i,uspan16i,span16i)
; xor_g[16i](uspan16i,uspan16i,span16i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x33,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0037h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003bh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> xor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?xor#xor_g[32u](uspan32u,uspan32u,span32u)
; xor_g[32u](uspan32u,uspan32u,span32u)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x33,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> xor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?xor#xor_g[32i](uspan32i,uspan32i,span32i)
; xor_g[32i](uspan32i,uspan32i,span32i)[71] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x20,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x33,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xe0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 20}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
002fh mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0032h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0035h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0038h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0041h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> xor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?xor#xor_g[64u](uspan64u,uspan64u,span64u)
; xor_g[64u](uspan64u,uspan64u,span64u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x33,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh xor rsi,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> xor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?xor#xor_g[64i](uspan64i,uspan64i,span64i)
; xor_g[64i](uspan64i,uspan64i,span64i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x33,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh xor rsi,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 f7}
0032h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nand<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?nand#nand_g[8u](uspan8u,uspan8u,span8u)
; nand_g[8u](uspan8u,uspan8u,span8u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x23,0xf7,0xf7,0xd6,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nand<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?nand#nand_g[8i](uspan8i,uspan8i,span8i)
; nand_g[8i](uspan8i,uspan8i,span8i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x23,0xf7,0xf7,0xd6,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nand<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?nand#nand_g[16u](uspan16u,uspan16u,span16u)
; nand_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x23,0xf7,0xf7,0xd6,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nand<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?nand#nand_g[16i](uspan16i,uspan16i,span16i)
; nand_g[16i](uspan16i,uspan16i,span16i)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x23,0xf7,0xf7,0xd6,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nand<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?nand#nand_g[32u](uspan32u,uspan32u,span32u)
; nand_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x23,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nand<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?nand#nand_g[32i](uspan32i,uspan32i,span32i)
; nand_g[32i](uspan32i,uspan32i,span32i)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x23,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh and esi,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nand<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?nand#nand_g[64u](uspan64u,uspan64u,span64u)
; nand_g[64u](uspan64u,uspan64u,span64u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x23,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh and rsi,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nand<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?nand#nand_g[64i](uspan64i,uspan64i,span64i)
; nand_g[64i](uspan64i,uspan64i,span64i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x23,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh and rsi,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?nor#nor_g[8u](uspan8u,uspan8u,span8u)
; nor_g[8u](uspan8u,uspan8u,span8u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x0b,0xf7,0xf7,0xd6,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?nor#nor_g[8i](uspan8i,uspan8i,span8i)
; nor_g[8i](uspan8i,uspan8i,span8i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x0b,0xf7,0xf7,0xd6,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?nor#nor_g[16u](uspan16u,uspan16u,span16u)
; nor_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x0b,0xf7,0xf7,0xd6,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?nor#nor_g[16i](uspan16i,uspan16i,span16i)
; nor_g[16i](uspan16i,uspan16i,span16i)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x0b,0xf7,0xf7,0xd6,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?nor#nor_g[32u](uspan32u,uspan32u,span32u)
; nor_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0b,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?nor#nor_g[32i](uspan32i,uspan32i,span32i)
; nor_g[32i](uspan32i,uspan32i,span32i)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x0b,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?nor#nor_g[64u](uspan64u,uspan64u,span64u)
; nor_g[64u](uspan64u,uspan64u,span64u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0b,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?nor#nor_g[64i](uspan64i,uspan64i,span64i)
; nor_g[64i](uspan64i,uspan64i,span64i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x0b,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> xnor<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?xnor#xnor_g[8u](uspan8u,uspan8u,span8u)
; xnor_g[8u](uspan8u,uspan8u,span8u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0x33,0xf7,0xf7,0xd6,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> xnor<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?xnor#xnor_g[8i](uspan8i,uspan8i,span8i)
; xnor_g[8i](uspan8i,uspan8i,span8i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0x33,0xf7,0xf7,0xd6,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0036h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> xnor<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?xnor#xnor_g[16u](uspan16u,uspan16u,span16u)
; xnor_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0x33,0xf7,0xf7,0xd6,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> xnor<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?xnor#xnor_g[16i](uspan16i,uspan16i,span16i)
; xnor_g[16i](uspan16i,uspan16i,span16i)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0x33,0xf7,0xf7,0xd6,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
0037h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> xnor<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?xnor#xnor_g[32u](uspan32u,uspan32u,span32u)
; xnor_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x33,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> xnor<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?xnor#xnor_g[32i](uspan32i,uspan32i,span32i)
; xnor_g[32i](uspan32i,uspan32i,span32i)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0x33,0xf7,0xf7,0xd6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh xor esi,edi                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 f7}
002fh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> xnor<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?xnor#xnor_g[64u](uspan64u,uspan64u,span64u)
; xnor_g[64u](uspan64u,uspan64u,span64u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x33,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh xor rsi,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> xnor<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?xnor#xnor_g[64i](uspan64i,uspan64i,span64i)
; xnor_g[64i](uspan64i,uspan64i,span64i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0x33,0xf7,0x48,0xf7,0xd6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh xor rsi,rdi                             ; XOR r64, r/m64 || REX.W 33 /r || encoded[3]{48 33 f7}
0032h not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> impl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?impl#impl_g[8u](uspan8u,uspan8u,span8u)
; impl_g[8u](uspan8u,uspan8u,span8u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0xf7,0xd7,0x0b,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> impl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?impl#impl_g[8i](uspan8i,uspan8i,span8i)
; impl_g[8i](uspan8i,uspan8i,span8i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0xf7,0xd7,0x0b,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> impl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?impl#impl_g[16u](uspan16u,uspan16u,span16u)
; impl_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0xf7,0xd7,0x0b,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> impl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?impl#impl_g[16i](uspan16i,uspan16i,span16i)
; impl_g[16i](uspan16i,uspan16i,span16i)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0xf7,0xd7,0x0b,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
0037h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> impl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?impl#impl_g[32u](uspan32u,uspan32u,span32u)
; impl_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xf7,0xd7,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
002fh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> impl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?impl#impl_g[32i](uspan32i,uspan32i,span32i)
; impl_g[32i](uspan32i,uspan32i,span32i)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xf7,0xd7,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh not edi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d7}
002fh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> impl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?impl#impl_g[64u](uspan64u,uspan64u,span64u)
; impl_g[64u](uspan64u,uspan64u,span64u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0xf7,0xd7,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
0032h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> impl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?impl#impl_g[64i](uspan64i,uspan64i,span64i)
; impl_g[64i](uspan64i,uspan64i,span64i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0xf7,0xd7,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh not rdi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d7}
0032h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> nonimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[8u](uspan8u,uspan8u,span8u)
; nonimpl_g[8u](uspan8u,uspan8u,span8u)[85] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2e,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0xc4,0xe2,0x48,0xf2,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd2,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0039h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> nonimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[8i](uspan8i,uspan8i,span8i)
; nonimpl_g[8i](uspan8i,uspan8i,span8i)[85] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2e,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0xc4,0xe2,0x48,0xf2,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd2,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0039h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> nonimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[16u](uspan16u,uspan16u,span16u)
; nonimpl_g[16u](uspan16u,uspan16u,span16u)[83] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2c,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0xc4,0xe2,0x48,0xf2,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd4,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0037h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
003ah mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> nonimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[16i](uspan16i,uspan16i,span16i)
; nonimpl_g[16i](uspan16i,uspan16i,span16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0xc4,0xe2,0x48,0xf2,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
003ah movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003eh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> nonimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[32u](uspan32u,uspan32u,span32u)
; nonimpl_g[32u](uspan32u,uspan32u,span32u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xc4,0xe2,0x48,0xf2,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0032h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> nonimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[32i](uspan32i,uspan32i,span32i)
; nonimpl_g[32i](uspan32i,uspan32i,span32i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xc4,0xe2,0x48,0xf2,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh andn esi,esi,edi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 48 f2 f7}
0032h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> nonimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[64u](uspan64u,uspan64u,span64u)
; nonimpl_g[64u](uspan64u,uspan64u,span64u)[76] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x25,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0xc4,0xe2,0xc8,0xf2,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdb,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh andn rsi,rsi,rdi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 f7}
0034h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> nonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?nonimpl#nonimpl_g[64i](uspan64i,uspan64i,span64i)
; nonimpl_g[64i](uspan64i,uspan64i,span64i)[76] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x25,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0xc4,0xe2,0xc8,0xf2,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdb,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh andn rsi,rsi,rdi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c8 f2 f7}
0034h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> cimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[8u](uspan8u,uspan8u,span8u)
; cimpl_g[8u](uspan8u,uspan8u,span8u)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0xf7,0xd6,0x0b,0xf7,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> cimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[8i](uspan8i,uspan8i,span8i)
; cimpl_g[8i](uspan8i,uspan8i,span8i)[84] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2d,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0xf7,0xd6,0x0b,0xf7,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd3,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0047h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2d}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0036h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0038h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003ch mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
003fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0042h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0045h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d3}
0047h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ah mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0052h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> cimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[16u](uspan16u,uspan16u,span16u)
; cimpl_g[16u](uspan16u,uspan16u,span16u)[82] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2b,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0xf7,0xd6,0x0b,0xf7,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd5,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0045h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2b}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0034h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0036h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0039h mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003dh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0040h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0043h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d5}
0045h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0048h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> cimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[16i](uspan16i,uspan16i,span16i)
; cimpl_g[16i](uspan16i,uspan16i,span16i)[86] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2f,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0xf7,0xd6,0x0b,0xf7,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd1,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0049h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
0037h or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0039h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003dh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0041h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0044h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0047h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d1}
0049h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004ch mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0054h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0055h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> cimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[32u](uspan32u,uspan32u,span32u)
; cimpl_g[32u](uspan32u,uspan32u,span32u)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xf7,0xd6,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
002fh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> cimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[32i](uspan32i,uspan32i,span32i)
; cimpl_g[32i](uspan32i,uspan32i,span32i)[73] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x22,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xf7,0xd6,0x0b,0xf7,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xde,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 22}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh not esi                                 ; NOT r/m32 || o32 F7 /2 || encoded[2]{f7 d6}
002fh or esi,edi                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b f7}
0031h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0034h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0037h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003ah jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c de}
003ch mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
003fh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0043h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> cimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[64u](uspan64u,uspan64u,span64u)
; cimpl_g[64u](uspan64u,uspan64u,span64u)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0xf7,0xd6,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0032h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> cimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?cimpl#cimpl_g[64i](uspan64i,uspan64i,span64i)
; cimpl_g[64i](uspan64i,uspan64i,span64i)[77] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x26,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0x48,0xf7,0xd6,0x48,0x0b,0xf7,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xda,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh not rsi                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{48 f7 d6}
0032h or rsi,rdi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b f7}
0035h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0038h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0043h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0047h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
004ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> cnonimpl<byte>(ReadOnlySpan<byte> l, ReadOnlySpan<byte> r, Span<byte> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[8u](uspan8u,uspan8u,span8u)
; cnonimpl_g[8u](uspan8u,uspan8u,span8u)[85] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2e,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x40,0x0f,0xb6,0x34,0x30,0x49,0x63,0xfa,0x40,0x0f,0xb6,0x3c,0x3a,0x40,0x0f,0xb6,0xf6,0xc4,0xe2,0x40,0xf2,0xf6,0x40,0x0f,0xb6,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd2,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movzx esi,byte ptr [rax+rsi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
0030h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
0034h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0039h movzx esi,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> cnonimpl<sbyte>(ReadOnlySpan<sbyte> l, ReadOnlySpan<sbyte> r, Span<sbyte> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[8i](uspan8i,uspan8i,span8i)
; cnonimpl_g[8i](uspan8i,uspan8i,span8i)[85] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2e,0x4d,0x63,0xda,0x4d,0x03,0xd8,0x49,0x63,0xf2,0x48,0x0f,0xbe,0x34,0x30,0x49,0x63,0xfa,0x48,0x0f,0xbe,0x3c,0x3a,0x48,0x0f,0xbe,0xf6,0xc4,0xe2,0x40,0xf2,0xf6,0x48,0x0f,0xbe,0xf6,0x41,0x88,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd2,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0048h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh add r11,r8                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 d8}
0020h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0023h movsx rsi,byte ptr [rax+rsi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 34 30}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
0030h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
0034h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0039h movsx rsi,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be f6}
003dh mov [r11],sil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 33}
0040h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0043h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0046h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
0048h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004bh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0052h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0053h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0054h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> cnonimpl<ushort>(ReadOnlySpan<ushort> l, ReadOnlySpan<ushort> r, Span<ushort> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[16u](uspan16u,uspan16u,span16u)
; cnonimpl_g[16u](uspan16u,uspan16u,span16u)[83] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x2c,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x0f,0xb7,0x34,0x70,0x49,0x63,0xfa,0x0f,0xb7,0x3c,0x7a,0x0f,0xb7,0xf6,0xc4,0xe2,0x40,0xf2,0xf6,0x0f,0xb7,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd4,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0046h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movzx esi,word ptr [rax+rsi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 34 70}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002fh movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
0032h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0037h movzx esi,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 f6}
003ah mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
003eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0041h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0044h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0046h mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0049h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
004dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0052h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> cnonimpl<short>(ReadOnlySpan<short> l, ReadOnlySpan<short> r, Span<short> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[16i](uspan16i,uspan16i,span16i)
; cnonimpl_g[16i](uspan16i,uspan16i,span16i)[87] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x30,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x58,0x49,0x63,0xf2,0x48,0x0f,0xbf,0x34,0x70,0x49,0x63,0xfa,0x48,0x0f,0xbf,0x3c,0x7a,0x48,0x0f,0xbf,0xf6,0xc4,0xe2,0x40,0xf2,0xf6,0x48,0x0f,0xbf,0xf6,0x66,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xd0,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 004ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 30}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*2]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 58}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h movsx rsi,word ptr [rax+rsi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 34 70}
0029h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ch movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
0031h movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
0035h andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
003ah movsx rsi,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf f6}
003eh mov [r11],si                            ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 33}
0042h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0045h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0048h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d0}
004ah mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
004dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0051h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0054h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0055h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0056h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> cnonimpl<uint>(ReadOnlySpan<uint> l, ReadOnlySpan<uint> r, Span<uint> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[32u](uspan32u,uspan32u,span32u)
; cnonimpl_g[32u](uspan32u,uspan32u,span32u)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xc4,0xe2,0x40,0xf2,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0032h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> cnonimpl<int>(ReadOnlySpan<int> l, ReadOnlySpan<int> r, Span<int> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[32i](uspan32i,uspan32i,span32i)
; cnonimpl_g[32i](uspan32i,uspan32i,span32i)[74] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x23,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0x98,0x49,0x63,0xf2,0x8b,0x34,0xb0,0x49,0x63,0xfa,0x8b,0x3c,0xba,0xc4,0xe2,0x40,0xf2,0xf6,0x41,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdd,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*4]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c 98}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov esi,[rax+rsi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 34 b0}
0027h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002ah mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002dh andn esi,edi,esi                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 f6}
0032h mov [r11],esi                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 33}
0035h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0038h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0040h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0044h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> cnonimpl<ulong>(ReadOnlySpan<ulong> l, ReadOnlySpan<ulong> r, Span<ulong> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[64u](uspan64u,uspan64u,span64u)
; cnonimpl_g[64u](uspan64u,uspan64u,span64u)[76] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x25,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0xc4,0xe2,0xc0,0xf2,0xf6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdb,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh andn rsi,rdi,rsi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 f6}
0034h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> cnonimpl<long>(ReadOnlySpan<long> l, ReadOnlySpan<long> r, Span<long> dst), hex://gmath.svc/mathspan?cnonimpl#cnonimpl_g[64i](uspan64i,uspan64i,span64i)
; cnonimpl_g[64i](uspan64i,uspan64i,span64i)[76] = {0x57,0x56,0x0f,0x1f,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x4d,0x8b,0x01,0x45,0x8b,0x49,0x08,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x25,0x4d,0x63,0xda,0x4f,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf0,0x49,0x63,0xfa,0x48,0x8b,0x3c,0xfa,0xc4,0xe2,0xc0,0xf2,0xf6,0x49,0x89,0x33,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xdb,0x4c,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[3]{0f 1f 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 01}
000eh mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
0012h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001dh lea r11,[r8+r11*8]                      ; LEA r64, m || REX.W 8D /r || encoded[4]{4f 8d 1c d8}
0021h movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0024h mov rsi,[rax+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f0}
0028h movsxd rdi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fa}
002bh mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002fh andn rsi,rdi,rsi                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 f6}
0034h mov [r11],rsi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 33}
0037h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
003ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rcx],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 01}
0042h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0046h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> select<byte>(ReadOnlySpan<byte> a, ReadOnlySpan<byte> b, ReadOnlySpan<byte> c, Span<byte> dst), hex://gmath.svc/mathspan?select#select_g[8u](uspan8u,uspan8u,uspan8u,span8u)
; select_g[8u](uspan8u,uspan8u,uspan8u,span8u)[113] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x44,0x49,0x63,0xf3,0x49,0x03,0xf2,0x49,0x63,0xfb,0x40,0x0f,0xb6,0x3c,0x3a,0x49,0x63,0xdb,0x41,0x0f,0xb6,0x1c,0x18,0x49,0x63,0xeb,0x41,0x0f,0xb6,0x2c,0x29,0x40,0x0f,0xb6,0xff,0x0f,0xb6,0xdb,0x40,0x0f,0xb6,0xff,0x0f,0xb6,0xdb,0x23,0xdf,0xc4,0xe2,0x40,0xf2,0xfd,0x0b,0xfb,0x40,0x0f,0xb6,0xff,0x40,0x88,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xbc,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0063h                         ; JLE rel8 || 7E cb || encoded[2]{7e 44}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movzx edi,byte ptr [rdx+rdi]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movzx ebx,byte ptr [r8+rbx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movzx ebp,byte ptr [r9+rbp]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 2c 29}
003dh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0041h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
0044h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0048h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
004bh and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
004dh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0052h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0054h movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
0058h mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
005bh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
005eh cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0061h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bc}
0063h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0066h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0069h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006dh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006fh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> select<sbyte>(ReadOnlySpan<sbyte> a, ReadOnlySpan<sbyte> b, ReadOnlySpan<sbyte> c, Span<sbyte> dst), hex://gmath.svc/mathspan?select#select_g[8i](uspan8i,uspan8i,uspan8i,span8i)
; select_g[8i](uspan8i,uspan8i,uspan8i,span8i)[119] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x4a,0x49,0x63,0xf3,0x49,0x03,0xf2,0x49,0x63,0xfb,0x48,0x0f,0xbe,0x3c,0x3a,0x49,0x63,0xdb,0x49,0x0f,0xbe,0x1c,0x18,0x49,0x63,0xeb,0x49,0x0f,0xbe,0x2c,0x29,0x48,0x0f,0xbe,0xff,0x48,0x0f,0xbe,0xdb,0x23,0xdf,0x48,0x0f,0xbe,0xdb,0xc4,0xe2,0x40,0xf2,0xfd,0x48,0x0f,0xbe,0xff,0x48,0x0f,0xbe,0xdb,0x0b,0xfb,0x48,0x0f,0xbe,0xff,0x40,0x88,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xb6,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0069h                         ; JLE rel8 || 7E cb || encoded[2]{7e 4a}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h add rsi,r10                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{49 03 f2}
0025h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0028h movsx rdi,byte ptr [rdx+rdi]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 3a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movsx rbx,byte ptr [r8+rbx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 1c 18}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movsx rbp,byte ptr [r9+rbp]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 2c 29}
003dh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0041h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0045h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0047h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
004bh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0050h movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0054h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0058h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005ah movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
005eh mov [rsi],dil                           ; MOV r/m8, r8 || 88 /r || encoded[3]{40 88 3e}
0061h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0064h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0067h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b6}
0069h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006ch mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
006fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0072h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0073h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0074h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0075h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0076h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> select<ushort>(ReadOnlySpan<ushort> a, ReadOnlySpan<ushort> b, ReadOnlySpan<ushort> c, Span<ushort> dst), hex://gmath.svc/mathspan?select#select_g[16u](uspan16u,uspan16u,uspan16u,span16u)
; select_g[16u](uspan16u,uspan16u,uspan16u,span16u)[110] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x41,0x49,0x63,0xf3,0x49,0x8d,0x34,0x72,0x49,0x63,0xfb,0x0f,0xb7,0x3c,0x7a,0x49,0x63,0xdb,0x41,0x0f,0xb7,0x1c,0x58,0x49,0x63,0xeb,0x41,0x0f,0xb7,0x2c,0x69,0x0f,0xb7,0xff,0x0f,0xb7,0xdb,0x0f,0xb7,0xff,0x0f,0xb7,0xdb,0x23,0xdf,0xc4,0xe2,0x40,0xf2,0xfd,0x0b,0xfb,0x0f,0xb7,0xff,0x66,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xbf,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 41}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 72}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h movzx edi,word ptr [rdx+rdi*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 7a}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h movzx ebx,word ptr [r8+rbx*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 1c 58}
0035h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0038h movzx ebp,word ptr [r9+rbp*2]           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{41 0f b7 2c 69}
003dh movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0040h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0043h movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0046h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0049h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
004bh andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0050h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0052h movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
0055h mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0058h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
005bh cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
005eh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c bf}
0060h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0063h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> select<short>(ReadOnlySpan<short> a, ReadOnlySpan<short> b, ReadOnlySpan<short> c, Span<short> dst), hex://gmath.svc/mathspan?select#select_g[16i](uspan16i,uspan16i,uspan16i,span16i)
; select_g[16i](uspan16i,uspan16i,uspan16i,span16i)[120] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x4b,0x49,0x63,0xf3,0x49,0x8d,0x34,0x72,0x49,0x63,0xfb,0x48,0x0f,0xbf,0x3c,0x7a,0x49,0x63,0xdb,0x49,0x0f,0xbf,0x1c,0x58,0x49,0x63,0xeb,0x49,0x0f,0xbf,0x2c,0x69,0x48,0x0f,0xbf,0xff,0x48,0x0f,0xbf,0xdb,0x23,0xdf,0x48,0x0f,0xbf,0xdb,0xc4,0xe2,0x40,0xf2,0xfd,0x48,0x0f,0xbf,0xff,0x48,0x0f,0xbf,0xdb,0x0b,0xfb,0x48,0x0f,0xbf,0xff,0x66,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xb5,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 006ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 4b}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 72}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h movsx rdi,word ptr [rdx+rdi*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 7a}
002eh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0031h movsx rbx,word ptr [r8+rbx*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 1c 58}
0036h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0039h movsx rbp,word ptr [r9+rbp*2]           ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{49 0f bf 2c 69}
003eh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0042h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0046h and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
0048h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
004ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0051h movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
0055h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0059h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
005bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
005fh mov [rsi],di                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 3e}
0062h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0065h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
0068h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c b5}
006ah mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
006dh mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0070h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0073h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0074h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0075h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0076h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> select<uint>(ReadOnlySpan<uint> a, ReadOnlySpan<uint> b, ReadOnlySpan<uint> c, Span<uint> dst), hex://gmath.svc/mathspan?select#select_g[32u](uspan32u,uspan32u,uspan32u,span32u)
; select_g[32u](uspan32u,uspan32u,uspan32u,span32u)[91] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x2e,0x49,0x63,0xf3,0x49,0x8d,0x34,0xb2,0x49,0x63,0xfb,0x8b,0x3c,0xba,0x49,0x63,0xdb,0x41,0x8b,0x1c,0x98,0x49,0x63,0xeb,0x41,0x8b,0x2c,0xa9,0x23,0xdf,0xc4,0xe2,0x40,0xf2,0xfd,0x0b,0xfb,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xd2,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 b2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002ch movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
002fh mov ebx,[r8+rbx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 98}
0033h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0036h mov ebp,[r9+rbp*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 2c a9}
003ah and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
003ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0041h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0043h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0045h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0048h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
004dh mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0050h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> select<int>(ReadOnlySpan<int> a, ReadOnlySpan<int> b, ReadOnlySpan<int> c, Span<int> dst), hex://gmath.svc/mathspan?select#select_g[32i](uspan32i,uspan32i,uspan32i,span32i)
; select_g[32i](uspan32i,uspan32i,uspan32i,span32i)[91] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x2e,0x49,0x63,0xf3,0x49,0x8d,0x34,0xb2,0x49,0x63,0xfb,0x8b,0x3c,0xba,0x49,0x63,0xdb,0x41,0x8b,0x1c,0x98,0x49,0x63,0xeb,0x41,0x8b,0x2c,0xa9,0x23,0xdf,0xc4,0xe2,0x40,0xf2,0xfd,0x0b,0xfb,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xd2,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 004dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 2e}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 b2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov edi,[rdx+rdi*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c ba}
002ch movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
002fh mov ebx,[r8+rbx*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 1c 98}
0033h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0036h mov ebp,[r9+rbp*4]                      ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 2c a9}
003ah and ebx,edi                             ; AND r32, r/m32 || o32 23 /r || encoded[2]{23 df}
003ch andn edi,edi,ebp                        ; ANDN r32a, r32b, r/m32 || VEX.LZ.0F38.W0 F2 /r || encoded[5]{c4 e2 40 f2 fd}
0041h or edi,ebx                              ; OR r32, r/m32 || o32 0B /r || encoded[2]{0b fb}
0043h mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0045h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0048h cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c d2}
004dh mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0050h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0053h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0056h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0057h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0058h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0059h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> select<ulong>(ReadOnlySpan<ulong> a, ReadOnlySpan<ulong> b, ReadOnlySpan<ulong> c, Span<ulong> dst), hex://gmath.svc/mathspan?select#select_g[64u](uspan64u,uspan64u,uspan64u,span64u)
; select_g[64u](uspan64u,uspan64u,uspan64u,span64u)[95] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x32,0x49,0x63,0xf3,0x49,0x8d,0x34,0xf2,0x49,0x63,0xfb,0x48,0x8b,0x3c,0xfa,0x49,0x63,0xdb,0x49,0x8b,0x1c,0xd8,0x49,0x63,0xeb,0x49,0x8b,0x2c,0xe9,0x48,0x23,0xdf,0xc4,0xe2,0xc0,0xf2,0xfd,0x48,0x0b,0xfb,0x48,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xce,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0051h                         ; JLE rel8 || 7E cb || encoded[2]{7e 32}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 f2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h mov rbx,[r8+rbx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d8}
0034h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0037h mov rbp,[r9+rbp*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 2c e9}
003bh and rbx,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 df}
003eh andn rdi,rdi,rbp                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 fd}
0043h or rdi,rbx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b fb}
0046h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0049h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
004ch cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004fh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c ce}
0051h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> select<long>(ReadOnlySpan<long> a, ReadOnlySpan<long> b, ReadOnlySpan<long> c, Span<long> dst), hex://gmath.svc/mathspan?select#select_g[64i](uspan64i,uspan64i,uspan64i,span64i)
; select_g[64i](uspan64i,uspan64i,uspan64i,span64i)[95] = {0x57,0x56,0x55,0x53,0x48,0x8b,0x44,0x24,0x48,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x4d,0x8b,0x09,0x4c,0x8b,0x10,0x8b,0x40,0x08,0x45,0x33,0xdb,0x85,0xc0,0x7e,0x32,0x49,0x63,0xf3,0x49,0x8d,0x34,0xf2,0x49,0x63,0xfb,0x48,0x8b,0x3c,0xfa,0x49,0x63,0xdb,0x49,0x8b,0x1c,0xd8,0x49,0x63,0xeb,0x49,0x8b,0x2c,0xe9,0x48,0x23,0xdf,0xc4,0xe2,0xc0,0xf2,0xfd,0x48,0x0b,0xfb,0x48,0x89,0x3e,0x41,0xff,0xc3,0x44,0x3b,0xd8,0x7c,0xce,0x4c,0x89,0x11,0x89,0x41,0x08,0x48,0x8b,0xc1,0x5b,0x5d,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h mov rax,[rsp+48h]                       ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{48 8b 44 24 48}
0009h mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000ch mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
000fh mov r9,[r9]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 09}
0012h mov r10,[rax]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 10}
0015h mov eax,[rax+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 40 08}
0018h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
001bh test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
001dh jle short 0051h                         ; JLE rel8 || 7E cb || encoded[2]{7e 32}
001fh movsxd rsi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f3}
0022h lea rsi,[r10+rsi*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 f2}
0026h movsxd rdi,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 fb}
0029h mov rdi,[rdx+rdi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c fa}
002dh movsxd rbx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 db}
0030h mov rbx,[r8+rbx*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 1c d8}
0034h movsxd rbp,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 eb}
0037h mov rbp,[r9+rbp*8]                      ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{49 8b 2c e9}
003bh and rbx,rdi                             ; AND r64, r/m64 || REX.W 23 /r || encoded[3]{48 23 df}
003eh andn rdi,rdi,rbp                        ; ANDN r64a, r64b, r/m64 || VEX.LZ.0F38.W1 F2 /r || encoded[5]{c4 e2 c0 f2 fd}
0043h or rdi,rbx                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{48 0b fb}
0046h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0049h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
004ch cmp r11d,eax                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b d8}
004fh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c ce}
0051h mov [rcx],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 11}
0054h mov [rcx+8],eax                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 41 08}
0057h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
005ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
005bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
005ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> not<byte>(ReadOnlySpan<byte> src, Span<byte> dst), hex://gmath.svc/mathspan?not#not_g[8u](uspan8u,span8u)
; not_g[8u](uspan8u,span8u)[64] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1e,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x12,0x46,0x0f,0xb6,0x14,0x10,0x41,0xf7,0xd2,0x45,0x0f,0xb6,0xd2,0x45,0x88,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe2,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movzx r10d,byte ptr [rax+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
002ah mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0033h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0035h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0038h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> not<sbyte>(ReadOnlySpan<sbyte> src, Span<sbyte> dst), hex://gmath.svc/mathspan?not#not_g[8i](uspan8i,span8i)
; not_g[8i](uspan8i,span8i)[64] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1e,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x12,0x4e,0x0f,0xbe,0x14,0x10,0x41,0xf7,0xd2,0x4d,0x0f,0xbe,0xd2,0x45,0x88,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe2,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 12}
001eh movsx r10,byte ptr [rax+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 10}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
002ah mov [r11],r10b                          ; MOV r/m8, r8 || 88 /r || encoded[3]{45 88 13}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0033h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0035h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0038h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ch mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> not<ushort>(ReadOnlySpan<ushort> src, Span<ushort> dst), hex://gmath.svc/mathspan?not#not_g[16u](uspan16u,span16u)
; not_g[16u](uspan16u,span16u)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1f,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x52,0x46,0x0f,0xb7,0x14,0x50,0x41,0xf7,0xd2,0x45,0x0f,0xb7,0xd2,0x66,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe1,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movzx r10d,word ptr [rax+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
002ah mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> not<short>(ReadOnlySpan<short> src, Span<short> dst), hex://gmath.svc/mathspan?not#not_g[16i](uspan16i,span16i)
; not_g[16i](uspan16i,span16i)[65] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1f,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x52,0x4e,0x0f,0xbf,0x14,0x50,0x41,0xf7,0xd2,0x4d,0x0f,0xbf,0xd2,0x66,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe1,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0036h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1f}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 52}
001eh movsx r10,word ptr [rax+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 50}
0023h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0026h movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
002ah mov [r11],r10w                          ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 45 89 13}
002eh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0031h cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0034h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
0036h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0039h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0040h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> not<uint>(ReadOnlySpan<uint> src, Span<uint> dst), hex://gmath.svc/mathspan?not#not_g[32u](uspan32u,span32u)
; not_g[32u](uspan32u,span32u)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x41,0xf7,0xd2,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> not<int>(ReadOnlySpan<int> src, Span<int> dst), hex://gmath.svc/mathspan?not#not_g[32i](uspan32i,span32i)
; not_g[32i](uspan32i,span32i)[59] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x19,0x4d,0x63,0xd1,0x4e,0x8d,0x1c,0x92,0x46,0x8b,0x14,0x90,0x41,0xf7,0xd2,0x45,0x89,0x13,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe7,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0030h                         ; JLE rel8 || 7E cb || encoded[2]{7e 19}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r11,[rdx+r10*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c 92}
001eh mov r10d,[rax+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 90}
0022h not r10d                                ; NOT r/m32 || o32 F7 /2 || encoded[3]{41 f7 d2}
0025h mov [r11],r10d                          ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 13}
0028h inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002bh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
002eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0030h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0033h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
0037h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> not<ulong>(ReadOnlySpan<ulong> src, Span<ulong> dst), hex://gmath.svc/mathspan?not#not_g[64u](uspan64u,span64u)
; not_g[64u](uspan64u,span64u)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xf7,0xd3,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> not<long>(ReadOnlySpan<long> src, Span<long> dst), hex://gmath.svc/mathspan?not#not_g[64i](uspan64i,span64i)
; not_g[64i](uspan64i,span64i)[62] = {0x0f,0x1f,0x44,0x00,0x00,0x48,0x8b,0x02,0x49,0x8b,0x10,0x45,0x8b,0x40,0x08,0x45,0x33,0xc9,0x45,0x85,0xc0,0x7e,0x1c,0x4d,0x63,0xd1,0x4e,0x8d,0x14,0xd2,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xd8,0x49,0xf7,0xd3,0x4d,0x89,0x1a,0x41,0xff,0xc1,0x45,0x3b,0xc8,0x7c,0xe4,0x48,0x89,0x11,0x44,0x89,0x41,0x08,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov rax,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 02}
0008h mov rdx,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 10}
000bh mov r8d,[r8+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 40 08}
000fh xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0012h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0015h jle short 0033h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1c}
0017h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001ah lea r10,[rdx+r10*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 14 d2}
001eh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0021h mov r11,[rax+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c d8}
0025h not r11                                 ; NOT r/m64 || REX.W F7 /2 || encoded[3]{49 f7 d3}
0028h mov [r10],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 1a}
002bh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002eh cmp r9d,r8d                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b c8}
0031h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
0033h mov [rcx],rdx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 11}
0036h mov [rcx+8],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 41 08}
003ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> srl<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst), hex://gmath.svc/mathspan?srl#srl_g[8u](uspan8u,8u,span8u)
; srl_g[8u](uspan8u,8u,span8u)[72] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x27,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x40,0x0f,0xb6,0x3c,0x0a,0x41,0x8b,0xc8,0xd3,0xef,0x40,0x0f,0xb6,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe1,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> srl<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst), hex://gmath.svc/mathspan?srl#srl_g[8i](uspan8i,8u,span8i)
; srl_g[8i](uspan8i,8u,span8i)[72] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x27,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x48,0x0f,0xbe,0x3c,0x0a,0x41,0x8b,0xc8,0xd3,0xef,0x48,0x0f,0xbe,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe1,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> srl<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst), hex://gmath.svc/mathspan?srl#srl_g[16u](uspan16u,8u,span16u)
; srl_g[16u](uspan16u,8u,span16u)[71] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x26,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x0f,0xb7,0x3c,0x4a,0x41,0x8b,0xc8,0xd3,0xef,0x0f,0xb7,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> srl<short>(ReadOnlySpan<short> src, byte count, Span<short> dst), hex://gmath.svc/mathspan?srl#srl_g[16i](uspan16i,8u,span16i)
; srl_g[16i](uspan16i,8u,span16i)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x28,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x48,0x0f,0xbf,0x3c,0x4a,0x41,0x8b,0xc8,0xd3,0xef,0x48,0x0f,0xbf,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe0,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0030h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0034h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> srl<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst), hex://gmath.svc/mathspan?srl#srl_g[32u](uspan32u,8u,span32u)
; srl_g[32u](uspan32u,8u,span32u)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x21,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x8b,0xc8,0xd3,0xef,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe7,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> srl<int>(ReadOnlySpan<int> src, byte count, Span<int> dst), hex://gmath.svc/mathspan?srl#srl_g[32i](uspan32i,8u,span32i)
; srl_g[32i](uspan32i,8u,span32i)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x21,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x8b,0xc8,0xd3,0xef,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe7,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> srl<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst), hex://gmath.svc/mathspan?srl#srl_g[64u](uspan64u,8u,span64u)
; srl_g[64u](uspan64u,8u,span64u)[69] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x24,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x3f,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x8b,0xc8,0x48,0xd3,0xef,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe4,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> srl<long>(ReadOnlySpan<long> src, byte count, Span<long> dst), hex://gmath.svc/mathspan?srl#srl_g[64i](uspan64i,8u,span64i)
; srl_g[64i](uspan64i,8u,span64i)[69] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x24,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x3f,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x8b,0xc8,0x48,0xd3,0xef,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe4,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sll<byte>(ReadOnlySpan<byte> src, byte count, Span<byte> dst), hex://gmath.svc/mathspan?sll#sll_g[8u](uspan8u,8u,span8u)
; sll_g[8u](uspan8u,8u,span8u)[72] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x27,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x40,0x0f,0xb6,0x3c,0x0a,0x41,0x8b,0xc8,0xd3,0xe7,0x40,0x0f,0xb6,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe1,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sll<sbyte>(ReadOnlySpan<sbyte> src, byte count, Span<sbyte> dst), hex://gmath.svc/mathspan?sll#sll_g[8i](uspan8i,8u,span8i)
; sll_g[8i](uspan8i,8u,span8i)[72] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x27,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x48,0x0f,0xbe,0x3c,0x0a,0x41,0x8b,0xc8,0xd3,0xe7,0x48,0x0f,0xbe,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe1,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 27}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0026h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0034h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0036h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0039h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003ch jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e1}
003eh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0041h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0045h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0046h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sll<ushort>(ReadOnlySpan<ushort> src, byte count, Span<ushort> dst), hex://gmath.svc/mathspan?sll#sll_g[16u](uspan16u,8u,span16u)
; sll_g[16u](uspan16u,8u,span16u)[71] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x26,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x0f,0xb7,0x3c,0x4a,0x41,0x8b,0xc8,0xd3,0xe7,0x0f,0xb7,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sll<short>(ReadOnlySpan<short> src, byte count, Span<short> dst), hex://gmath.svc/mathspan?sll#sll_g[16i](uspan16i,8u,span16i)
; sll_g[16i](uspan16i,8u,span16i)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x28,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x48,0x0f,0xbf,0x3c,0x4a,0x41,0x8b,0xc8,0xd3,0xe7,0x48,0x0f,0xbf,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe0,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0026h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
002bh mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002eh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0030h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0034h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e0}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sll<uint>(ReadOnlySpan<uint> src, byte count, Span<uint> dst), hex://gmath.svc/mathspan?sll#sll_g[32u](uspan32u,8u,span32u)
; sll_g[32u](uspan32u,8u,span32u)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x21,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x8b,0xc8,0xd3,0xe7,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe7,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sll<int>(ReadOnlySpan<int> src, byte count, Span<int> dst), hex://gmath.svc/mathspan?sll#sll_g[32i](uspan32i,8u,span32i)
; sll_g[32i](uspan32i,8u,span32i)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x21,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x1f,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x8b,0xc8,0xd3,0xe7,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe7,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 21}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,1fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 1f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0026h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0029h mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002ch shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002eh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e7}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sll<ulong>(ReadOnlySpan<ulong> src, byte count, Span<ulong> dst), hex://gmath.svc/mathspan?sll#sll_g[64u](uspan64u,8u,span64u)
; sll_g[64u](uspan64u,8u,span64u)[69] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x24,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x3f,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x8b,0xc8,0x48,0xd3,0xe7,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe4,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sll<long>(ReadOnlySpan<long> src, byte count, Span<long> dst), hex://gmath.svc/mathspan?sll#sll_g[64i](uspan64i,8u,span64i)
; sll_g[64i](uspan64i,8u,span64i)[69] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x24,0x45,0x0f,0xb6,0xc0,0x41,0x83,0xe0,0x3f,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x8b,0xc8,0x48,0xd3,0xe7,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe4,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 003bh                         ; JLE rel8 || 7E cb || encoded[2]{7e 24}
0017h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
001bh and r8d,3fh                             ; AND r/m32, imm8 || o32 83 /4 ib || encoded[4]{41 83 e0 3f}
001fh movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
0022h lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0026h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
002ah mov ecx,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c8}
002dh shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
0030h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0033h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0036h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0039h jl short 001fh                          ; JL rel8 || 7C cb || encoded[2]{7c e4}
003bh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003eh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0042h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0043h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0044h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> sllv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst), hex://gmath.svc/mathspan?sllv#sllv_g[8u](uspan8u,uspan8u,span8u)
; sllv_g[8u](uspan8u,uspan8u,span8u)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x25,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x40,0x0f,0xb6,0x3c,0x0a,0x41,0x0f,0xb6,0x0c,0x08,0x40,0x0f,0xb6,0xff,0xd3,0xe7,0x40,0x0f,0xb6,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdb,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0031h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> sllv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<byte> counts, Span<sbyte> dst), hex://gmath.svc/mathspan?sllv#sllv_g[8i](uspan8i,uspan8u,span8i)
; sllv_g[8i](uspan8i,uspan8u,span8i)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x25,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x48,0x0f,0xbe,0x3c,0x0a,0x41,0x0f,0xb6,0x0c,0x08,0x48,0x0f,0xbe,0xff,0xd3,0xe7,0x48,0x0f,0xbe,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdb,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0031h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> sllv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<byte> counts, Span<ushort> dst), hex://gmath.svc/mathspan?sllv#sllv_g[16u](uspan16u,uspan8u,span16u)
; sllv_g[16u](uspan16u,uspan8u,span16u)[71] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x23,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x0f,0xb7,0x3c,0x4a,0x41,0x0f,0xb6,0x0c,0x08,0x0f,0xb7,0xff,0xd3,0xe7,0x0f,0xb7,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdd,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002dh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> sllv<short>(ReadOnlySpan<short> src, ReadOnlySpan<byte> counts, Span<short> dst), hex://gmath.svc/mathspan?sllv#sllv_g[16i](uspan16i,uspan8u,span16i)
; sllv_g[16i](uspan16i,uspan8u,span16i)[74] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x26,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x48,0x0f,0xbf,0x3c,0x4a,0x41,0x0f,0xb6,0x0c,0x08,0x48,0x0f,0xbf,0xff,0xd3,0xe7,0x48,0x0f,0xbf,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xda,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0031h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0035h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0038h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003bh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0043h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> sllv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<byte> counts, Span<uint> dst), hex://gmath.svc/mathspan?sllv#sllv_g[32u](uspan32u,uspan8u,span32u)
; sllv_g[32u](uspan32u,uspan8u,span32u)[63] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1b,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x0f,0xb6,0x0c,0x08,0xd3,0xe7,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe5,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
0029h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002bh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002dh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0030h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0033h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0035h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0038h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> sllv<int>(ReadOnlySpan<int> src, ReadOnlySpan<byte> counts, Span<int> dst), hex://gmath.svc/mathspan?sllv#sllv_g[32i](uspan32i,uspan8u,span32i)
; sllv_g[32i](uspan32i,uspan8u,span32i)[63] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1b,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x0f,0xb6,0x0c,0x08,0xd3,0xe7,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe5,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
0029h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
002bh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002dh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0030h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0033h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0035h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0038h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> sllv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<byte> counts, Span<ulong> dst), hex://gmath.svc/mathspan?sllv#sllv_g[64u](uspan64u,uspan8u,span64u)
; sllv_g[64u](uspan64u,uspan8u,span64u)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1e,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x0f,0xb6,0x0c,0x08,0x48,0xd3,0xe7,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
002dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> sllv<long>(ReadOnlySpan<long> src, ReadOnlySpan<byte> counts, Span<long> dst), hex://gmath.svc/mathspan?sllv#sllv_g[64i](uspan64i,uspan8u,span64i)
; sllv_g[64i](uspan64i,uspan8u,span64i)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1e,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x0f,0xb6,0x0c,0x08,0x48,0xd3,0xe7,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah shl rdi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e7}
002dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> srlv<byte>(ReadOnlySpan<byte> src, ReadOnlySpan<byte> counts, Span<byte> dst), hex://gmath.svc/mathspan?srlv#srlv_g[8u](uspan8u,uspan8u,span8u)
; srlv_g[8u](uspan8u,uspan8u,span8u)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x25,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x40,0x0f,0xb6,0x3c,0x0a,0x41,0x0f,0xb6,0x0c,0x08,0x40,0x0f,0xb6,0xff,0xd3,0xef,0x40,0x0f,0xb6,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdb,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movzx edi,byte ptr [rdx+rcx]            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{40 0f b6 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movzx edi,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ff}
002fh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0031h movzx ecx,dil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> srlv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<byte> counts, Span<sbyte> dst), hex://gmath.svc/mathspan?srlv#srlv_g[8i](uspan8i,uspan8u,span8i)
; srlv_g[8i](uspan8i,uspan8u,span8i)[73] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x25,0x49,0x63,0xcb,0x49,0x8d,0x34,0x0a,0x48,0x0f,0xbe,0x3c,0x0a,0x41,0x0f,0xb6,0x0c,0x08,0x48,0x0f,0xbe,0xff,0xd3,0xef,0x48,0x0f,0xbe,0xcf,0x88,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdb,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 25}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
002fh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0031h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0035h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
0037h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003ah cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003dh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c db}
003fh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0042h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0046h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0047h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> srlv<ushort>(ReadOnlySpan<ushort> src, ReadOnlySpan<byte> counts, Span<ushort> dst), hex://gmath.svc/mathspan?srlv#srlv_g[16u](uspan16u,uspan8u,span16u)
; srlv_g[16u](uspan16u,uspan8u,span16u)[71] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x23,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x0f,0xb7,0x3c,0x4a,0x41,0x0f,0xb6,0x0c,0x08,0x0f,0xb7,0xff,0xd3,0xef,0x0f,0xb7,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xdd,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 003dh                         ; JLE rel8 || 7E cb || encoded[2]{7e 23}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movzx edi,word ptr [rdx+rcx*2]          ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{0f b7 3c 4a}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah movzx edi,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ff}
002dh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002fh movzx ecx,di                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 cf}
0032h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0035h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0038h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003bh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
003dh mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0040h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0044h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0045h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0046h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> srlv<short>(ReadOnlySpan<short> src, ReadOnlySpan<byte> counts, Span<short> dst), hex://gmath.svc/mathspan?srlv#srlv_g[16i](uspan16i,uspan8u,span16i)
; srlv_g[16i](uspan16i,uspan8u,span16i)[74] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x26,0x49,0x63,0xcb,0x49,0x8d,0x34,0x4a,0x48,0x0f,0xbf,0x3c,0x4a,0x41,0x0f,0xb6,0x0c,0x08,0x48,0x0f,0xbf,0xff,0xd3,0xef,0x48,0x0f,0xbf,0xcf,0x66,0x89,0x0e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xda,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0040h                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 4a}
0021h movsx rdi,word ptr [rdx+rcx*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{48 0f bf 3c 4a}
0026h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002bh movsx rdi,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ff}
002fh shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
0031h movsx rcx,di                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf cf}
0035h mov [rsi],cx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 0e}
0038h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003bh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
003eh jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c da}
0040h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0043h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0047h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0048h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0049h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> srlv<uint>(ReadOnlySpan<uint> src, ReadOnlySpan<byte> counts, Span<uint> dst), hex://gmath.svc/mathspan?srlv#srlv_g[32u](uspan32u,uspan8u,span32u)
; srlv_g[32u](uspan32u,uspan8u,span32u)[63] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1b,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x0f,0xb6,0x0c,0x08,0xd3,0xef,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe5,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
0029h shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002bh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002dh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0030h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0033h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0035h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0038h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> srlv<int>(ReadOnlySpan<int> src, ReadOnlySpan<byte> counts, Span<int> dst), hex://gmath.svc/mathspan?srlv#srlv_g[32i](uspan32i,uspan8u,span32i)
; srlv_g[32i](uspan32i,uspan8u,span32i)[63] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1b,0x49,0x63,0xcb,0x49,0x8d,0x34,0x8a,0x8b,0x3c,0x8a,0x41,0x0f,0xb6,0x0c,0x08,0xd3,0xef,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe5,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1b}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 8a}
0021h mov edi,[rdx+rcx*4]                     ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 3c 8a}
0024h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
0029h shr edi,cl                              ; SHR r/m32, CL || o32 D3 /5 || encoded[2]{d3 ef}
002bh mov [rsi],edi                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 3e}
002dh inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0030h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0033h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e5}
0035h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0038h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> srlv<ulong>(ReadOnlySpan<ulong> src, ReadOnlySpan<byte> counts, Span<ulong> dst), hex://gmath.svc/mathspan?srlv#srlv_g[64u](uspan64u,uspan8u,span64u)
; srlv_g[64u](uspan64u,uspan8u,span64u)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1e,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x0f,0xb6,0x0c,0x08,0x48,0xd3,0xef,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
002dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> srlv<long>(ReadOnlySpan<long> src, ReadOnlySpan<byte> counts, Span<long> dst), hex://gmath.svc/mathspan?srlv#srlv_g[64i](uspan64i,uspan8u,span64i)
; srlv_g[64i](uspan64i,uspan8u,span64i)[66] = {0x57,0x56,0x48,0x8b,0xc1,0x4d,0x8b,0x11,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x4d,0x8b,0x00,0x45,0x33,0xdb,0x45,0x85,0xc9,0x7e,0x1e,0x49,0x63,0xcb,0x49,0x8d,0x34,0xca,0x48,0x8b,0x3c,0xca,0x41,0x0f,0xb6,0x0c,0x08,0x48,0xd3,0xef,0x48,0x89,0x3e,0x41,0xff,0xc3,0x45,0x3b,0xd9,0x7c,0xe2,0x4c,0x89,0x10,0x44,0x89,0x48,0x08,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0038h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1e}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 ca}
0021h mov rdi,[rdx+rcx*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 3c ca}
0025h movzx ecx,byte ptr [r8+rcx]             ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{41 0f b6 0c 08}
002ah shr rdi,cl                              ; SHR r/m64, CL || REX.W D3 /5 || encoded[3]{48 d3 ef}
002dh mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
0030h inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
0033h cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0036h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c e2}
0038h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
003bh mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
003fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0040h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; byte dot<byte>(ReadOnlySpan<byte> lhs, ReadOnlySpan<byte> rhs), hex://gmath.svc/mathspan?dot#dot_g[8u](uspan8u,uspan8u)
; dot_g[8u](uspan8u,uspan8u)[72] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x2c,0x4d,0x63,0xd1,0x46,0x0f,0xb6,0x1c,0x11,0x46,0x0f,0xb6,0x14,0x12,0x45,0x0f,0xb6,0xdb,0x45,0x0f,0xb6,0xdb,0x45,0x0f,0xb6,0xd2,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x45,0x0f,0xb6,0xc0,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xd4,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movzx r11d,byte ptr [rcx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 11}
0020h movzx r10d,byte ptr [rdx+r10]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 14 12}
0025h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0029h movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
002dh movzx r10d,r10b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; sbyte dot<sbyte>(ReadOnlySpan<sbyte> lhs, ReadOnlySpan<sbyte> rhs), hex://gmath.svc/mathspan?dot#dot_g[8i](uspan8i,uspan8i)
; dot_g[8i](uspan8i,uspan8i)[72] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x2c,0x4d,0x63,0xd1,0x4e,0x0f,0xbe,0x1c,0x11,0x4e,0x0f,0xbe,0x14,0x12,0x4d,0x0f,0xbe,0xdb,0x4d,0x0f,0xbe,0xdb,0x4d,0x0f,0xbe,0xd2,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x4d,0x0f,0xbe,0xc0,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xd4,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movsx r11,byte ptr [rcx+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 11}
0020h movsx r10,byte ptr [rdx+r10]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 14 12}
0025h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0029h movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
002dh movsx r10,r10b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movsx r8,r8b                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ushort dot<ushort>(ReadOnlySpan<ushort> lhs, ReadOnlySpan<ushort> rhs), hex://gmath.svc/mathspan?dot#dot_g[16u](uspan16u,uspan16u)
; dot_g[16u](uspan16u,uspan16u)[72] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x2c,0x4d,0x63,0xd1,0x46,0x0f,0xb7,0x1c,0x51,0x46,0x0f,0xb7,0x14,0x52,0x45,0x0f,0xb7,0xdb,0x45,0x0f,0xb7,0xdb,0x45,0x0f,0xb7,0xd2,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x45,0x0f,0xb7,0xc0,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xd4,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movzx r11d,word ptr [rcx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 51}
0020h movzx r10d,word ptr [rdx+r10*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 14 52}
0025h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0029h movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
002dh movzx r10d,r10w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movzx r8d,r8w                           ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; short dot<short>(ReadOnlySpan<short> lhs, ReadOnlySpan<short> rhs), hex://gmath.svc/mathspan?dot#dot_g[16i](uspan16i,uspan16i)
; dot_g[16i](uspan16i,uspan16i)[72] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x2c,0x4d,0x63,0xd1,0x4e,0x0f,0xbf,0x1c,0x51,0x4e,0x0f,0xbf,0x14,0x52,0x4d,0x0f,0xbf,0xdb,0x4d,0x0f,0xbf,0xdb,0x4d,0x0f,0xbf,0xd2,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x4d,0x0f,0xbf,0xc0,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xd4,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_SBB
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0044h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2c}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh movsx r11,word ptr [rcx+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 51}
0020h movsx r10,word ptr [rdx+r10*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 14 52}
0025h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0029h movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
002dh movsx r10,r10w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf d2}
0031h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0035h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
0038h movsx r8,r8w                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf c0}
003ch inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
003fh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0042h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c d4}
0044h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0047h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint dot<uint>(ReadOnlySpan<uint> lhs, ReadOnlySpan<uint> rhs), hex://gmath.svc/mathspan?dot#dot_g[32u](uspan32u,uspan32u)
; dot_g[32u](uspan32u,uspan32u)[54] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x1a,0x4d,0x63,0xd1,0x46,0x8b,0x1c,0x91,0x46,0x8b,0x14,0x92,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xe6,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r11d,[rcx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 91}
001fh mov r10d,[rdx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 92}
0023h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0027h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0030h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0032h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int dot<int>(ReadOnlySpan<int> lhs, ReadOnlySpan<int> rhs), hex://gmath.svc/mathspan?dot#dot_g[32i](uspan32i,uspan32i)
; dot_g[32i](uspan32i,uspan32i)[54] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x1a,0x4d,0x63,0xd1,0x46,0x8b,0x1c,0x91,0x46,0x8b,0x14,0x92,0x45,0x0f,0xaf,0xd3,0x45,0x03,0xc2,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xe6,0x41,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0032h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1a}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r11d,[rcx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 91}
001fh mov r10d,[rdx+r10*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 14 92}
0023h imul r10d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af d3}
0027h add r8d,r10d                            ; ADD r32, r/m32 || o32 03 /r || encoded[3]{45 03 c2}
002ah inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
002dh cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0030h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e6}
0032h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
0035h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ulong dot<ulong>(ReadOnlySpan<ulong> lhs, ReadOnlySpan<ulong> rhs), hex://gmath.svc/mathspan?dot#dot_g[64u](uspan64u,uspan64u)
; dot_g[64u](uspan64u,uspan64u)[57] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x1d,0x4d,0x63,0xd1,0x4e,0x8b,0x14,0xd1,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xda,0x4d,0x0f,0xaf,0xd3,0x4d,0x03,0xc2,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xe3,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r10,[rcx+r10*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 14 d1}
001fh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0022h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0026h imul r10,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af d3}
002ah add r8,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c2}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0033h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0035h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long dot<long>(ReadOnlySpan<long> lhs, ReadOnlySpan<long> rhs), hex://gmath.svc/mathspan?dot#dot_g[64i](uspan64i,uspan64i)
; dot_g[64i](uspan64i,uspan64i)[57] = {0x0f,0x1f,0x44,0x00,0x00,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x45,0x33,0xc9,0x85,0xc0,0x7e,0x1d,0x4d,0x63,0xd1,0x4e,0x8b,0x14,0xd1,0x4d,0x63,0xd9,0x4e,0x8b,0x1c,0xda,0x4d,0x0f,0xaf,0xd3,0x4d,0x03,0xc2,0x41,0xff,0xc1,0x44,0x3b,0xc8,0x7c,0xe3,0x49,0x8b,0xc0,0xc3}
; TermCode = CTC_RET_Zx3
0000h nop dword ptr [rax+rax]                 ; NOP r/m32 || o32 0F 1F /0 || encoded[5]{0f 1f 44 00 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h xor r9d,r9d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c9}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h jle short 0035h                         ; JLE rel8 || 7E cb || encoded[2]{7e 1d}
0018h movsxd r10,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d1}
001bh mov r10,[rcx+r10*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 14 d1}
001fh movsxd r11,r9d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 d9}
0022h mov r11,[rdx+r11*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{4e 8b 1c da}
0026h imul r10,r11                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{4d 0f af d3}
002ah add r8,r10                              ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{4d 03 c2}
002dh inc r9d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c1}
0030h cmp r9d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c8}
0033h jl short 0018h                          ; JL rel8 || 7C cb || encoded[2]{7c e3}
0035h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0038h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float dot<float>(ReadOnlySpan<float> lhs, ReadOnlySpan<float> rhs), hex://gmath.svc/mathspan?dot#dot_g[32f](uspan32f,uspan32f)
; dot_g[32f](uspan32f,uspan32f)[77] = {0x50,0xc5,0xf8,0x77,0x90,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x44,0x89,0x44,0x24,0x04,0x85,0xc0,0x7e,0x28,0x4d,0x63,0xc8,0xc4,0xa1,0x7a,0x10,0x04,0x89,0xc4,0xa1,0x7a,0x10,0x0c,0x8a,0xc5,0xfa,0x10,0x54,0x24,0x04,0xc4,0xe2,0x71,0xa9,0xc2,0xc5,0xfa,0x11,0x44,0x24,0x04,0x41,0xff,0xc0,0x44,0x3b,0xc0,0x7c,0xd8,0xc5,0xfa,0x10,0x44,0x24,0x04,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h mov [rsp+4],r8d                         ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 44 24 04}
0016h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001dh vmovss xmm0,dword ptr [rcx+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 04 89}
0023h vmovss xmm1,dword ptr [rdx+r9*4]        ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c4 a1 7a 10 0c 8a}
0029h vmovss xmm2,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 54 24 04}
002fh vfmadd213ss xmm0,xmm1,xmm2              ; VFMADD213SS xmm1, xmm2, xmm3/m32 || VEX.LIG.66.0F38.W0 A9 /r || encoded[5]{c4 e2 71 a9 c2}
0034h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
003ah inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
003dh cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0048h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
004ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double dot<double>(ReadOnlySpan<double> lhs, ReadOnlySpan<double> rhs), hex://gmath.svc/mathspan?dot#dot_g[64f](uspan64f,uspan64f)
; dot_g[64f](uspan64f,uspan64f)[73] = {0x50,0xc5,0xf8,0x77,0x90,0x8b,0x41,0x08,0x48,0x8b,0x09,0x48,0x8b,0x12,0x45,0x33,0xc0,0x4c,0x89,0x04,0x24,0x85,0xc0,0x7e,0x26,0x4d,0x63,0xc8,0xc4,0xa1,0x7b,0x10,0x04,0xc9,0xc4,0xa1,0x7b,0x10,0x0c,0xca,0xc5,0xfb,0x10,0x14,0x24,0xc4,0xe2,0xf1,0xa9,0xc2,0xc5,0xfb,0x11,0x04,0x24,0x41,0xff,0xc0,0x44,0x3b,0xc0,0x7c,0xda,0xc5,0xfb,0x10,0x04,0x24,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h mov rcx,[rcx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 09}
000bh mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000eh xor r8d,r8d                             ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 c0}
0011h mov [rsp],r8                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 04 24}
0015h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0017h jle short 003fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 26}
0019h movsxd r9,r8d                           ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 c8}
001ch vmovsd xmm0,qword ptr [rcx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 04 c9}
0022h vmovsd xmm1,qword ptr [rdx+r9*8]        ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c4 a1 7b 10 0c ca}
0028h vmovsd xmm2,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 14 24}
002dh vfmadd213sd xmm0,xmm1,xmm2              ; VFMADD213SD xmm1, xmm2, xmm3/m64 || VEX.LIG.66.0F38.W1 A9 /r || encoded[5]{c4 e2 f1 a9 c2}
0032h vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
0037h inc r8d                                 ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c0}
003ah cmp r8d,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b c0}
003dh jl short 0019h                          ; JL rel8 || 7C cb || encoded[2]{7c da}
003fh vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0044h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0048h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<byte> pow<byte>(ReadOnlySpan<byte> src, uint exp, Span<byte> dst), hex://gmath.svc/mathspan?pow#pow_g[8u](uspan8u,32u,span8u)
; pow_g[8u](uspan8u,32u,span8u)[108] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x47,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x18,0x46,0x0f,0xb6,0x1c,0x1a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x22,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x07,0x41,0x0f,0xaf,0xdb,0x0f,0xb6,0xdb,0xd1,0xef,0x85,0xff,0x74,0x0a,0x45,0x0f,0xaf,0xdb,0x45,0x0f,0xb6,0xdb,0xeb,0xe3,0x88,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xb9,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005eh                         ; JLE rel8 || 7E cb || encoded[2]{7e 47}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001eh movzx r11d,byte ptr [rdx+r11]           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{46 0f b6 1c 1a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movzx ebx,bl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 db}
0044h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0046h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0048h je short 0054h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004ah imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004eh movzx r11d,r11b                         ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 db}
0052h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e3}
0054h mov [rsi],bl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 1e}
0056h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0059h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005ch jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b9}
005eh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0061h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0065h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0068h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<sbyte> pow<sbyte>(ReadOnlySpan<sbyte> src, uint exp, Span<sbyte> dst), hex://gmath.svc/mathspan?pow#pow_g[8i](uspan8i,32u,span8i)
; pow_g[8i](uspan8i,32u,span8i)[109] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x48,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x18,0x4e,0x0f,0xbe,0x1c,0x1a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x23,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x08,0x41,0x0f,0xaf,0xdb,0x48,0x0f,0xbe,0xdb,0xd1,0xef,0x85,0xff,0x74,0x0a,0x45,0x0f,0xaf,0xdb,0x4d,0x0f,0xbe,0xdb,0xeb,0xe2,0x88,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xb8,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 48}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 18}
001eh movsx r11,byte ptr [rdx+r11]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{4e 0f be 1c 1a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movsx rbx,bl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be db}
0045h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0047h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0049h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004bh imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004fh movsx r11,r11b                          ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be db}
0053h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e2}
0055h mov [rsi],bl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 1e}
0057h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
005fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0062h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ushort> pow<ushort>(ReadOnlySpan<ushort> src, uint exp, Span<ushort> dst), hex://gmath.svc/mathspan?pow#pow_g[16u](uspan16u,32u,span16u)
; pow_g[16u](uspan16u,32u,span16u)[109] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x48,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x58,0x46,0x0f,0xb7,0x1c,0x5a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x22,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x07,0x41,0x0f,0xaf,0xdb,0x0f,0xb7,0xdb,0xd1,0xef,0x85,0xff,0x74,0x0a,0x45,0x0f,0xaf,0xdb,0x45,0x0f,0xb7,0xdb,0xeb,0xe3,0x66,0x89,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xb8,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005fh                         ; JLE rel8 || 7E cb || encoded[2]{7e 48}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 58}
001eh movzx r11d,word ptr [rdx+r11*2]         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[5]{46 0f b7 1c 5a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0054h                         ; JMP rel8 || EB cb || encoded[2]{eb 22}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0044h                          ; JE rel8 || 74 cb || encoded[2]{74 07}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movzx ebx,bx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 db}
0044h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0046h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0048h je short 0054h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004ah imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004eh movzx r11d,r11w                         ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 db}
0052h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e3}
0054h mov [rsi],bx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 1e}
0057h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005ah cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005dh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b8}
005fh mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0062h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0066h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0069h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006bh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<short> pow<short>(ReadOnlySpan<short> src, uint exp, Span<short> dst), hex://gmath.svc/mathspan?pow#pow_g[16i](uspan16i,32u,span16i)
; pow_g[16i](uspan16i,32u,span16i)[110] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x49,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x58,0x4e,0x0f,0xbf,0x1c,0x5a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x23,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x08,0x41,0x0f,0xaf,0xdb,0x48,0x0f,0xbf,0xdb,0xd1,0xef,0x85,0xff,0x74,0x0a,0x45,0x0f,0xaf,0xdb,0x4d,0x0f,0xbf,0xdb,0xeb,0xe2,0x66,0x89,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xb7,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_Zx3
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0060h                         ; JLE rel8 || 7E cb || encoded[2]{7e 49}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 58}
001eh movsx r11,word ptr [rdx+r11*2]          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[5]{4e 0f bf 1c 5a}
0023h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0026h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0029h jne short 0032h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002bh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0030h jmp short 0055h                         ; JMP rel8 || EB cb || encoded[2]{eb 23}
0032h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0037h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003bh je short 0045h                          ; JE rel8 || 74 cb || encoded[2]{74 08}
003dh imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0041h movsx rbx,bx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf db}
0045h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0047h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0049h je short 0055h                          ; JE rel8 || 74 cb || encoded[2]{74 0a}
004bh imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004fh movsx r11,r11w                          ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf db}
0053h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb e2}
0055h mov [rsi],bx                            ; MOV r/m16, r16 || o16 89 /r || encoded[3]{66 89 1e}
0058h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
005bh cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
005eh jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c b7}
0060h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0063h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0067h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<uint> pow<uint>(ReadOnlySpan<uint> src, uint exp, Span<uint> dst), hex://gmath.svc/mathspan?pow#pow_g[32u](uspan32u,32u,span32u)
; pow_g[32u](uspan32u,32u,span32u)[100] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x3f,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x98,0x46,0x8b,0x1c,0x9a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x1b,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x04,0x41,0x0f,0xaf,0xdb,0xd1,0xef,0x85,0xff,0x74,0x06,0x45,0x0f,0xaf,0xdb,0xeb,0xea,0x89,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xc1,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0056h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3f}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 98}
001eh mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0022h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0025h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0028h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002ah mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
002fh jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0031h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0036h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003ah je short 0040h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003ch imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0040h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0042h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0044h je short 004ch                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0046h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004ah jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004ch mov [rsi],ebx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 1e}
004eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0051h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0054h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0056h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0059h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<int> pow<int>(ReadOnlySpan<int> src, uint exp, Span<int> dst), hex://gmath.svc/mathspan?pow#pow_g[32i](uspan32i,32u,span32i)
; pow_g[32i](uspan32i,32u,span32i)[100] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x3f,0x4d,0x63,0xda,0x4a,0x8d,0x34,0x98,0x46,0x8b,0x1c,0x9a,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x1b,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x04,0x41,0x0f,0xaf,0xdb,0xd1,0xef,0x85,0xff,0x74,0x06,0x45,0x0f,0xaf,0xdb,0xeb,0xea,0x89,0x1e,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xc1,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 0056h                         ; JLE rel8 || 7E cb || encoded[2]{7e 3f}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea rsi,[rax+r11*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4a 8d 34 98}
001eh mov r11d,[rdx+r11*4]                    ; MOV r32, r/m32 || o32 8B /r || encoded[4]{46 8b 1c 9a}
0022h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0025h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
0028h jne short 0031h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002ah mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
002fh jmp short 004ch                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0031h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0036h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003ah je short 0040h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003ch imul ebx,r11d                           ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{41 0f af db}
0040h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0042h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0044h je short 004ch                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0046h imul r11d,r11d                          ; IMUL r32, r/m32 || o32 0F AF /r || encoded[4]{45 0f af db}
004ah jmp short 0036h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004ch mov [rsi],ebx                           ; MOV r/m32, r32 || o32 89 /r || encoded[2]{89 1e}
004eh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0051h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0054h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c c1}
0056h mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
0059h mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
005dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0060h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0061h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0062h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0063h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<ulong> pow<ulong>(ReadOnlySpan<ulong> src, uint exp, Span<ulong> dst), hex://gmath.svc/mathspan?pow#pow_g[64u](uspan64u,32u,span64u)
; pow_g[64u](uspan64u,32u,span64u)[104] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x43,0x4d,0x63,0xda,0x4e,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf2,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x1b,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x04,0x48,0x0f,0xaf,0xde,0xd1,0xef,0x85,0xff,0x74,0x06,0x48,0x0f,0xaf,0xf6,0xeb,0xea,0x49,0x89,0x1b,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xbd,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea r11,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c d8}
001eh movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0021h mov rsi,[rdx+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f2}
0025h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0028h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
002bh jne short 0034h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002dh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0032h jmp short 004fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0034h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0039h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003dh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003fh imul rbx,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af de}
0043h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0045h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0047h je short 004fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0049h imul rsi,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f6}
004dh jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004fh mov [r11],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 1b}
0052h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0055h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0058h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
005ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0061h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<long> pow<long>(ReadOnlySpan<long> src, uint exp, Span<long> dst), hex://gmath.svc/mathspan?pow#pow_g[64i](uspan64i,32u,span64i)
; pow_g[64i](uspan64i,32u,span64i)[104] = {0x57,0x56,0x53,0x66,0x90,0x49,0x8b,0x01,0x45,0x8b,0x49,0x08,0x48,0x8b,0x12,0x45,0x33,0xd2,0x45,0x85,0xc9,0x7e,0x43,0x4d,0x63,0xda,0x4e,0x8d,0x1c,0xd8,0x49,0x63,0xf2,0x48,0x8b,0x34,0xf2,0x41,0x8b,0xf8,0x45,0x85,0xc0,0x75,0x07,0xbb,0x01,0x00,0x00,0x00,0xeb,0x1b,0xbb,0x01,0x00,0x00,0x00,0x40,0xf6,0xc7,0x01,0x74,0x04,0x48,0x0f,0xaf,0xde,0xd1,0xef,0x85,0xff,0x74,0x06,0x48,0x0f,0xaf,0xf6,0xeb,0xea,0x49,0x89,0x1b,0x41,0xff,0xc2,0x45,0x3b,0xd1,0x7c,0xbd,0x48,0x89,0x01,0x44,0x89,0x49,0x08,0x48,0x8b,0xc1,0x5b,0x5e,0x5f,0xc3}
; TermCode = CTC_RET_SBB
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov rax,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 01}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0012h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0015h jle short 005ah                         ; JLE rel8 || 7E cb || encoded[2]{7e 43}
0017h movsxd r11,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{4d 63 da}
001ah lea r11,[rax+r11*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4e 8d 1c d8}
001eh movsxd rsi,r10d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 f2}
0021h mov rsi,[rdx+rsi*8]                     ; MOV r64, r/m64 || REX.W 8B /r || encoded[4]{48 8b 34 f2}
0025h mov edi,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b f8}
0028h test r8d,r8d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c0}
002bh jne short 0034h                         ; JNE rel8 || 75 cb || encoded[2]{75 07}
002dh mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0032h jmp short 004fh                         ; JMP rel8 || EB cb || encoded[2]{eb 1b}
0034h mov ebx,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{bb 01 00 00 00}
0039h test dil,1                              ; TEST r/m8, imm8 || F6 /0 ib || encoded[4]{40 f6 c7 01}
003dh je short 0043h                          ; JE rel8 || 74 cb || encoded[2]{74 04}
003fh imul rbx,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af de}
0043h shr edi,1                               ; SHR r/m32, 1 || o32 D1 /5 || encoded[2]{d1 ef}
0045h test edi,edi                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 ff}
0047h je short 004fh                          ; JE rel8 || 74 cb || encoded[2]{74 06}
0049h imul rsi,rsi                            ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af f6}
004dh jmp short 0039h                         ; JMP rel8 || EB cb || encoded[2]{eb ea}
004fh mov [r11],rbx                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 1b}
0052h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0055h cmp r10d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d1}
0058h jl short 0017h                          ; JL rel8 || 7C cb || encoded[2]{7c bd}
005ah mov [rcx],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 01}
005dh mov [rcx+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 49 08}
0061h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0064h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0065h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0066h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0067h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<float> pow<float>(ReadOnlySpan<float> src, uint exp, Span<float> dst), hex://gmath.svc/mathspan?pow#pow_g[32f](uspan32f,32u,span32f)
; pow_g[32f](uspan32f,32u,span32f)[120] = {0x41,0x57,0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x20,0x48,0x8b,0xf1,0x49,0x8b,0x39,0x41,0x8b,0x59,0x08,0x48,0x8b,0x2a,0x45,0x33,0xf6,0x85,0xdb,0x7e,0x33,0x41,0x8b,0xc0,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfb,0x2a,0xc0,0xc5,0xcb,0x5a,0xf0,0x49,0x63,0xc6,0x4c,0x8d,0x3c,0x87,0xc5,0xfa,0x10,0x44,0x85,0x00,0xc5,0xf8,0x28,0xce,0xe8,0xa1,0xb7,0x07,0x5f,0xc4,0xc1,0x7a,0x11,0x07,0x41,0xff,0xc6,0x44,0x3b,0xf3,0x7c,0xdd,0x48,0x89,0x3e,0x89,0x5e,0x08,0x48,0x8b,0xc6,0xc5,0xf8,0x28,0x74,0x24,0x20,0x48,0x83,0xc4,0x38,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
001bh mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001fh mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
0022h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0025h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0027h jle short 005ch                         ; JLE rel8 || 7E cb || encoded[2]{7e 33}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0030h vcvtsi2sd xmm0,xmm0,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 fb 2a c0}
0035h vcvtsd2ss xmm6,xmm6,xmm0                ; VCVTSD2SS xmm1, xmm2, xmm3/m64 || VEX.LIG.F2.0F.WIG 5A /r || encoded[4]{c5 cb 5a f0}
0039h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
003ch lea r15,[rdi+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c 87}
0040h vmovss xmm0,dword ptr [rbp+rax*4]       ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 85 00}
0046h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
004ah call 7ff8274b8d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 b7 07 5f}
004fh vmovss dword ptr [r15],xmm0             ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 07}
0054h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0057h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
005ah jl short 0039h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
005ch mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005fh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
0062h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0065h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
006bh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0070h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0071h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0072h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0073h pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0075h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0077h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Span<double> pow<double>(ReadOnlySpan<double> src, uint exp, Span<double> dst), hex://gmath.svc/mathspan?pow#pow_g[64f](uspan64f,32u,span64f)
; pow_g[64f](uspan64f,32u,span64f)[116] = {0x41,0x57,0x41,0x56,0x57,0x56,0x55,0x53,0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0xc5,0xf8,0x29,0x74,0x24,0x20,0x48,0x8b,0xf1,0x49,0x8b,0x39,0x41,0x8b,0x59,0x08,0x48,0x8b,0x2a,0x45,0x33,0xf6,0x85,0xdb,0x7e,0x2f,0x41,0x8b,0xc0,0xc5,0xc8,0x57,0xf6,0xc4,0xe1,0xcb,0x2a,0xf0,0x49,0x63,0xc6,0x4c,0x8d,0x3c,0xc7,0xc5,0xfb,0x10,0x44,0xc5,0x00,0xc5,0xf8,0x28,0xce,0xe8,0xb5,0xb4,0x07,0x5f,0xc4,0xc1,0x7b,0x11,0x07,0x41,0xff,0xc6,0x44,0x3b,0xf3,0x7c,0xdd,0x48,0x89,0x3e,0x89,0x5e,0x08,0x48,0x8b,0xc6,0xc5,0xf8,0x28,0x74,0x24,0x20,0x48,0x83,0xc4,0x38,0x5b,0x5d,0x5e,0x5f,0x41,0x5e,0x41,0x5f,0xc3}
; TermCode = CTC_RET_INTR
0000h push r15                                ; PUSH r64 || 50+ro || encoded[2]{41 57}
0002h push r14                                ; PUSH r64 || 50+ro || encoded[2]{41 56}
0004h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0005h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0006h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0007h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0008h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
000ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000fh vmovaps [rsp+20h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 20}
0015h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0018h mov rdi,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b 39}
001bh mov ebx,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{41 8b 59 08}
001fh mov rbp,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 2a}
0022h xor r14d,r14d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 f6}
0025h test ebx,ebx                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 db}
0027h jle short 0058h                         ; JLE rel8 || 7E cb || encoded[2]{7e 2f}
0029h mov eax,r8d                             ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b c0}
002ch vxorps xmm6,xmm6,xmm6                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 c8 57 f6}
0030h vcvtsi2sd xmm6,xmm6,rax                 ; VCVTSI2SD xmm1, xmm2, r/m64 || VEX.LIG.F2.0F.W1 2A /r || encoded[5]{c4 e1 cb 2a f0}
0035h movsxd rax,r14d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c6}
0038h lea r15,[rdi+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{4c 8d 3c c7}
003ch vmovsd xmm0,qword ptr [rbp+rax*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 c5 00}
0042h vmovaps xmm1,xmm6                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 ce}
0046h call 7ff8274b8ee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 b4 07 5f}
004bh vmovsd qword ptr [r15],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 07}
0050h inc r14d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c6}
0053h cmp r14d,ebx                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{44 3b f3}
0056h jl short 0035h                          ; JL rel8 || 7C cb || encoded[2]{7c dd}
0058h mov [rsi],rdi                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{48 89 3e}
005bh mov [rsi+8],ebx                         ; MOV r/m32, r32 || o32 89 /r || encoded[3]{89 5e 08}
005eh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0061h vmovaps xmm6,[rsp+20h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 20}
0067h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
006bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
006ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
006dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
006fh pop r14                                 ; POP r64 || 58+ro || encoded[2]{41 5e}
0071h pop r15                                 ; POP r64 || 58+ro || encoded[2]{41 5f}
0073h ret                                     ; RET || C3 || encoded[1]{c3}
