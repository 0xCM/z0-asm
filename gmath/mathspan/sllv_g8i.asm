; Span<sbyte> sllv<sbyte>(ReadOnlySpan<sbyte> src, ReadOnlySpan<sbyte> counts, Span<sbyte> dst)
; sllv_g8i[7ff7c71a9a50h, 7ff7c71a9a9ch][76] = {57 56 48 8b c1 4d 8b 11 45 8b 49 08 48 8b 12 4d 8b 00 45 33 db 45 85 c9 7e 28 49 63 cb 49 8d 34 0a 48 0f be 3c 0a 49 0f be 0c 08 0f b6 c9 48 0f be ff d3 e7 48 0f be cf 88 0e 41 ff c3 45 3b d9 7c d8 4c 89 10 44 89 48 08 5e 5f c3}
; Capture completion code, RET_SBB
; 2020-01-24 01:44:40:064
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0005h mov r10,[r9]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 11}
0008h mov r9d,[r9+8]                          ; MOV r32, r/m32 || o32 8B /r || encoded[4]{45 8b 49 08}
000ch mov rdx,[rdx]                           ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b 12}
000fh mov r8,[r8]                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 00}
0012h xor r11d,r11d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 db}
0015h test r9d,r9d                            ; TEST r/m32, r32 || o32 85 /r || encoded[3]{45 85 c9}
0018h jle short 0042h                         ; JLE rel8 || 7E cb || encoded[2]{7e 28}
001ah movsxd rcx,r11d                         ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 cb}
001dh lea rsi,[r10+rcx]                       ; LEA r64, m || REX.W 8D /r || encoded[4]{49 8d 34 0a}
0021h movsx rdi,byte ptr [rdx+rcx]            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{48 0f be 3c 0a}
0026h movsx rcx,byte ptr [r8+rcx]             ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[5]{49 0f be 0c 08}
002bh movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
002eh movsx rdi,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ff}
0032h shl edi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e7}
0034h movsx rcx,dil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be cf}
0038h mov [rsi],cl                            ; MOV r/m8, r8 || 88 /r || encoded[2]{88 0e}
003ah inc r11d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c3}
003dh cmp r11d,r9d                            ; CMP r32, r/m32 || o32 3B /r || encoded[3]{45 3b d9}
0040h jl short 001ah                          ; JL rel8 || 7C cb || encoded[2]{7c d8}
0042h mov [rax],r10                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4c 89 10}
0045h mov [rax+8],r9d                         ; MOV r/m32, r32 || o32 89 /r || encoded[4]{44 89 48 08}
0049h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
004ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
004bh ret                                     ; RET || C3 || encoded[1]{c3}
