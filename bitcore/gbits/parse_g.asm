------------------------------------------------------------------------------------------------------------------------
; ref byte parse<byte>(ReadOnlySpan<Char> src, int offset, out byte dst)
; parse_gspan0o_0o_0o[91] = {56 0f 1f 40 00 8b 41 08 83 f8 08 7f 02 eb 05 b8 08 00 00 00 ff c8 4c 8b 09 41 c6 00 00 45 33 d2 3b d0 7f 32 48 63 ca 66 41 83 3c 49 31 75 1e 45 0f b6 18 be 01 00 00 00 41 8b ca d3 e6 40 0f b6 ce 41 0b cb 0f b6 c9 0f b6 c9 41 88 08 ff c2 41 ff c2 3b d0 7e ce 49 8b c0 5e c3}
; Capture completion code = RET_ZED_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 08}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h mov byte ptr [r8],0                     ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{41 c6 00 00}
001dh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0020h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0022h jg short 0056h                          ; JG rel8 || 7F cb || encoded[2]{7f 32}
0024h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0027h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002dh jne short 004dh                         ; JNE rel8 || 75 cb || encoded[2]{75 1e}
002fh movzx r11d,byte ptr [r8]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003dh movzx ecx,sil                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{40 0f b6 ce}
0041h or ecx,r11d                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b cb}
0044h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
0047h movzx ecx,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c9}
004ah mov [r8],cl                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 08}
004dh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
004fh inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0052h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0054h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e ce}
0056h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0059h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref sbyte parse<sbyte>(ReadOnlySpan<Char> src, int offset, out sbyte dst)
; parse_gspan0o_0o_0o[93] = {56 0f 1f 40 00 8b 41 08 83 f8 08 7f 02 eb 05 b8 08 00 00 00 ff c8 4c 8b 09 41 c6 00 00 45 33 d2 3b d0 7f 34 48 63 ca 66 41 83 3c 49 31 75 20 4d 0f be 18 be 01 00 00 00 41 8b ca d3 e6 48 0f be ce 41 0b cb 48 0f be c9 48 0f be c9 41 88 08 ff c2 41 ff c2 3b d0 7e cc 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,8                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 08}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,8                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 08 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h mov byte ptr [r8],0                     ; MOV r/m8, imm8 || C6 /0 ib || encoded[4]{41 c6 00 00}
001dh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0020h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0022h jg short 0058h                          ; JG rel8 || 7F cb || encoded[2]{7f 34}
0024h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0027h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002dh jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 20}
002fh movsx r11,byte ptr [r8]                 ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{4d 0f be 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003dh movsx rcx,sil                           ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be ce}
0041h or ecx,r11d                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b cb}
0044h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
0048h movsx rcx,cl                            ; MOVSX r64, r/m8 || REX.W 0F BE /r || encoded[4]{48 0f be c9}
004ch mov [r8],cl                             ; MOV r/m8, r8 || 88 /r || encoded[3]{41 88 08}
004fh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0051h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0054h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0056h jle short 0024h                         ; JLE rel8 || 7E cb || encoded[2]{7e cc}
0058h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ushort parse<ushort>(ReadOnlySpan<Char> src, int offset, out ushort dst)
; parse_gspan0o_0o_0o[93] = {56 0f 1f 40 00 8b 41 08 83 f8 10 7f 02 eb 05 b8 10 00 00 00 ff c8 4c 8b 09 66 41 c7 00 00 00 45 33 d2 3b d0 7f 32 48 63 ca 66 41 83 3c 49 31 75 1e 45 0f b7 18 be 01 00 00 00 41 8b ca d3 e6 0f b7 ce 41 0b cb 0f b7 c9 0f b7 c9 66 41 89 08 ff c2 41 ff c2 3b d0 7e ce 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 10}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h mov word ptr [r8],0                     ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 41 c7 00 00 00}
001fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0022h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0024h jg short 0058h                          ; JG rel8 || 7F cb || encoded[2]{7f 32}
0026h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0029h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002fh jne short 004fh                         ; JNE rel8 || 75 cb || encoded[2]{75 1e}
0031h movzx r11d,word ptr [r8]                ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[4]{45 0f b7 18}
0035h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
003ah mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003dh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003fh movzx ecx,si                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 ce}
0042h or ecx,r11d                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b cb}
0045h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
0048h movzx ecx,cx                            ; MOVZX r32, r/m16 || o32 0F B7 /r || encoded[3]{0f b7 c9}
004bh mov [r8],cx                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 08}
004fh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0051h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0054h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0056h jle short 0026h                         ; JLE rel8 || 7E cb || encoded[2]{7e ce}
0058h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
005bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref short parse<short>(ReadOnlySpan<Char> src, int offset, out short dst)
; parse_gspan0o_0o_0o[96] = {56 0f 1f 40 00 8b 41 08 83 f8 10 7f 02 eb 05 b8 10 00 00 00 ff c8 4c 8b 09 66 41 c7 00 00 00 45 33 d2 3b d0 7f 35 48 63 ca 66 41 83 3c 49 31 75 21 4d 0f bf 18 be 01 00 00 00 41 8b ca d3 e6 48 0f bf ce 41 0b cb 48 0f bf c9 48 0f bf c9 66 41 89 08 ff c2 41 ff c2 3b d0 7e cb 49 8b c0 5e c3}
; Capture completion code = RET_SBB
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,10h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 10}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,10h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 10 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h mov word ptr [r8],0                     ; MOV r/m16, imm16 || o16 C7 /0 iw || encoded[6]{66 41 c7 00 00 00}
001fh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0022h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0024h jg short 005bh                          ; JG rel8 || 7F cb || encoded[2]{7f 35}
0026h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0029h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002fh jne short 0052h                         ; JNE rel8 || 75 cb || encoded[2]{75 21}
0031h movsx r11,word ptr [r8]                 ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{4d 0f bf 18}
0035h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
003ah mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003dh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003fh movsx rcx,si                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf ce}
0043h or ecx,r11d                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{41 0b cb}
0046h movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
004ah movsx rcx,cx                            ; MOVSX r64, r/m16 || REX.W 0F BF /r || encoded[4]{48 0f bf c9}
004eh mov [r8],cx                             ; MOV r/m16, r16 || o16 89 /r || encoded[4]{66 41 89 08}
0052h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0054h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0057h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0059h jle short 0026h                         ; JLE rel8 || 7E cb || encoded[2]{7e cb}
005bh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
005eh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
005fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref uint parse<uint>(ReadOnlySpan<Char> src, int offset, out uint dst)
; parse_gspan0o_0o_0o[81] = {56 0f 1f 40 00 8b 41 08 83 f8 20 7f 02 eb 05 b8 20 00 00 00 ff c8 4c 8b 09 33 c9 41 89 08 45 33 d2 3b d0 7f 27 48 63 ca 66 41 83 3c 49 31 75 13 45 8b 18 be 01 00 00 00 41 8b ca d3 e6 44 0b de 45 89 18 ff c2 41 ff c2 3b d0 7e d9 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001bh mov [r8],ecx                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0023h jg short 004ch                          ; JG rel8 || 7F cb || encoded[2]{7f 27}
0025h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0028h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002eh jne short 0043h                         ; JNE rel8 || 75 cb || encoded[2]{75 13}
0030h mov r11d,[r8]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003dh or r11d,esi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b de}
0040h mov [r8],r11d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 18}
0043h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
004ah jle short 0025h                         ; JLE rel8 || 7E cb || encoded[2]{7e d9}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref int parse<int>(ReadOnlySpan<Char> src, int offset, out int dst)
; parse_gspan0o_0o_0o[81] = {56 0f 1f 40 00 8b 41 08 83 f8 20 7f 02 eb 05 b8 20 00 00 00 ff c8 4c 8b 09 33 c9 41 89 08 45 33 d2 3b d0 7f 27 48 63 ca 66 41 83 3c 49 31 75 13 45 8b 18 be 01 00 00 00 41 8b ca d3 e6 44 0b de 45 89 18 ff c2 41 ff c2 3b d0 7e d9 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001bh mov [r8],ecx                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0023h jg short 004ch                          ; JG rel8 || 7F cb || encoded[2]{7f 27}
0025h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0028h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002eh jne short 0043h                         ; JNE rel8 || 75 cb || encoded[2]{75 13}
0030h mov r11d,[r8]                           ; MOV r32, r/m32 || o32 8B /r || encoded[3]{45 8b 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
003dh or r11d,esi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b de}
0040h mov [r8],r11d                           ; MOV r/m32, r32 || o32 89 /r || encoded[3]{45 89 18}
0043h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0045h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0048h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
004ah jle short 0025h                         ; JLE rel8 || 7E cb || encoded[2]{7e d9}
004ch mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
004fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0050h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref ulong parse<ulong>(ReadOnlySpan<Char> src, int offset, out ulong dst)
; parse_gspan0o_0o_0o[82] = {56 0f 1f 40 00 8b 41 08 83 f8 40 7f 02 eb 05 b8 40 00 00 00 ff c8 4c 8b 09 33 c9 49 89 08 45 33 d2 3b d0 7f 28 48 63 ca 66 41 83 3c 49 31 75 14 4d 8b 18 be 01 00 00 00 41 8b ca 48 d3 e6 4c 0b de 4d 89 18 ff c2 41 ff c2 3b d0 7e d8 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001bh mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0023h jg short 004dh                          ; JG rel8 || 7F cb || encoded[2]{7f 28}
0025h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0028h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002eh jne short 0044h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
0030h mov r11,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl rsi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e6}
003eh or r11,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b de}
0041h mov [r8],r11                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 18}
0044h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
004bh jle short 0025h                         ; JLE rel8 || 7E cb || encoded[2]{7e d8}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref long parse<long>(ReadOnlySpan<Char> src, int offset, out long dst)
; parse_gspan0o_0o_0o[82] = {56 0f 1f 40 00 8b 41 08 83 f8 40 7f 02 eb 05 b8 40 00 00 00 ff c8 4c 8b 09 33 c9 49 89 08 45 33 d2 3b d0 7f 28 48 63 ca 66 41 83 3c 49 31 75 14 4d 8b 18 be 01 00 00 00 41 8b ca 48 d3 e6 4c 0b de 4d 89 18 ff c2 41 ff c2 3b d0 7e d8 49 8b c0 5e c3}
; Capture completion code = RET_ZEDx3
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h nop dword ptr [rax]                     ; NOP r/m32 || o32 0F 1F /0 || encoded[4]{0f 1f 40 00}
0005h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
0008h cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
000bh jg short 000fh                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
000dh jmp short 0014h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
000fh mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
0014h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0016h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
0019h xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001bh mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
001eh xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0021h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0023h jg short 004dh                          ; JG rel8 || 7F cb || encoded[2]{7f 28}
0025h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
0028h cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
002eh jne short 0044h                         ; JNE rel8 || 75 cb || encoded[2]{75 14}
0030h mov r11,[r8]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4d 8b 18}
0033h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0038h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
003bh shl rsi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e6}
003eh or r11,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b de}
0041h mov [r8],r11                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{4d 89 18}
0044h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0046h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0049h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
004bh jle short 0025h                         ; JLE rel8 || 7E cb || encoded[2]{7e d8}
004dh mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
0050h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0051h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref float parse<float>(ReadOnlySpan<Char> src, int offset, out float dst)
; parse_gspan0o_0o_0o[114] = {56 48 83 ec 10 c5 f8 77 8b 41 08 83 f8 20 7f 02 eb 05 b8 20 00 00 00 ff c8 4c 8b 09 33 c9 41 89 08 45 33 d2 3b d0 7f 41 48 63 ca 66 41 83 3c 49 31 75 2d c4 c1 7a 10 00 c5 fa 11 44 24 0c 44 8b 5c 24 0c be 01 00 00 00 41 8b ca d3 e6 44 0b de 44 89 5c 24 08 c5 fa 10 44 24 08 c4 c1 7a 11 00 ff c2 41 ff c2 3b d0 7e bf 49 8b c0 48 83 c4 10 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,10h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 10}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
000bh cmp eax,20h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 20}
000eh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0010h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0012h mov eax,20h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 20 00 00 00}
0017h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0019h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
001ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001eh mov [r8],ecx                            ; MOV r/m32, r32 || o32 89 /r || encoded[3]{41 89 08}
0021h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0024h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0026h jg short 0069h                          ; JG rel8 || 7F cb || encoded[2]{7f 41}
0028h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
002bh cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
0031h jne short 0060h                         ; JNE rel8 || 75 cb || encoded[2]{75 2d}
0033h vmovss xmm0,dword ptr [r8]              ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[5]{c4 c1 7a 10 00}
0038h vmovss dword ptr [rsp+0ch],xmm0         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 0c}
003eh mov r11d,[rsp+0ch]                      ; MOV r32, r/m32 || o32 8B /r || encoded[5]{44 8b 5c 24 0c}
0043h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0048h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004bh shl esi,cl                              ; SHL r/m32, CL || o32 D3 /4 || encoded[2]{d3 e6}
004dh or r11d,esi                             ; OR r32, r/m32 || o32 0B /r || encoded[3]{44 0b de}
0050h mov [rsp+8],r11d                        ; MOV r/m32, r32 || o32 89 /r || encoded[5]{44 89 5c 24 08}
0055h vmovss xmm0,dword ptr [rsp+8]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 08}
005bh vmovss dword ptr [r8],xmm0              ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[5]{c4 c1 7a 11 00}
0060h inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0062h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0065h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0067h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e bf}
0069h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006ch add rsp,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 10}
0070h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0071h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; ref double parse<double>(ReadOnlySpan<Char> src, int offset, out double dst)
; parse_gspan0o_0o_0o[113] = {56 48 83 ec 10 c5 f8 77 8b 41 08 83 f8 40 7f 02 eb 05 b8 40 00 00 00 ff c8 4c 8b 09 33 c9 49 89 08 45 33 d2 3b d0 7f 40 48 63 ca 66 41 83 3c 49 31 75 2c c4 c1 7b 10 00 c5 fb 11 44 24 08 4c 8b 5c 24 08 be 01 00 00 00 41 8b ca 48 d3 e6 4c 0b de 4c 89 1c 24 c5 fb 10 04 24 c4 c1 7b 11 00 ff c2 41 ff c2 3b d0 7e c0 49 8b c0 48 83 c4 10 5e c3}
; Capture completion code = RET_INTRx2
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,10h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 10}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov eax,[rcx+8]                         ; MOV r32, r/m32 || o32 8B /r || encoded[3]{8b 41 08}
000bh cmp eax,40h                             ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f8 40}
000eh jg short 0012h                          ; JG rel8 || 7F cb || encoded[2]{7f 02}
0010h jmp short 0017h                         ; JMP rel8 || EB cb || encoded[2]{eb 05}
0012h mov eax,40h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 40 00 00 00}
0017h dec eax                                 ; DEC r/m32 || o32 FF /1 || encoded[2]{ff c8}
0019h mov r9,[rcx]                            ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{4c 8b 09}
001ch xor ecx,ecx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c9}
001eh mov [r8],rcx                            ; MOV r/m64, r64 || REX.W 89 /r || encoded[3]{49 89 08}
0021h xor r10d,r10d                           ; XOR r32, r/m32 || o32 33 /r || encoded[3]{45 33 d2}
0024h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0026h jg short 0068h                          ; JG rel8 || 7F cb || encoded[2]{7f 40}
0028h movsxd rcx,edx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 ca}
002bh cmp word ptr [r9+rcx*2],31h             ; CMP r/m16, imm8 || o16 83 /7 ib || encoded[6]{66 41 83 3c 49 31}
0031h jne short 005fh                         ; JNE rel8 || 75 cb || encoded[2]{75 2c}
0033h vmovsd xmm0,qword ptr [r8]              ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c4 c1 7b 10 00}
0038h vmovsd qword ptr [rsp+8],xmm0           ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 44 24 08}
003eh mov r11,[rsp+8]                         ; MOV r64, r/m64 || REX.W 8B /r || encoded[5]{4c 8b 5c 24 08}
0043h mov esi,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{be 01 00 00 00}
0048h mov ecx,r10d                            ; MOV r32, r/m32 || o32 8B /r || encoded[3]{41 8b ca}
004bh shl rsi,cl                              ; SHL r/m64, CL || REX.W D3 /4 || encoded[3]{48 d3 e6}
004eh or r11,rsi                              ; OR r64, r/m64 || REX.W 0B /r || encoded[3]{4c 0b de}
0051h mov [rsp],r11                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{4c 89 1c 24}
0055h vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
005ah vmovsd qword ptr [r8],xmm0              ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c4 c1 7b 11 00}
005fh inc edx                                 ; INC r/m32 || o32 FF /0 || encoded[2]{ff c2}
0061h inc r10d                                ; INC r/m32 || o32 FF /0 || encoded[3]{41 ff c2}
0064h cmp edx,eax                             ; CMP r32, r/m32 || o32 3B /r || encoded[2]{3b d0}
0066h jle short 0028h                         ; JLE rel8 || 7E cb || encoded[2]{7e c0}
0068h mov rax,r8                              ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{49 8b c0}
006bh add rsp,10h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 10}
006fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0070h ret                                     ; RET || C3 || encoded[1]{c3}
