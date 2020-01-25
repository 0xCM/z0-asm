; ref int parse<int>(ReadOnlySpan<Char> src, int offset, out int dst)
; parse__gChar_0o[7ff7c6e856d0h, 7ff7c6e85721h][81] = {56 0f 1f 40 00 8b 41 08 83 f8 20 7f 02 eb 05 b8 20 00 00 00 ff c8 4c 8b 09 33 c9 41 89 08 45 33 d2 3b d0 7f 27 48 63 ca 66 41 83 3c 49 31 75 13 45 8b 18 be 01 00 00 00 41 8b ca d3 e6 44 0b de 45 89 18 ff c2 41 ff c2 3b d0 7e d9 49 8b c0 5e c3}
; Capture completion code, RET_ZEDx3
; 2020-01-24 01:44:34:274
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
